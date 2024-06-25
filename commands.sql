SHOW databases;
CREATE database if not exists prasadtech;
SELECT database();
USE prasadtech;

CREATE TABLE employee(
	FirstName	varchar(20),
    LastName	varchar(20),
    Age			int,
    Salary		int,
    Location	varchar(20)
);

DESC employee;
SHOW TABLES;

INSERT INTO employee VALUES ("Priya", "Bhatia", 26, 100000, "Bengauru");
INSERT INTO employee VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee VALUES ("Rashmi", "Tanwar",30, 20000, "Bengauru");
INSERT INTO employee VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee VALUES ("Ankit", "Sangwan", 34, 70000, "Bengauru");

SELECT * FROM employee;

INSERT INTO employee (LastName, Age, Salary, Location) VALUES ("Bhatt", 24, 50000, "Gurugram");

DROP TABLE employee;
SHOW TABLES;

CREATE TABLE employee(
	FirstName	varchar(20) NOT NULL,
    LastName	varchar(20) NOT NULL,
    Age			int NOT NULL,
    Salary		int NOT NULL,
    Location	varchar(20) NOT NULL
);

SHOW TABLES;
DESC employee;

INSERT INTO employee VALUES ("Priya", "Bhatia", 26, 100000, "Bengauru");
INSERT INTO employee VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee VALUES ("Rashmi", "Tanwar",30, 20000, "Bengauru");
INSERT INTO employee VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee VALUES ("Ankit", "Sangwan", 34, 70000, "Bengauru");

SELECT * FROM employee;

INSERT INTO employee (LastName, Age, Salary, Location) VALUES ("Bhatt", 24, 50000, "Gurugram");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Alia", "Bhatt", 29, 50000, "Gurugram");

DROP TABLE employee;


CREATE TABLE employee(
	EmpID		int,
	FirstName	varchar(20) NOT NULL,
    LastName	varchar(20) NOT NULL,
    Age			int NOT NULL,
    Salary		int NOT NULL,
    Location	varchar(20) NOT NULL,
    PRIMARY KEY(EmpID)
);

SHOW TABLES;
DESC employee;

INSERT INTO employee VALUES (1, "Priya", "Bhatia", 26, 100000, "Bengauru");
INSERT INTO employee VALUES (2, "Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee VALUES (3, "Rashmi", "Tanwar",30, 20000, "Bengauru");
INSERT INTO employee VALUES (4, "Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee VALUES (5, "Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee VALUES (6, "Ankit", "Sangwan", 34, 70000, "Bengauru");
INSERT INTO employee (EmpID, FirstName, LastName, Age, Salary, Location) VALUES (7, "Alia", "Bhatt", 29, 50000, "Gurugram");

SELECT * FROM employee;

DROP TABLE employee;


CREATE TABLE if not exists employee(
	EmpID		int AUTO_INCREMENT,
	FirstName	varchar(20) NOT NULL,
    LastName	varchar(20) NOT NULL,
    Age			int NOT NULL,
    Salary		int NOT NULL,
    Location	varchar(20) NOT NULL,
    PRIMARY KEY(EmpID)
);

SHOW TABLES;
DESC employee;

INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Priya", "Bhatia", 26, 100000, "Bengauru");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Rashmi", "Tanwar",30, 20000, "Bengauru");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Ankit", "Sangwan", 34, 70000, "Bengauru");
INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES ("Alia", "Bhatt", 29, 50000, "Gurugram");

SELECT * FROM employee;

SELECT FirstName, LastName, Salary FROM employee;

-- Order of Execution : FROM -> WHERE -> SELECT -> ORDER BY
SELECT FirstName, LastName, Salary FROM employee WHERE Salary >= 50000
ORDER BY Salary DESC;

-- Order of Execution : FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT
SELECT FirstName, LastName, Salary FROM employee WHERE Salary >= 50000
ORDER BY Salary DESC
LIMIT 2;


