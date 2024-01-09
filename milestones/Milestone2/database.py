# In this file you must implement your main query methods
# so they can be used by your database models to interact with your bot.

import os
import pymysql.cursors

# note that your remote host where your database is hosted
# must support user permissions to run stored triggers, procedures and functions.
db_host = os.environ["DB_HOST"]
db_username = os.environ["DB_USER"]
db_password = os.environ["DB_PASSWORD"]
db_name = os.environ["DB_NAME"]


class Database:

  @staticmethod
  def connect(bot_name=None):
    """
        This method creates a connection with your database
        IMPORTANT: all the environment variables must be set correctly
                   before attempting to run this method. Otherwise, it
                   will throw an error message stating that the attempt
                   to connect to your database failed.
        """
    try:
      conn = pymysql.connect(host=db_host,
                             port=3306,
                             user=db_username,
                             password=db_password,
                             db=db_name,
                             charset="utf8mb4",
                             cursorclass=pymysql.cursors.DictCursor)
      print("Bot connected to database {}".format(db_name))



      return conn
    except ConnectionError as err:
      print(f"An error has occurred: {err.args[1]}")
      print("\n")

  #TODO: needs to implement the internal logic of all the main query operations
  def get_response(self, query, values=None, fetch=False, many_entities=False):
    """
        query: the SQL query with wildcards (if applicable) to avoid injection attacks
        values: the values passed in the query
        fetch: If set to True, then the method fetches data from the database (i.e with SELECT)
        many_entities: If set to True, the method can insert multiple entities at a time.
        """

    connection = self.connect()

    response = None


    with connection.cursor() as cursor:
            cursor.execute(query, values)
            response = cursor.fetchall()


    return response

  @staticmethod
  def get_shortage_response(interval_value):
    database = Database()
    q1 =f"""SELECT e.employee_id, e.title, e.hiring_date, e.projects_worked_on, e.incidents
           FROM Employee e
           JOIN Tasks t ON e.employee_id = t.employee_assigned
           JOIN Projects p ON t.project_id = p.project_id
           JOIN Regions r ON p.Regions_Region_id = r.region_id
           WHERE e.incidents = "No Incidents Reported"
             AND t.start_date >= CURDATE() - INTERVAL {interval_value} DAY
           GROUP BY e.employee_id
           HAVING COUNT(DISTINCT r.name) >= 1
              AND COUNT(DISTINCT t.project_id) >= 1;"""

    return database.get_response(query=q1, values=None, fetch=True)

  @staticmethod
  def mat_short(mat):
    database = Database()
    q1 =f"""SELECT p.project_id, p.name AS project_name, p.resources, p.Regions_Region_id AS project_region
FROM Projects p
WHERE p.resources = '{mat}' AND '{mat}' NOT IN (
    SELECT DISTINCT s.materials_availble
    FROM Supplier s
    WHERE s.region_id = p.Regions_Region_id AND s.order_status = 'Available'
);"""

    return database.get_response(query=q1, values=None, fetch=True)

  @staticmethod
  def pro_sup(pro):
    database = Database()
    q1 =f"""SELECT Supplier.*
FROM Supplier
JOIN Regions ON Supplier.region_id = Regions.region_id
JOIN Projects ON Regions.region_id = Projects.Regions_Region_id
WHERE Projects.project_id = {pro}
    AND Supplier.materials_availble = Projects.resources
    AND Supplier.order_status = 'Available'
    AND Supplier.reviews = 'Positive feedback';"""

    return database.get_response(query=q1, values=None, fetch=True)


  @staticmethod
  def saf_in(inc, pro, sal, hour):
    database = Database()
    q1 =f"""SELECT E.employee_id, E.incidents, E.projects_worked_on, E.title
FROM Employee E
LEFT JOIN Salaried_Employee S ON E.Salaried_Employee_salaried_employee_id = S.employee_id AND E.Salaried_Employee_salaried_employee_id > 0
LEFT JOIN Hourly_Employee H ON E.Hourly_Employee_hourly_employee_id = H.employee_id AND E.Hourly_Employee_hourly_employee_id > 0
WHERE CHAR_LENGTH(E.incidents) - CHAR_LENGTH(REPLACE(E.incidents, ',', '')) >= {inc}
AND CHAR_LENGTH(E.projects_worked_on) - CHAR_LENGTH(REPLACE(E.projects_worked_on, ',', '')) > {pro}
AND (
  (H.hourly_employee_id > 0 AND H.hourly_wage > {hour})
  OR
  (S.salaried_employee_id > 0 AND S.annual_salary > {sal})
);"""

    return database.get_response(query=q1, values=None, fetch=True)


  @staticmethod
  def in_safe(eid):
    database = Database()
    q1 =f"""INSERT INTO Training (training_id, topic, training_date, project_id)
SELECT
  NULL, 
  'Safety Training Needed',
  NULL,
  F.project_id
FROM Employee E
JOIN Feedback F ON FIND_IN_SET(F.project_id, E.projects_worked_on) > 0
WHERE CHAR_LENGTH(E.incidents) - CHAR_LENGTH(REPLACE(E.incidents, ', ', '')) >= {eid}
  AND CHAR_LENGTH(E.projects_worked_on) - CHAR_LENGTH(REPLACE(E.projects_worked_on, ',', '')) > 0
  AND F.comment = 'we have a bad employee';"""

    return database.get_response(q1, values=None, many_entities=False)


  @staticmethod
  def in_task(des, emp, wet):
    database = Database()
    q1 =f"""INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
SELECT
  NULL,
  '{des}' AS description,
  CURDATE() AS start_date,
  NULL AS end_date,
  P.project_id AS project_id,
  PM.project_manager_id AS employee_assigned,
  'Alive' AS status,
  P.project_id AS Projects_project_id,
  P.project_id AS Projects_Collaberation_Hub_Collaberation_Hub_id,
  P.project_id AS Projects_Resource_Inventory_Resource_Inventory_id
FROM Projects P
JOIN Feedback F ON F.project_id = P.project_id
JOIN Project_Manager PM ON PM.project_id = P.project_id
WHERE P.project_members < {emp}
  AND P.weather = '{wet}'
  AND F.comment = 'Negative Feedback'
  AND P.schedule = 'Not on track';"""

    return database.get_response(q1, values=None, many_entities=False)


  @staticmethod
  def up_led(led, rev):
    database = Database()
    q1 =f"""UPDATE Project_Manager PM
JOIN (
  SELECT F.project_id
  FROM Feedback F
  WHERE F.comment = 'Good Review'
  GROUP BY F.project_id
  HAVING COUNT(*) >= {rev}
) AS GoodProjects ON GoodProjects.project_id = PM.project_id
SET PM.leadership_level = {led}
WHERE PM.project_id IN (
  SELECT P.project_id
  FROM Projects P
  WHERE P.schedule = 'Behind Schedule'
);"""

    return database.update(q1)

  @staticmethod
  def up_pro(emp, reg, per):
    database = Database()
    q1 =f"""UPDATE Projects
JOIN Regions ON Projects.Regions_Region_id = Regions.region_id
SET Projects.status = 'Under Review'
WHERE Projects.project_members < {emp}
  AND Regions.name = '{reg}'
  AND Projects.permits != '{per}';"""

    return database.update(q1)


  @staticmethod
  def del_perm(reg, emp, mat):
    database = Database()
    q1 =f"""DELETE FROM Permits
WHERE project_id IN (
  SELECT P.project_id
  FROM Projects P
  JOIN Regions R ON P.Regions_Region_id = R.region_id
  JOIN Renewable_Energy RE ON P.project_id = RE.project_id
  WHERE R.name = '{reg}'
    AND P.project_members > {emp}
    AND P.resources = '{mat}'
);"""

    return database.delete(q1)




  @staticmethod
  def find_emp(reg):
    database = Database()
    q1 =f"""SELECT GROUP_CONCAT(E.employee_id) AS employee_ids
FROM Employee E
WHERE EXISTS (
    SELECT 1
    FROM Projects P
    JOIN Client C ON P.project_id = C.project_id
    JOIN Regions R ON P.Regions_region_id = R.region_id
    WHERE R.name = '{reg}'
        AND FIND_IN_SET(P.project_id, E.projects_worked_on) > 0
);
"""

    return database.get_response(q1, values=None, many_entities=False)



  @staticmethod
  def find_tra(proc):
    database = Database()
    q1 =f"""SELECT
    E.employee_id,
    E.title,
    E.trainings,
    GROUP_CONCAT(S.incident) AS safety_incidents
FROM Employee E
LEFT JOIN Saftey_Report S ON E.projects_worked_on LIKE CONCAT('%', S.project_id, '%')
WHERE E.trainings NOT LIKE '%{proc}%'
GROUP BY E.employee_id, E.title, E.trainings;
  """

    return database.get_response(q1, values=None, many_entities=False)


  @staticmethod
  def find_fed(rid, pm):
    database = Database()
    q1 =f"""SELECT
    P.project_id,
    P.name AS project_name,
    F.feedback_id,
    F.commentor,
    F.comment,
    F.date
FROM Projects P
JOIN Feedback F ON P.project_id = F.project_id
WHERE P.Regions_Region_id = {rid}
    AND P.project_members < {pm};

    """

    return database.get_response(q1, values=None, many_entities=False)



  @staticmethod
  def find_pro_perm(rid, res):
    database = Database()
    q1 =f"""    SELECT
        P.project_id,
        P.name AS project_name,
        PR.permit_id,
        PR.permit_type,
        PR.issue_date
    FROM Projects P
    JOIN Permits PR ON P.project_id = PR.project_id
    WHERE P.Regions_Region_id = {rid}
      AND P.resources = '{res}';
"""

    return database.get_response(q1, values=None, many_entities=False)


  @staticmethod
  def find_ree(res):
    database = Database()
    q1 =f"""SELECT
    PM.project_manager_id,
    COUNT(DISTINCT P.project_id) AS projects_worked_on
FROM Project_Manager PM
JOIN Projects P ON PM.project_id = P.project_id
WHERE '{res}' NOT IN (SELECT DISTINCT resources FROM Projects WHERE project_manager_id = PM.project_manager_id)
GROUP BY PM.project_manager_id;

  """

    return database.get_response(q1, values=None, many_entities=False)


  @staticmethod
  def select(query, values=None, fetch=True):
    database = Database()
    if query == "select":
      
      return database.get_response(query, values=values, fetch=fetch)
    if query == "shortage":


      return database.get_response(query, values=values, fetch=fetch)

  @staticmethod
  def insert(query, values=None, many_entities=False):
    database = Database()
    return database.get_response(query,
                                 values=values,
                                 many_entities=many_entities)

  @staticmethod
  def update(query, values=None):
    database = Database()
    return database.get_response(query, values=values)

  @staticmethod
  def delete(query, values=None):
    database = Database()
    return database.get_response(query, values=values)
