create database ORGANIZATION;

CREATE TABLE EMPLOYEES (
    -> emp_no int PRIMARY KEY,
    -> birth_date DATE,
    -> first_name VARCHAR(14),
    -> last_name VARCHAR(16),
    -> sex ENUM('M','F'),
    -> hire_date DATE );


create table departments( 
	dept_no char(4) PRIMARY KEY, 
	dept_name VARCHAR(40) 
	);



CREATE TABLE dept_manager( 
	dept_no char(4), 
	emp_no int, 
	FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no), 
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no) 
	);


create table dept_emp(
    -> emp_no int,
    -> dept_no char(4),
    -> from_date DATE,
    -> to_date DATE,
    -> FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no),
    -> FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
    -> );



create table titles(
    -> emp_no int,
    -> title VARCHAR(50) PRIMARY KEY,
    -> from_date DATE,
    -> TO_DATE DATE,
    -> FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no)
    -> );

create table salaries(
    -> emp_no int,
    -> salary int, 
    -> from_date DATE,
    -> to_date DATE,
    -> FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no),
    -> PRIMARY KEY(from_date, to_date)
    -> );

