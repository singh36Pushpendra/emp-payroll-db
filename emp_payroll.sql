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