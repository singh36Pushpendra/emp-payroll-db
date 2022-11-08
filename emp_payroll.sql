# UC1
# To create a database.
create database payroll_service;

# To view existing databases.
show databases;

# To use existing database.
use payroll_service;

# UC2
# Creating a table with a auto-incremented column 'id'
Create Table employee_payroll (
	id int primary key auto_increment,
    name varchar(25),
    salary double,
    start_date date
);

# UC3: Inserting records to employee_payroll table. 
INSERT INTO employee_payroll (name, salary, start_date) VALUES ("Sanchit", 29000, '2019-09-22');
INSERT INTO employee_payroll (name, salary, start_date) VALUES ('Shubham', 35500, "2020-01-10");
INSERT INTO employee_payroll (name, salary, start_date) VALUES ("Ajay", 17000, "2021-04-23");
INSERT INTO employee_payroll (name, salary, start_date) VALUES ('Aniket', 45000, '2022-06-02');
INSERT INTO employee_payroll (name, salary, start_date) VALUES ('Bill', 70000, '2018-01-01');

# UC4: Retrieving all records from table.
SELECT * FROM employee_payroll;

# UC5
# Retrieving salary based on condition.
SELECT salary FROM employee_payroll WHERE name = 'Bill';

# Retrieving employees between start dates.
SELECT * FROM employee_payroll WHERE start_date >= '2018-01-01' and start_date <= date(now());

# UC6
# Adding new column to existing table with some data.
Alter Table employee_payroll add gender char(1);

# Disabling Safe Update mode.
SET SQL_SAFE_UPDATES = 0;

# Updating existing records, adding values for gender column.
UPDATE employee_payroll set gender = 'M' where name = 'Ajay' or name = 'Aniket';

UPDATE employee_payroll set gender = 'M' where name in ("Bill", 'Shubham', "Sanchit");

# UC7
# To view table structure.
desc employee_payroll;

INSERT INTO employee_payroll (name, salary, start_date, gender) VALUES ("Radhika", 35000, '2018-07-13', 'F');
INSERT INTO employee_payroll (name, salary, start_date, gender) VALUES ('Punam', 70000, '2020-09-20', 'F');

# To select the maximum value in column. (Male employees are more.)
SELECT MAX(gender) FROM employee_payroll;

# To select the minimum value in column. (Female employees are less.)
SELECT MIN(gender) FROM employee_payroll;

# Sum of male and female employees salaries.
SELECT SUM(salary) FROM employee_payroll GROUP BY gender;

# Average of male as well as female employees salaries.
SELECT AVG(salary) FROM employee_payroll GROUP BY gender;

# Counting male and female employees.
SELECT COUNT(gender) FROM employee_payroll GROUP BY gender;