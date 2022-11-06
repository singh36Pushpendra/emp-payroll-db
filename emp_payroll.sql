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