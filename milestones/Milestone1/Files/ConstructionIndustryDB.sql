Drop DATABASE IF EXISTS ConstructionIndustryDB;

CREATE DATABASE IF NOT EXISTS ConstructionIndustryDB;


USE ConstructionIndustryDB;

CREATE TABLE IF NOT EXISTS `Payment_Method` (
  `payment_method_id` INT NOT NULL,
  `method_type` VARCHAR(45) DEFAULT NULL,
  `cost` DECIMAL(10,2) DEFAULT NULL,
  `linked_wallet_address` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE IF NOT EXISTS `Profile` (
  `profile_id` INT NOT NULL,
  `bio` VARCHAR(255) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `Registered_Users` (
  `user_id` INT NOT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `email` VARCHAR(255) DEFAULT NULL,
  `dob` DATETIME DEFAULT NULL,
  `user_type` VARCHAR(255) DEFAULT NULL,
  `Payment_Method_payment_method_id` INT NOT NULL,
  `Profile_profile_id` INT NOT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`),
  KEY `fk_Registered_Users_Payment_Method1_idx` (`Payment_Method_payment_method_id`),
  CONSTRAINT `fk_Registered_Users_Payment_Method1` FOREIGN KEY (`Payment_Method_payment_method_id`) REFERENCES `Payment_Method` (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



ALTER TABLE `Registered_Users`
  ADD CONSTRAINT `fk_Registered_Users_Profile1` FOREIGN KEY (`Profile_profile_id`) REFERENCES `Profile` (`profile_id`);

ALTER TABLE `Profile`
  ADD CONSTRAINT `fk_Profile_Registered_Users1` FOREIGN KEY (`user_id`) REFERENCES `Registered_Users` (`user_id`);

CREATE TABLE IF NOT EXISTS `Client` (
  `client_id` INT NOT NULL,
  `project_id` INT DEFAULT NULL,
  `feedback` VARCHAR(45) DEFAULT NULL,
  `contact_info` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_Client_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  CONSTRAINT `fk_Client_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) 
    REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE IF NOT EXISTS `Training` (
  `training_id` INT AUTO_INCREMENT NOT NULL,
  `topic` VARCHAR(45) DEFAULT NULL,
  `training_date` DATETIME DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Salaried_Employee` (
  `salaried_employee_id` INT NOT NULL,
  `annual_salary` DECIMAL(10,2) DEFAULT NULL,
  `Employment_type` VARCHAR(45) DEFAULT NULL,
  `employee_id` INT DEFAULT NULL,
  PRIMARY KEY (`salaried_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Resource_Inventory` (
  `Resource_Inventory_id` INT NOT NULL,
  `supplies` VARCHAR(45) DEFAULT NULL,
  `amount` INT DEFAULT NULL,
  `inventory_date` DATETIME DEFAULT NULL,
  PRIMARY KEY (`Resource_Inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `Projects` (
  `project_id` INT NOT NULL,
  `name` VARCHAR(45) DEFAULT NULL,
  `start_date` DATETIME DEFAULT NULL,
  `end_date` DATETIME DEFAULT NULL,
  `project_members` VARCHAR(45) DEFAULT NULL,
  `incidents` VARCHAR(45) DEFAULT NULL,
  `feedback` VARCHAR(45) DEFAULT NULL,
  `status` VARCHAR(45) DEFAULT NULL,
  `weather` VARCHAR(45) DEFAULT NULL,
  `schedule` VARCHAR(45) DEFAULT NULL,
  `permits` VARCHAR(45) DEFAULT NULL,
  `resources` VARCHAR(45) DEFAULT NULL,
  `Collaberation_Hub_Collaberation_Hub_id` INT NOT NULL,
  `Resource_Inventory_Resource_Inventory_id` INT NOT NULL,
  `Regions_Region_id` INT NOT NULL,
  PRIMARY KEY (`project_id`, `Collaberation_Hub_Collaberation_Hub_id`, `Resource_Inventory_Resource_Inventory_id`, `Regions_Region_id`),
  KEY `fk_Projects_Collaberation_Hub1_idx` (`Collaberation_Hub_Collaberation_Hub_id`),
  KEY `fk_Projects_Resource_Inventory1_idx` (`Resource_Inventory_Resource_Inventory_id`),
  KEY `fk_Projects_Regions1_idx` (`Regions_Region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Regions` (
  `Region_id` INT NOT NULL,
  `project_id` INT DEFAULT NULL,
  `name` VARCHAR(45) DEFAULT NULL,
  `location` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`Region_id`),
  CONSTRAINT `fk_Regions_Projects1` FOREIGN KEY (`project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `Collaboration_Hub` (
  `Collaboration_Hub_id` INT NOT NULL,
  `location` VARCHAR(45) DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  PRIMARY KEY (`Collaboration_Hub_id`),
  FOREIGN KEY (`project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `Projects`
  ADD CONSTRAINT `fk_Projects_Collaberation_Hub1` FOREIGN KEY (`Collaberation_Hub_Collaberation_Hub_id`) REFERENCES `Collaboration_Hub` (`Collaboration_Hub_id`);
  
ALTER TABLE `Projects`
  ADD CONSTRAINT `fk_Projects_Regions1` FOREIGN KEY (`Regions_Region_id`) REFERENCES `Regions` (`Region_id`);
  
ALTER TABLE `Projects`
  ADD CONSTRAINT `fk_Projects_Resource_Inventory1` FOREIGN KEY (`Resource_Inventory_Resource_Inventory_id`) REFERENCES `Resource_Inventory` (`Resource_Inventory_id`);


CREATE TABLE IF NOT EXISTS `Guest` (
  `guest_user_id` INT NOT NULL,
  `profile_id` INT DEFAULT NULL,
  `email` VARCHAR(45) DEFAULT NULL,
  `registration_date` DATETIME DEFAULT NULL,
  `report_viewed` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Profile_profile_id` INT NOT NULL,
  PRIMARY KEY (`guest_user_id`, `Profile_profile_id`),
  KEY `fk_Guest_Profile1_idx` (`Profile_profile_id`),
  CONSTRAINT `fk_Guest_Profile1` FOREIGN KEY (`Profile_profile_id`) REFERENCES `Profile` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE IF NOT EXISTS `Device` (
  `device_id` INT NOT NULL,
  `brand` VARCHAR(45) DEFAULT NULL,
  `purchase_date` DATETIME DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Guest_guest_user_id` INT NOT NULL,
  PRIMARY KEY (`device_id`, `Registered_Users_user_id`),
  KEY `fk_Device_Registered_Users_idx` (`Registered_Users_user_id`),
  KEY `fk_Device_Guest1_idx` (`Guest_guest_user_id`),
  CONSTRAINT `fk_Device_Guest1` FOREIGN KEY (`Guest_guest_user_id`) REFERENCES `Guest` (`guest_user_id`),
  CONSTRAINT `fk_Device_Registered_Users` FOREIGN KEY (`Registered_Users_user_id`) REFERENCES `Registered_Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `Hourly_Employee` (
  `hourly_employee_id` INT NOT NULL,
  `hourly_wage` DECIMAL(10,2) DEFAULT NULL,
  `employment_type` VARCHAR(45) DEFAULT NULL,
  `employee_id` INT DEFAULT NULL,
  PRIMARY KEY (`hourly_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `Employee` (
  `employee_id` INT NOT NULL,
  `title` VARCHAR(45) DEFAULT NULL,
  `hiring_date` DATETIME DEFAULT NULL,
  `trainings` VARCHAR(45) DEFAULT NULL,
  `incidents` VARCHAR(45) DEFAULT NULL,
  `timesheets` VARCHAR(45) DEFAULT NULL,
  `projects_worked_on` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  `Hourly_Employee_hourly_employee_id` INT NOT NULL,
  `Salaried_Employee_salaried_employee_id` INT NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_Employee_Registered_Users1_idx` (`Registered_Users_user_id`,`Registered_Users_Payment_Method_payment_method_id`,`Registered_Users_Profile_profile_id`),
  KEY `fk_Employee_Hourly_Employee1_idx` (`Hourly_Employee_hourly_employee_id`),
  KEY `fk_Employee_Salaried_Employee1_idx` (`Salaried_Employee_salaried_employee_id`),
  CONSTRAINT `fk_Employee_Hourly_Employee1` FOREIGN KEY (`Hourly_Employee_hourly_employee_id`) REFERENCES `Hourly_Employee` (`hourly_employee_id`),
  CONSTRAINT `fk_Employee_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`),
  CONSTRAINT `fk_Employee_Salaried_Employee1` FOREIGN KEY (`Salaried_Employee_salaried_employee_id`) REFERENCES `Salaried_Employee` (`salaried_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




ALTER TABLE `Hourly_Employee`
  ADD CONSTRAINT `fk_Hourly_Employee_Employee1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`);





CREATE TABLE IF NOT EXISTS `Feedback` (
  `Feedback_id` INT NOT NULL,
  `project_id` INT DEFAULT NULL,
  `commentor` VARCHAR(45) DEFAULT NULL,
  `comment` VARCHAR(45) DEFAULT NULL,
  `date` DATETIME DEFAULT NULL,
  `Projects_project_id` INT NOT NULL,
  PRIMARY KEY (`Feedback_id`, `Projects_project_id`),
  KEY `fk_Feedback_Projects1_idx` (`Projects_project_id`),
  CONSTRAINT `fk_Feedback_Projects1` FOREIGN KEY (`Projects_project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;















CREATE TABLE IF NOT EXISTS `Permits` (
  `permit_id` INT NOT NULL,
  `permit_type` VARCHAR(45) DEFAULT NULL,
  `issue_date` DATETIME DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  `Projects_project_id` INT NOT NULL,
  PRIMARY KEY (`permit_id`, `Projects_project_id`),
  KEY `fk_Permits_Projects1_idx` (`Projects_project_id`),
  CONSTRAINT `fk_Permits_Projects1` FOREIGN KEY (`Projects_project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;








CREATE TABLE IF NOT EXISTS `Project_Manager` (
  `project_manager_id` INT NOT NULL,
  `project_id` INT DEFAULT NULL,
  `leadership_level` INT DEFAULT NULL,
  `supervisor_id` INT DEFAULT NULL,
  `projects` VARCHAR(45) DEFAULT NULL,
  `employees` VARCHAR(45) DEFAULT NULL,
  `expense_report` VARCHAR(45) DEFAULT NULL,
  `client_reviews` VARCHAR(45) DEFAULT NULL,
  `suppliers` VARCHAR(45) DEFAULT NULL,
  `work_orders` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  `Project_Manager_project_manager_id` INT NOT NULL,
  PRIMARY KEY (`project_manager_id`),
  KEY `fk_Project_Manager_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  KEY `fk_Project_Manager_Project_Manager1_idx` (`Project_Manager_project_manager_id`),
  CONSTRAINT `fk_Project_Manager_Project_Manager1` FOREIGN KEY (`Project_Manager_project_manager_id`) REFERENCES `Project_Manager` (`project_manager_id`),
  CONSTRAINT `fk_Project_Manager_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;















CREATE TABLE IF NOT EXISTS `Registered_Users_has_Projects` (
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  `Projects_project_id` INT NOT NULL,
  PRIMARY KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`, `Projects_project_id`),
  KEY `fk_Registered_Users_has_Projects_Projects1_idx` (`Projects_project_id`),
  KEY `fk_Registered_Users_has_Projects_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  CONSTRAINT `fk_Registered_Users_has_Projects_Projects1` FOREIGN KEY (`Projects_project_id`) REFERENCES `Projects` (`project_id`),
  CONSTRAINT `fk_Registered_Users_has_Projects_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE IF NOT EXISTS `Registered_Users_has_Training` (
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  `Training_training_id` INT NOT NULL,
  PRIMARY KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`, `Training_training_id`),
  KEY `fk_Registered_Users_has_Training_Training1_idx` (`Training_training_id`),
  KEY `fk_Registered_Users_has_Training_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  CONSTRAINT `fk_Registered_Users_has_Training_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`),
  CONSTRAINT `fk_Registered_Users_has_Training_Training1` FOREIGN KEY (`Training_training_id`) REFERENCES `Training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE IF NOT EXISTS `Renewable_Energy` (
  `renewable_energy_id` INT NOT NULL,
  `type` VARCHAR(45) DEFAULT NULL,
  `installation_date` DATETIME DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  `Projects_project_id` INT NOT NULL,
  PRIMARY KEY (`renewable_energy_id`, `Projects_project_id`),
  KEY `fk_Renewable_Energy_Projects1_idx` (`Projects_project_id`),
  CONSTRAINT `fk_Renewable_Energy_Projects1` FOREIGN KEY (`Projects_project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;








CREATE TABLE IF NOT EXISTS `Roles` (
  `role_id` INT NOT NULL,
  `description` VARCHAR(45) DEFAULT NULL,
  `role_type` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  PRIMARY KEY (`role_id`, `Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  KEY `fk_Roles_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  CONSTRAINT `fk_Roles_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `Saftey_Report` (
  `saftey_report_id` INT NOT NULL,
  `project_id` INT DEFAULT NULL,
  `incident` VARCHAR(45) DEFAULT NULL,
  `report_date` DATETIME DEFAULT NULL,
  `danger_algorithm` VARCHAR(45) DEFAULT NULL,
  `affected_individuals` VARCHAR(45) DEFAULT NULL,
  `affected_projects` VARCHAR(45) DEFAULT NULL,
  `Projects_project_id` INT NOT NULL,
  PRIMARY KEY (`saftey_report_id`, `Projects_project_id`),
  KEY `fk_Saftey_Report_Projects1_idx` (`Projects_project_id`),
  CONSTRAINT `fk_Saftey_Report_Projects1` FOREIGN KEY (`Projects_project_id`) REFERENCES `Projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;







CREATE TABLE IF NOT EXISTS `Supplier` (
  `supplier_id` INT NOT NULL,
  `work_orders` VARCHAR(45) DEFAULT NULL,
  `quote` VARCHAR(45) DEFAULT NULL,
  `materials_availble` VARCHAR(45) DEFAULT NULL,
  `order_status` VARCHAR(45) DEFAULT NULL,
  `reviews` VARCHAR(45) DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  `Registered_Users_user_id` INT NOT NULL,
  `Registered_Users_Payment_Method_payment_method_id` INT NOT NULL,
  `Registered_Users_Profile_profile_id` INT NOT NULL,
  `region_id` INT DEFAULT NULL,  -- Add region_id column
  PRIMARY KEY (`supplier_id`),
  KEY `fk_Supplier_Registered_Users1_idx` (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`),
  KEY `fk_Supplier_Regions1_idx` (`region_id`),  -- Add index for region_id
  CONSTRAINT `fk_Supplier_Registered_Users1` FOREIGN KEY (`Registered_Users_user_id`, `Registered_Users_Payment_Method_payment_method_id`, `Registered_Users_Profile_profile_id`) REFERENCES `Registered_Users` (`user_id`, `Payment_Method_payment_method_id`, `Profile_profile_id`),
  CONSTRAINT `fk_Supplier_Regions1` FOREIGN KEY (`region_id`) REFERENCES `Regions` (`Region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `Tasks` (
  `task_id` INT AUTO_INCREMENT NOT NULL,
  `description` VARCHAR(45) DEFAULT NULL,
  `start_date` DATETIME DEFAULT NULL,
  `end_date` DATETIME DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  `employee_assigned` INT DEFAULT NULL,
  `status` VARCHAR(45) DEFAULT NULL,
  `Projects_project_id` INT NOT NULL,
  `Projects_Collaberation_Hub_Collaberation_Hub_id` INT NOT NULL,
  `Projects_Resource_Inventory_Resource_Inventory_id` INT NOT NULL,
  PRIMARY KEY (`task_id`, `Projects_project_id`, `Projects_Collaberation_Hub_Collaberation_Hub_id`, `Projects_Resource_Inventory_Resource_Inventory_id`),
  KEY `fk_Tasks_Projects1_idx` (`Projects_project_id`, `Projects_Collaberation_Hub_Collaberation_Hub_id`, `Projects_Resource_Inventory_Resource_Inventory_id`),
  CONSTRAINT `fk_Tasks_Projects1` FOREIGN KEY (`Projects_project_id`, `Projects_Collaberation_Hub_Collaberation_Hub_id`, `Projects_Resource_Inventory_Resource_Inventory_id`) REFERENCES `Projects` (`project_id`, `Collaberation_Hub_Collaberation_Hub_id`, `Resource_Inventory_Resource_Inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Task_assignment` (
  `task_assignment_id` INT NOT NULL,
  `tasd_description` VARCHAR(45) DEFAULT NULL,
  `assignment_date` DATETIME DEFAULT NULL,
  `status` VARCHAR(45) DEFAULT NULL,
  `task_id` INT DEFAULT NULL,
  `Tasks_task_id` INT NOT NULL,
  `Tasks_Projects_project_id` INT NOT NULL,
  `Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id` INT NOT NULL,
  `Tasks_Projects_Resource_Inventory_Resource_Inventory_id` INT NOT NULL,
  `Collaberation_Hub_Collaberation_Hub_id` INT NOT NULL,
  PRIMARY KEY (`task_assignment_id`, `Tasks_task_id`, `Tasks_Projects_project_id`, `Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id`, `Tasks_Projects_Resource_Inventory_Resource_Inventory_id`, `Collaberation_Hub_Collaberation_Hub_id`),
  KEY `fk_Task_assignment_Tasks1_idx` (`Tasks_task_id`, `Tasks_Projects_project_id`, `Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id`, `Tasks_Projects_Resource_Inventory_Resource_Inventory_id`),
  KEY `fk_Task_assignment_Collaberation_Hub1_idx` (`Collaberation_Hub_Collaberation_Hub_id`),
  CONSTRAINT `fk_Task_assignment_Collaberation_Hub1` FOREIGN KEY (`Collaberation_Hub_Collaberation_Hub_id`) REFERENCES `Collaboration_Hub` (`Collaboration_Hub_id`),
  CONSTRAINT `fk_Task_assignment_Tasks1` FOREIGN KEY (`Tasks_task_id`, `Tasks_Projects_project_id`, `Tasks_Projects_Collaberation_Hub_Collaberation_Hub_id`, `Tasks_Projects_Resource_Inventory_Resource_Inventory_id`) REFERENCES `Tasks` (`task_id`, `Projects_project_id`, `Projects_Collaberation_Hub_Collaberation_Hub_id`, `Projects_Resource_Inventory_Resource_Inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `Warrenty_Information` (
  `warrenty_information_id` INT NOT NULL,
  `warrenty_start_date` DATETIME DEFAULT NULL,
  `warrenty_durration` INT DEFAULT NULL,
  `project_id` INT DEFAULT NULL,
  `Resource_Inventory_Resource_Inventory_id` INT NOT NULL,
  PRIMARY KEY (`warrenty_information_id`, `Resource_Inventory_Resource_Inventory_id`),
  KEY `fk_Warrenty_Information_Resource_Inventory1_idx` (`Resource_Inventory_Resource_Inventory_id`),
  CONSTRAINT `fk_Warrenty_Information_Resource_Inventory1` FOREIGN KEY (`Resource_Inventory_Resource_Inventory_id`) REFERENCES `Resource_Inventory` (`Resource_Inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
