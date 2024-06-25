SELECT database();
SHOW databases;
USE prasadtech;

SHOW tables;
SELECT * FROM employee;

UPDATE employee set LastName='Tanwar' 
WHERE EmpID=6;

DELETE FROM employee WHERE EmpID=6;

DESC employee;

ALTER TABLE employee
MODIFY FirstName varchar(30);