USE prasadtech;

SHOW TABLES;

SELECT * FROM employee;

SELECT COUNT(*) AS Total_num_emps FROM employee;
SELECT MAX(Salary) AS Max_salary FROM employee;
SELECT MIN(Salary) AS Min_salary FROM employee;
SELECT SUM(Salary) As Sum_of_salary FROM employee;