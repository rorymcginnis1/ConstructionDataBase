-- Script name: inserts.sql
   -- Author:      Rory McGinnis
   -- Purpose:     insert sample data to test the integrity of this database system

SET foreign_key_checks = 0;


INSERT INTO Profile (profile_id, bio, user_id) VALUES
(2, 'Experienced construction professional', 102);
INSERT INTO Profile (profile_id, bio, user_id) VALUES
(3, 'Not Experienced construction professional', 103);
INSERT INTO Profile (profile_id, bio, user_id) VALUES
(4, 'Very Experienced construction professional', 104);
INSERT INTO Profile (profile_id, bio, user_id) VALUES
(5, 'Architect with a focus on residential design', 105);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(6, 'Experienced project manager in commercial construction', 106);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(7, 'Interior designer with a passion for modern aesthetics', 107);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(8, 'Civil engineer specializing in bridge construction', 108);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(9, 'Environmental consultant advocating for sustainable practices', 109);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(10, 'Construction estimator with a focus on accuracy', 110);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(11, 'Project coordinator skilled in logistics and planning', 111);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(12, 'Structural engineer with expertise in seismic design', 112);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(13, 'CAD designer creating detailed and precise blueprints', 113);

INSERT INTO Profile (profile_id, bio, user_id) VALUES
(14, 'Land surveyor specializing in topographic mapping', 114);


INSERT INTO Resource_Inventory (resource_inventory_id, supplies, amount, inventory_date) VALUES
(1, 'Concrete', 500, '2023-04-05'),
(2, 'Steel', 100, '2023-04-06'),
(3, 'Wood', 200, '2023-04-07'),
(4, 'Glass', 50, '2023-04-08');
INSERT INTO Resource_Inventory (resource_inventory_id, supplies, amount, inventory_date) VALUES
(5, 'Concrete', 450, '2023-04-09'),
(6, 'Steel', 120, '2023-04-10'),
(7, 'Wood', 180, '2023-04-11'),
(8, 'Glass', 55, '2023-04-12'),
(9, 'Concrete', 480, '2023-04-13'),
(10, 'Steel', 90, '2023-04-14'),
(11, 'Wood', 220, '2023-04-15'),
(12, 'Glass', 60, '2023-04-16'),
(13, 'Concrete', 490, '2023-04-17'),
(14, 'Steel', 110, '2023-04-18');




INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(2, 2, 'guest1@example.com', '2023-04-05', 'Safety Report 1', 302, 2);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(3, 3, 'guest@example.com', '2023-04-06', 'Safety Report 2', 303, 3);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(4, 4, 'guest2@example.com', '2023-04-07', 'Safety Report 3', 304, 4);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(5, 5, 'guest3@example.com', '2023-04-08', 'Safety Report 4', 305, 5);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(6, 6, 'guest4@example.com', '2023-04-09', 'Safety Report 5', 306, 6);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(7, 7, 'guest5@example.com', '2023-04-10', 'Safety Report 6', 307, 7);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(8, 8, 'guest6@example.com', '2023-04-11', 'Safety Report 7', 308, 8);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(9, 9, 'guest7@example.com', '2023-04-12', 'Safety Report 8', 309, 9);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(10, 10, 'guest8@example.com', '2023-04-13', 'Safety Report 9', 310, 10);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(11, 11, 'guest9@example.com', '2023-04-14', 'Safety Report 10', 311, 11);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(12, 12, 'guest10@example.com', '2023-04-15', 'Safety Report 11', 312, 12);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(13, 13, 'guest11@example.com', '2023-04-16', 'Safety Report 12', 313, 13);
INSERT INTO Guest (guest_user_id, profile_id, email, registration_date, report_viewed, user_id, Profile_profile_id) VALUES
(14, 14, 'guest12@example.com', '2023-04-17', 'Safety Report 13', 314, 14);




INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(2, 'Credit Card', 500.00, 'cc_wallet_123');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(3, 'Credit Card', 500.00, 'cc_wallet_124');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(4, 'Credit Card', 500.00, 'cc_wallet_124');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(5, 'Credit Card', 500.00, 'cc_wallet_125');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(6, 'Debit Card', 300.00, 'dc_wallet_126');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(7, 'PayPal', 200.00, 'paypal_wallet_127');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(8, 'Bank Transfer', 700.00, 'bank_wallet_128');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(9, 'Credit Card', 500.00, 'cc_wallet_129');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(10, 'Debit Card', 300.00, 'dc_wallet_130');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(11, 'PayPal', 200.00, 'paypal_wallet_131');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(12, 'Bank Transfer', 700.00, 'bank_wallet_132');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(13, 'Credit Card', 500.00, 'cc_wallet_133');
INSERT INTO Payment_Method (payment_method_id, method_type, cost, linked_wallet_address) VALUES
(14, 'Debit Card', 300.00, 'dc_wallet_134');


INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(2, 'Hub Location 1', 2);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(3, 'Hub Location 2', 3);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(4, 'Hub Location 3', 4);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(5, 'Hub Location 4', 5);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(6, 'Hub Location 5', 6);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(7, 'Hub Location 6', 7);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(8, 'Hub Location 7', 8);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(9, 'Hub Location 8', 9);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(10, 'Hub Location 9', 10);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(11, 'Hub Location 10', 11);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(12, 'Hub Location 11', 12);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(13, 'Hub Location 12', 13);
INSERT INTO Collaboration_Hub (Collaboration_Hub_id, location, project_id) VALUES
(14, 'Hub Location 13', 14);


INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(3, 30.00, 'Full-time', 3);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(2, 20.00, 'Full-time', 2);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(4, 40.00, 'Full-time', 4);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(6, 150.00, 'Full-time', 6);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(7, 25.00, 'Part-time', 7);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(8, 18.00, 'Full-time', 8);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(9, 35.00, 'Part-time', 9);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(10, 28.00, 'Full-time', 10);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(11, 22.00, 'Part-time', 11);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(12, 38.00, 'Full-time', 12);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(13, 30.00, 'Part-time', 13);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(14, 24.00, 'Full-time', 14);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(15, 32.00, 'Part-time', 15);
INSERT INTO Hourly_Employee (hourly_employee_id, hourly_wage, Employment_type, employee_id) VALUES
(16, 26.00, 'Full-time', 16);


INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(2, 60000.00, 'Full-time', 2);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(3, 40000.00, 'Full-time', 3);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(4, 60000.00, 'Full-time', 4);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(5, 55000.00, 'Full-time', 5);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(6, 48000.00, 'Full-time', 6);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(7, 60000.00, 'Full-time', 7);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(8, 52000.00, 'Full-time', 8);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(9, 45000.00, 'Full-time', 9);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(10, 58000.00, 'Full-time', 10);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(11, 50000.00, 'Full-time', 11);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(12, 62000.00, 'Full-time', 12);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(13, 54000.00, 'Full-time', 13);
INSERT INTO Salaried_Employee (salaried_employee_id, annual_salary, Employment_type, employee_id) VALUES
(14, 47000.00, 'Full-time', 14);




INSERT INTO Regions (region_id, project_id, name, location) VALUES
(2, 2, 'Region 1', 'Location 1');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(3, 3, 'Region 2', 'Location 2');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(4, 4, 'Region 3', 'Location 3');
INSERT INTO Regions (region_id, project_id, name, location)
VALUES
(5, 5, 'Region 4', 'Location 4');


INSERT INTO Regions (region_id, project_id, name, location)
VALUES
(6, 6, 'Region 5', 'Location 5');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(7, 7, 'Region 6', 'Location 6');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(8, 8, 'Region 7', 'Location 7');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(9, 9, 'Region 8', 'Location 8');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(10, 10, 'Region 9', 'Location 9');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(11, 11, 'Region 10', 'Location 10');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(12, 12, 'Region 11', 'Location 11');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(13, 13, 'Region 12', 'Location 12');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(14, 14, 'Region 13', 'Location 13');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(15, 15, 'Region 14', 'Location 14');
INSERT INTO Regions (region_id, project_id, name, location) VALUES
(16, 16, 'Region 15', 'Location 15');





INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(2, 'Highway Expansion', '2023-04-01', '2023-09-30', '100', 'No incidents reported', 'Excellent teamwork!', 'In Progress', 'Sunny', 'On track', 'Approved', 'Steel', 2, 2, 2);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(3, 'Highway Expansion', '2023-04-01', '2023-09-30', '150', 'No incidents reported', 'Excellent teamwork!', 'In Progress', 'Sunny', 'Not on track', 'Approved', 'Glass', 3, 3, 3);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(4, 'Highway Expansion', '2023-04-01', '2023-09-30', '3400', 'No incidents reported', 'Excellent teamwork!', 'In Progress', 'Sunny', 'Not on track', 'Approved', 'Wood', 4, 4, 4);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id)
VALUES
(6, 'Exploration', '2023-10-01', '2023-11-30', '1200', NULL, 'Excellent teamwork!', 'In Progress', 'Sunny', 'Behind Schedule', 'Approved', 'Concrete', 5, 5, 5);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id)
VALUES
(10, 'Demolition', '2023-10-01', '2023-11-30', '47', NULL, 'Excellent teamwork!', 'In Progress', 'Sunny', 'On track', 'Approved', 'Wood', 5, 5, 5);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id)
VALUES
(7, 'Exploration', '2023-10-01', '2023-11-30', '1200', NULL, 'Excellent teamwork!', 'In Progress', 'Sunny', 'Behind Schedule', 'Approved', 'Concrete', 5, 6, 3);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(11, 'Urban Redevelopment', '2023-05-01', '2023-12-31', '200', 'No incidents reported', 'Great collaboration!', 'In Progress', 'Clear', 'On track', 'Approved', 'Steel', 6, 6, 6);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(12, 'Bridge Renovation', '2023-06-01', '2024-01-31', '80', 'No incidents reported', 'Positive feedback received', 'In Progress', 'Cloudy', 'On track', 'Approved', 'Concrete', 7, 7, 7);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(13, 'Park Beautification', '2023-07-01', '2023-12-01', '150', 'No incidents reported', 'Community satisfaction', 'In Progress', 'Sunny', 'On track', 'Approved', 'Wood', 8, 8, 8);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(14, 'Commercial Complex', '2023-08-01', '2024-02-28', '300', 'No incidents reported', 'Positive client feedback', 'In Progress', 'Rainy', 'Behind Schedule', 'Approved', 'Steel', 9, 9, 9);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(15, 'Residential Tower', '2023-09-01', '2024-03-31', '250', 'No incidents reported', 'Satisfied homeowners', 'In Progress', 'Clear', 'On track', 'Approved', 'Concrete', 10, 10, 10);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(16, 'Infrastructure Upgrade', '2023-10-01', '2024-04-30', '180', 'No incidents reported', 'Excellent teamwork!', 'In Progress', 'Sunny', 'On track', 'Approved', 'Wood', 11, 11, 11);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(17, 'Mall Construction', '2023-11-01', '2024-05-31', '400', 'No incidents reported', 'Positive client feedback', 'In Progress', 'Clear', 'Behind Schedule', 'Approved', 'Steel', 12, 12, 12);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(18, 'School Expansion', '2023-12-01', '2024-06-30', '120', 'No incidents reported', 'Satisfied stakeholders', 'In Progress', 'Sunny', 'On track', 'Approved', 'Concrete', 13, 13, 13);
INSERT INTO Projects (project_id, name, start_date, end_date, project_members, incidents, feedback, status, weather, schedule, permits, resources, Collaberation_Hub_Collaberation_Hub_id, Resource_Inventory_Resource_Inventory_id, Regions_Region_id) VALUES
(19, 'Hotel Renovation', '2024-01-01', '2024-07-31', '220', 'No incidents reported', 'Positive client feedback', 'In Progress', 'Cloudy', 'On track', 'Approved', 'Wood', 14, 14, 14);





INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(2, 'Solar Panels', '2023-04-10', 2, 2);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(3, 'Solar Panels', '2023-04-10', 3, 3);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(4, 'Solar Panels', '2023-04-10', 4, 4);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(5, 'Wind Turbines', '2023-05-15', 5, 5);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(6, 'Solar Panels', '2023-05-15', 6, 6);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(7, 'Hydroelectric Generator', '2023-06-20', 7, 7);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(8, 'Wind Turbines', '2023-06-20', 8, 8);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(9, 'Solar Panels', '2023-07-25', 9, 9);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(10, 'Hydroelectric Generator', '2023-07-25', 10, 10);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(11, 'Solar Panels', '2023-08-30', 11, 11);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(12, 'Wind Turbines', '2023-08-30', 12, 12);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(13, 'Hydroelectric Generator', '2023-09-30', 13, 13);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(14, 'Solar Panels', '2023-09-30', 14, 14);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(15, 'Wind Turbines', '2023-10-30', 15, 15);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(16, 'Solar Panels', '2023-10-30', 16, 16);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(17, 'Hydroelectric Generator', '2023-11-30', 17, 17);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(18, 'Wind Turbines', '2023-11-30', 18, 18);
INSERT INTO Renewable_Energy (renewable_energy_id, type, installation_date, project_id, Projects_project_id) VALUES
(19, 'Solar Panels', '2023-12-31', 19, 19);





INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(2,2, 'User1', 'Good progress on the highway project.', '2023-04-10', 2);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(3,3, 'User1', 'Negative Feedback', '2023-04-10', 3);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(4,4, 'User1', 'Good progress on the highway project.', '2023-04-10', 4);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(5,4, 'User2', 'Negative Feedback', '2023-04-10', 4);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(6,4, 'User 12', 'We have a bad employee', '2023-04-10', 4);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(7,6, 'User 12', 'Good Review', '2023-04-10', 4);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(8,6, 'User 14', 'Good Review', '2023-04-10', 4);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(9, 5, 'User 15', 'Positive Feedback', '2023-05-15', 5);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(10, 5, 'User 16', 'Negative Feedback', '2023-05-15', 5);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(11, 7, 'User 17', 'Good progress on the exploration project.', '2023-06-20', 7);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(12, 7, 'User 18', 'Negative Feedback', '2023-06-20', 7);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(13, 7, 'User 19', 'Positive Feedback', '2023-06-20', 7);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(14, 9, 'User 20', 'Good Review', '2023-07-25', 9);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(15, 9, 'User 21', 'Negative Feedback', '2023-07-25', 9);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(16, 11, 'User 22', 'Positive Feedback', '2023-08-30', 11);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(17, 11, 'User 23', 'Negative Feedback', '2023-08-30', 11);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(18, 13, 'User 24', 'Good progress on the exploration project.', '2023-09-30', 13);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(19, 13, 'User 25', 'Negative Feedback', '2023-09-30', 13);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(20, 15, 'User 26', 'Positive Feedback', '2023-10-30', 15);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(21, 15, 'User 27', 'Negative Feedback', '2023-10-30', 15);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(22, 17, 'User 28', 'Good progress on the highway project.', '2023-11-30', 17);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(23, 17, 'User 29', 'Negative Feedback', '2023-11-30', 17);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(24, 19, 'User 30', 'Positive Feedback', '2023-12-31', 19);
INSERT INTO Feedback (feedback_id, project_id, commentor, comment, date, Projects_project_id) VALUES
(25, 19, 'User 31', 'Negative Feedback', '2023-12-31', 19);






INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(2, '2023-04-01', 3, 2, 2);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(3, '2023-04-01', 4, 3, 3);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(4, '2023-04-01', 5, 4, 4);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(5, '2023-05-01', 2, 4, 5);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(6, '2023-06-01', 3, 13, 6);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(7, '2023-07-01', 4, 6, 7);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(8, '2023-08-01', 2, 10, 8);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(9, '2023-09-01', 3, 10, 9);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(10, '2023-10-01', 4, 10, 10);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(11, '2023-11-01', 2, 11, 11);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(12, '2023-12-01', 3, 1, 12);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(13, '2024-01-01', 4, 12, 13);
INSERT INTO Warrenty_Information (warrenty_information_id, warrenty_start_date, warrenty_durration, project_id, Resource_Inventory_Resource_Inventory_id) VALUES
(14, '2024-02-01', 2, 4, 14);





INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(2, 2, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 2);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(3, 3, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 3);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(4, 4, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 4);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(5, 5, 'spillage', '2023-04-15', 'Medium risk', 'None', 'None', 5);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(6, 5, 'leakage', '2023-04-15', 'High risk', 'None', 'None', 5);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(7, 5, 'Acid rain', '2023-04-15', 'High risk', 'None', 'None', 5);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(8, 6, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 6);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(9, 6, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 6);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(10, 6, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 6);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(11, 7, 'Equipment malfunction', '2023-04-15', 'Medium risk', 'None', 'None', 7);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(12, 7, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 7);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(13, 7, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 7);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(14, 8, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 8);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(15, 8, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 8);
INSERT INTO Saftey_Report (saftey_report_id, project_id, incident, report_date, danger_algorithm, affected_individuals, affected_projects, Projects_project_id) VALUES
(16, 8, 'No major incidents reported', '2023-04-15', 'Low risk', 'None', 'None', 8);



INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(2, 'Building Permit', '2023-04-05', 2, 2);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(3, 'Building Permit', '2023-04-05', 3, 3);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(4, 'Building Permit', '2023-04-05', 5, 5);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(5, 'Environmental Permit', '2023-04-06', 6, 6);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(6, 'Environmental Permit', '2023-04-06', 1, 1);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(7, 'Environmental Permit', '2023-04-06', 2, 2);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(8, 'Zoning Permit', '2023-04-07', 9, 9);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(9, 'Zoning Permit', '2023-04-07', 12, 12);
INSERT INTO Permits (permit_id, permit_type, issue_date, project_id, Projects_project_id) VALUES
(10, 'Zoning Permit', '2023-04-07', 19, 19);



INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(2, 'Site Survey', '2023-04-15', '2023-04-20', 1, 2, "Alive",2, 2,2);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(3, 'Site Survey', '2023-04-15', '2023-04-20', 2, 3, "Alive",3, 3,3);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(4, 'Site Survey', '2023-04-15', '2023-04-20', 3, 3, "Alive",4, 4,4);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
VALUE
(5, 'Site Survey', '2023-11-01', '2023-11-05', 5, 5, "Alive", 5, 5, 5);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
VALUE
(6, 'Site Survey', '2023-11-01', '2023-11-05', 5, 5, "Alive", 5, 5, 5);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
VALUE
(7, 'Site Survey', '2023-11-01', '2023-11-05', 5, 5, "Alive", 5, 5, 5);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(8, 'Site Survey', '2023-11-01', '2023-11-05', 6, 6, "Alive", 6, 6, 6);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(9, 'Site Survey', '2023-11-01', '2023-11-05', 7, 7, "Alive", 7, 7, 7);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id) VALUES
(10, 'Site Survey', '2023-11-01', '2023-11-05', 12, 12, "Alive",12, 12, 12);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
VALUES
(11, 'Site Survey', '2023-11-01', '2023-11-05', 1, 9, "Alive", 1, 1, 1);
INSERT INTO Tasks (task_id, description, start_date, end_date, project_id, employee_assigned, status, Projects_project_id, Projects_Collaberation_Hub_Collaberation_Hub_id, Projects_Resource_Inventory_Resource_Inventory_id)
VALUES
(12, 'Site Survey', '2023-11-01', '2023-11-05', 10, 12, "Alive", 10, 10, 10);




INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(2, 'John Doe', 'john.doe@example.com', '1990-05-20', 'Engineer', 2, 2, 2, 2, 2);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(3, 'John Doe', 'john.doe@example.com', '1990-05-20', 'Engineer', 3, 3, 3, 3, 3);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(4, 'John Doe', 'john.doe@example.com', '1990-05-20', 'Engineer', 4, 4, 4, 4, 4);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(5, 'Alice Smith', 'alice.smith@example.com', '1988-03-15', 'Architect', 5, 5, 5, 5, 5);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(6, 'Bob Johnson', 'bob.johnson@example.com', '1995-08-27', 'Contractor', 6, 6, 6, 6, 6);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(7, 'Emma Davis', 'emma.davis@example.com', '1992-12-10', 'Engineer', 7, 7, 7, 7, 7);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(8, 'Michael Brown', 'michael.brown@example.com', '1985-06-05', 'Architect', 8, 8, 8, 8, 8);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(9, 'Olivia White', 'olivia.white@example.com', '1993-09-22', 'Contractor', 9, 9, 9, 9, 9);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(10, 'David Wilson', 'david.wilson@example.com', '1987-01-18', 'Engineer', 10, 10, 10, 10, 10);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(11, 'Sophia Taylor', 'sophia.taylor@example.com', '1990-04-12', 'Architect', 11, 11, 11, 11, 11);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(12, 'William Adams', 'william.adams@example.com', '1989-07-25', 'Contractor', 12, 12, 12, 12, 12);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(13, 'Ella Moore', 'ella.moore@example.com', '1996-11-08', 'Engineer', 13, 13, 13, 13, 13);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(14, 'Christopher Lee', 'christopher.lee@example.com', '1986-02-03', 'Architect', 14, 14, 14, 14, 14);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(15, 'Ava Turner', 'ava.turner@example.com', '1994-05-17', 'Contractor', 15, 15, 15, 15, 15);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(16, 'Daniel Scott', 'daniel.scott@example.com', '1984-08-30', 'Engineer', 16, 16, 16, 16, 16);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(17, 'Grace Hall', 'grace.hall@example.com', '1991-12-13', 'Architect', 17, 17, 17, 17, 17);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(18, 'Jack Turner', 'jack.turner@example.com', '1983-03-08', 'Contractor', 18, 18, 18, 18, 18);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(19, 'Lily Baker', 'lily.baker@example.com', '1992-06-21', 'Engineer', 19, 19, 19, 19, 19);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(100, 'Alexis Johnson', 'alexis.johnson@example.com', '1990-04-15', 'Engineer', 100, 100, 100, 100, 100);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(101, 'Cameron Davis', 'cameron.davis@example.com', '1995-08-27', 'Contractor', 101, 101, 101, 101, 101);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(102, 'Jordan Miller', 'jordan.miller@example.com', '1992-12-10', 'Engineer', 102, 102, 102, 102, 102);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(103, 'Riley Martinez', 'riley.martinez@example.com', '1985-06-05', 'Architect', 103, 103, 103, 103, 103);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(104, 'Avery White', 'avery.white@example.com', '1993-09-22', 'Contractor', 104, 104, 104, 104, 104);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(105, 'Taylor Brown', 'taylor.brown@example.com', '1987-01-18', 'Engineer', 105, 105, 105, 105, 105);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(106, 'Logan Davis', 'logan.davis@example.com', '1990-04-12', 'Architect', 106, 106, 106, 106, 106);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(107, 'Morgan Lee', 'morgan.lee@example.com', '1989-07-25', 'Contractor', 107, 107, 107, 107, 107);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(108, 'Alex Taylor', 'alex.taylor@example.com', '1996-11-08', 'Engineer', 108, 108, 108, 108, 108);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(109, 'Ryan Adams', 'ryan.adams@example.com', '1986-02-03', 'Architect', 109, 109, 109, 109, 109);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(110, 'Jordan Turner', 'jordan.turner@example.com', '1994-05-17', 'Contractor', 110, 110, 110, 110, 110);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(111, 'Taylor Scott', 'taylor.scott@example.com', '1984-08-30', 'Engineer', 111, 111, 111, 111, 111);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(112, 'Jordan Hall', 'jordan.hall@example.com', '1991-12-13', 'Architect', 112, 112, 112, 112, 112);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(113, 'Riley Turner', 'riley.turner@example.com', '1983-03-08', 'Contractor', 113, 113, 113, 113, 113);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(114, 'Jordan Baker', 'jordan.baker@example.com', '1992-06-21', 'Engineer', 114, 114, 114, 114, 114);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(115, 'Taylor Turner', 'taylor.turner@example.com', '1985-09-03', 'Architect', 115, 115, 115, 115, 115);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(116, 'Riley Adams', 'riley.adams@example.com', '1997-01-25', 'Contractor', 116, 116, 116, 116, 116);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(117, 'Morgan Turner', 'morgan.turner@example.com', '1986-05-12', 'Engineer', 117, 117, 117, 117, 117);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(118, 'Jordan Scott', 'jordan.scott@example.com', '1990-08-27', 'Architect', 118, 118, 118, 118, 118);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(119, 'Taylor Turner', 'taylor.turner@example.com', '1993-12-10', 'Contractor', 119, 119, 119, 119, 119);
INSERT INTO Registered_Users (user_id, name, email, dob, user_type, Payment_Method_payment_method_id, Profile_profile_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(120, 'Riley Martinez', 'riley.martinez@example.com', '1988-06-05', 'Engineer', 120, 120, 120, 120, 120);


INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(2, 'ConstructionMaster Pro', '2023-01-01', 2 ,2 ,2);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(3, 'ConstructionMaster Pro', '2023-01-01', 3 ,3 ,3);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(4, 'ConstructionMaster Pro', '2023-01-01', 4 ,4 ,4);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(5, 'ConstructionMaster Pro', '2023-01-01', 5 ,5 ,5);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(6, 'ConstructionMaster Pro', '2023-01-01', 6 ,6 ,6);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(7, 'ConstructionMaster Pro', '2023-01-01', 7 ,7 ,7);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(8, 'ConstructionMaster Pro', '2023-01-01', 8 ,8 ,8);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(9, 'ConstructionMaster Pro', '2023-01-01', 9 ,9 ,9);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(10, 'ConstructionMaster Pro', '2023-01-01', 10 ,10 ,10);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(11, 'ConstructionMaster Pro', '2023-01-01', 11 ,11 ,11);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(12, 'ConstructionMaster Pro', '2023-01-01', 12 ,12 ,12);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(13, 'ConstructionMaster Pro', '2023-01-01', 13 ,13 ,13);
INSERT INTO Device (device_id, brand, purchase_date, user_id, Registered_Users_user_id, Guest_guest_user_id) VALUES
(14, 'ConstructionMaster Pro', '2023-01-01', 14 ,14 ,14);




INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(2, 'Safety Procedures', '2023-04-05', 2);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(3, 'Safety Procedures', '2023-04-05', 3);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(4, 'Safety Procedures', '2023-04-05', 4);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(5, 'Mandatry Trainings', '2023-04-05', 2);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(6, 'Mandatry Trainings', '2023-04-05', 3);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(7, 'Mandatry Trainings', '2023-04-05', 4);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(8, 'Emergency Response', '2023-04-10', 5);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(9, 'Emergency Response', '2023-04-10', 8);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(10, 'Emergency Response', '2023-04-10', 12);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(11, 'First Aid', '2023-04-15', 6);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(12, 'First Aid', '2023-04-15', 10);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(13, 'First Aid', '2023-04-15', 15);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(14, 'Conflict Resolution', '2023-04-20', 7);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(15, 'Conflict Resolution', '2023-04-20', 9);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(16, 'Conflict Resolution', '2023-04-20', 14);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(17, 'Team Building', '2023-04-25', 11);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(18, 'Team Building', '2023-04-25', 16);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(19, 'Team Building', '2023-04-25', 20);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(20, 'Communication Skills', '2023-04-30', 13);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(21, 'Communication Skills', '2023-04-30', 18);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(22, 'Communication Skills', '2023-04-30', 22);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(23, 'Leadership', '2023-05-05', 17);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(24, 'Leadership', '2023-05-05', 21);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(25, 'Leadership', '2023-05-05', 25);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(26, 'Time Management', '2023-05-10', 19);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(27, 'Time Management', '2023-05-10', 23);
INSERT INTO Training (training_id, topic, training_date, project_id) VALUES
(28, 'Time Management', '2023-05-10', 24);










INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(2, 'Project Manager', 'Management', 2, 2, 2, 2);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(3, 'Project Manager', 'Management', 3, 3, 3, 3);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(4, 'Project Manager', 'Management', 4, 4, 4, 4);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(15, 'Architect', 'Design', 5,5,5,5);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(16, 'Contractor', 'Labor', 6,6,6,6);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(17, 'Engineer', 'Technical', 7,7,7,7);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(18, 'Architect', 'Design', 8,8,8,8);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(19, 'Contractor', 'Labor', 9,9,9,9);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(20, 'Engineer', 'Technical', 10,10,10,10);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(21, 'Architect', 'Design', 11,11,11,11);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(22, 'Contractor', 'Labor', 12,12,12,12);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(23, 'Engineer', 'Technical', 13,13,13,13);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(24, 'Architect', 'Design', 14,14,14,14);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(25, 'Architect', 'Design', 15,15,15,15);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(26, 'Contractor', 'Labor', 16,16,16,16);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(27, 'Engineer', 'Technical', 17,17,17,17);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(28, 'Architect', 'Design', 18,18,18,18);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(29, 'Architect', 'Design', 19,19,19,19);


INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(12, 'Project Manager', 'Management', 102, 102, 102, 102);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(13, 'Project Manager', 'Management', 103, 103, 103, 130);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(14, 'Project Manager', 'Management', 104, 104, 104, 104);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(115, 'Architect', 'Design', 105,105,105,105);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(116, 'Contractor', 'Labor', 106,106,106,106);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(117, 'Engineer', 'Technical', 107,107,107,107);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(118, 'Architect', 'Design', 108,108,108,108);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(119, 'Contractor', 'Labor', 109,109,109,109);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(120, 'Engineer', 'Technical', 110,110,110,110);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(211, 'Architect', 'Design', 111,111,111,111);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(122, 'Contractor', 'Labor', 112,112,112,112);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(123, 'Engineer', 'Technical', 113,113,113,113);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(124, 'Architect', 'Design', 114,114,114,114);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(125, 'Architect', 'Design', 115,115,115,115);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(126, 'Contractor', 'Labor', 116,116,116,116);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(127, 'Engineer', 'Technical', 117,117,117,117);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(128, 'Architect', 'Design', 118,118,118,118);
INSERT INTO Roles (role_id, description, role_type, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(129, 'Architect', 'Design', 119,119,119,119);






INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id,Salaried_Employee_salaried_employee_id) VALUES
(2, 'Project Engineer', '2023-01-15', 'Safety Procedures,Construction Management', NULL, '40 hours per week', '1,2,3', 2, 2, 2, 2, 2, 0);
INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id,Salaried_Employee_salaried_employee_id) VALUES
(3, 'Project Engineer', '2023-01-15', 'Safety Procedures,Construction Management', NULL, '40 hours per week', '2,3,4', 3, 3, 3, 3, 0, 3);
INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id,Salaried_Employee_salaried_employee_id) VALUES
(4, 'Project Engineer', '2023-01-15', 'Safety Procedures,Construction Management', NULL, '40 hours per week', '3,4,5', 4, 4, 4, 4, 4, 0);
INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id)
VALUES
(5, 'Project Engineer', '2023-11-15', 'Safety Procedures,Construction Management', NULL, '40 hours per week', '1,2,3,4,5,6', 5, 5, 5, 5, 0, 5);
INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id)
VALUES
(6, 'Project Engineer', '2023-11-15', 'Tech management,Construction Management', 'spillage, leakage', '40 hours per week', '1,2,3,4,5,6', 6, 6, 6, 6, 6, 0);
INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id) VALUES
(7, 'Project Engineer', '2023-01-15', 'Safety Procedures,Construction Management', 'No incidents reported', '40 hours per week', '2,3,4', 7, 7, 7, 7, 0, 7);

INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id) VALUES
(8, 'Project Engineer', '2023-01-15', 'Safety Procedures,Construction Management', 'No incidents reported', '40 hours per week', '3,4,5', 8, 8, 8, 8, 8, 0);

INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id) VALUES
(9, 'Project Engineer', '2023-11-15', 'Safety Procedures,Construction Management', NULL, '40 hours per week', '1,2,3,4,5,6', 9, 9, 9, 9, 0,9);

INSERT INTO Employee (employee_id, title, hiring_date, trainings, incidents, timesheets, projects_worked_on, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Hourly_Employee_hourly_employee_id, Salaried_Employee_salaried_employee_id) VALUES
(10, 'Project Engineer', '2023-11-15', 'Tech management,Construction Management', 'spillage, leakage', '40 hours per week', '1,2,3,4,5,6', 10, 10, 10, 10, 10, 0);



INSERT INTO Supplier (supplier_id, work_orders, quote, materials_availble, order_status, reviews, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, region_id) VALUES
(1, 'Work Order 1', 'Quote 1', 'Concrete', 'Not Available', 'Positive feedback',  101, 101, 101, 2, 2),
(2, 'Work Order 2', 'Quote 2', 'Steel', 'Available', 'Positive feedback',  102, 102, 102, 2 , 3),
(3, 'Work Order 3', 'Quote 3', 'Wood', 'Available', 'Positive feedback',  103, 103, 103, 3, 4),
(4, 'Work Order 4', 'Quote 4', 'Glass', 'Not Available', 'Negative feedback',  104, 104, 104, 2, 5),
(5, 'Work Order 5', 'Quote 5', 'Glass', 'Processed', 'Negative feedback',  105, 105, 105, 2, 3),
(6, 'Work Order 6', 'Quote 6', 'Glass', 'Processed', 'Negative feedback',  105, 105, 105, 2, 3),
(7, 'Work Order 7', 'Quote 7', 'Glass', 'Processed', 'Positive feedback',  105, 105, 105, 2, 3),
(8, 'Work Order 8', 'Quote 7', 'Glass', 'Not Available', 'Positive feedback',  105, 105, 105, 2, 3),
(9, 'Work Order 9', 'Quote 7', 'Steel', 'Available', 'Negative feedback',  105, 105, 105, 2, 2),
(10, 'Work Order 10', 'Quote 7', 'Glass', 'Not Available', 'Positive feedback',  105, 105, 105, 2, 3);
INSERT INTO Supplier (supplier_id, work_orders, quote, materials_availble, order_status, reviews, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, region_id) VALUES
(11, 'Work Order 11', 'Quote 11', 'Concrete', 'Not Available', 'Positive feedback',  106, 106, 106, 3, 4),
(12, 'Work Order 12', 'Quote 12', 'Steel', 'Available', 'Positive feedback',  107, 107, 107, 3, 5),
(13, 'Work Order 13', 'Quote 13', 'Wood', 'Available', 'Positive feedback',  108, 108, 108, 4, 2),
(14, 'Work Order 14', 'Quote 14', 'Glass', 'Not Available', 'Negative feedback',  109, 109, 109, 3, 3),
(15, 'Work Order 15', 'Quote 15', 'Glass', 'Processed', 'Negative feedback',  110, 110, 110, 3, 4),
(16, 'Work Order 16', 'Quote 16', 'Glass', 'Processed', 'Negative feedback',  111, 111, 111, 3, 5),
(17, 'Work Order 17', 'Quote 17', 'Glass', 'Processed', 'Positive feedback',  112, 112, 112, 3, 2),
(18, 'Work Order 18', 'Quote 18', 'Glass', 'Not Available', 'Positive feedback',  113, 113, 113, 4, 3),
(19, 'Work Order 19', 'Quote 19', 'Steel', 'Available', 'Negative feedback',  114, 114, 114, 4, 2),
(20, 'Work Order 20', 'Quote 20', 'Glass', 'Not Available', 'Positive feedback',  115, 115, 115, 4, 4);





INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(3,3, 3, NULL, '2', '2,3,4', 'Expense Report 2', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  3, 3, 3, 3, 3);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(2,2, 3, NULL, '1', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  2, 2, 2, 2, 2);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(1,1, 2, NULL, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  1, 1, 1, 1, 1);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(6,4, 1, NULL, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  1, 1, 1, 1, 1);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(7,6, 1, NULL, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  1, 1, 1, 1, 1);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(4, 4, 2, NULL, '2', '2,3,4', 'Expense Report 2', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  4, 4, 4, 4, 4);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(5, 5, 3, NULL, '1', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  5, 5, 5, 5, 5);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(8, 8, 1, NULL, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  8, 8, 8, 8, 8);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(9, 9, 1, 5, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  9, 9, 9, 9, 9);
INSERT INTO Project_Manager (project_manager_id, project_id, leadership_level, supervisor_id, projects, employees, expense_report, client_reviews, suppliers, work_orders, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id, Project_Manager_project_manager_id) VALUES
(10, 10, 1, 9, '3', '1,2,3', 'Expense Report 1', 'Positive client reviews', '1,2', 'Work Order 1, Work Order 2',  10, 10, 10, 10, 10);


INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(2, 2, 'Positive feedback on the progress', 'Contact Info 1', 2, 2, 2, 2);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(3, 3, 'Positive feedback on the progress', 'Contact Info 1', 3,3, 3, 3);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(4, 4, 'Positive feedback on the progress', 'Contact Info 1', 4, 4, 4, 4);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(5, 5, 'Positive feedback on the progress', 'Contact Info 1', 105, 105, 105, 105);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(6, 6, 'Positive feedback on the progress', 'Contact Info 1', 106, 106, 106, 106);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(7, 7, 'Positive feedback on the progress', 'Contact Info 1', 107, 107, 107, 107);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(8, 8, 'Positive feedback on the progress', 'Contact Info 1', 108, 108, 108, 108);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(9, 9, 'Positive feedback on the progress', 'Contact Info 1', 109, 109, 109, 109);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(10, 10, 'Positive feedback on the progress', 'Contact Info 1', 110, 110, 110, 110);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(11, 11, 'Positive feedback on the progress', 'Contact Info 1', 111, 111, 111, 111);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(12, 12, 'Positive feedback on the progress', 'Contact Info 1', 112, 112, 112, 112);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(13, 13, 'Positive feedback on the progress', 'Contact Info 1', 113, 113, 113, 113);
INSERT INTO Client (client_id, project_id, feedback, contact_info, user_id, Registered_Users_user_id, Registered_Users_Payment_Method_payment_method_id, Registered_Users_Profile_profile_id) VALUES
(14, 14, 'Positive feedback on the progress', 'Contact Info 1', 114, 114, 114, 114);


INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(2, 'Surveying the construction site', '2023-04-20', 'In Progress', 2, 2, 2, 2, 2, 2);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(3, 'Surveying the construction site', '2023-04-20', 'In Progress', 3, 3, 3, 3, 3, 3);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(4, 'Surveying the construction site', '2023-04-20', 'In Progress', 4, 4, 4, 4, 4, 4);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(5, 'Surveying the construction site', '2023-04-20', 'In Progress', 5, 5, 5, 5, 5, 5);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(6, 'Surveying the construction site', '2023-04-20', 'In Progress', 6, 6, 6, 6, 6, 6);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(7, 'Surveying the construction site', '2023-04-20', 'In Progress', 7, 7, 7, 7, 7, 7);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(8, 'Surveying the construction site', '2023-04-20', 'In Progress', 8, 8, 8, 8, 8, 8);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(9, 'Surveying the construction site', '2023-04-20', 'In Progress', 9, 9, 9, 9, 9, 9);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(10, 'Surveying the construction site', '2023-04-20', 'In Progress', 10, 10, 10, 10, 10, 10);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(11, 'Surveying the construction site', '2023-04-20', 'In Progress', 11, 11, 11, 11, 11, 11);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(12, 'Surveying the construction site', '2023-04-20', 'In Progress', 12, 12, 12, 12, 12, 12);
INSERT INTO Task_assignment (task_assignment_id, tasd_description, assignment_date, status, task_id, Tasks_task_id, Tasks_Projects_project_id, Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id, Tasks_Projects_Resource_Inventory_Resource_Inventory_id, Collaberation_Hub_Collaberation_Hub_id) VALUES
(13, 'Surveying the construction site', '2023-04-20', 'In Progress', 13, 13, 13, 13, 13, 13);



