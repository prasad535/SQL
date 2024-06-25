USE prasadtech;
SHOW databases;
SHOW TABLES;

-- For each location, what is the count of each employee and average salary in those locations
/*
Location	Total	Average
---------------------------
Bengauru	2		60000
Gurugram 	2		50000
Mumbai		1		5000
Noida		1		10000
*/
SELECT Location, COUNT(*) AS Total , avg(Salary) AS Avg_salary 
FROM employee
GROUP BY Location;

-- For each location, what is the count of each employee and average salary in those locations
-- But, Also display FirstName, LastName of corresponding to each record
SELECT FirstName, LastName, employee.Location, Total, Avg_salary
FROM Employee
JOIN
(SELECT Location, COUNT(*) AS Total , avg(Salary) AS Avg_salary 
FROM employee
GROUP BY Location) AS temp
ON Employee.Location = temp.Location;

-- Whenever groupby task required but also required non-aggreation columns, so partition used


-- Optimize the above queries using Windows function
SELECT FirstName, LastName, Location,
COUNT(Location) OVER (PARTITION BY Location) As Total,
AVG(Salary) OVER (PARTITION By Location) As Avg_salary
FROM Employee;

SELECT * FROM employee;

INSERT INTO Employee (FirstName, LastName, Age, Salary, Location) VALUES ('Jeevan', 'Hedge', 27, 20000, 'Noida');
INSERT INTO Employee (FirstName, LastName, Age, Salary, Location) VALUES ('Jeevan', 'Hedge', 25, 20000, 'Bengauru');



-- Assign numeric value as priority of each employee based on salary
-- Problem : It gives unique value even though same salary. So use Rank 
SELECT FirstName, LastName, Salary,
ROW_NUMBER() OVER (ORDER BY Salary DESC) as Priority_Emp
FROM Employee;

-- Rank based on Highest salary
-- It skips the ranking numeric order 
SELECT FirstName, LastName, Salary,
RANK() OVER (ORDER BY Salary DESC) as Priority_Emp
FROM Employee;

-- Dense Rank based on Highest salary, but don't skip ranking numeric
SELECT FirstName, LastName, Salary,
DENSE_RANK() OVER (ORDER BY Salary DESC) as Priority_Emp
FROM Employee;

-- all Second highest salary of employee
SELECT * FROM
(SELECT FirstName, LastName, Salary,
RANK() OVER (ORDER BY Salary DESC) as Priority_Emp
FROM Employee) As temp
WHERE Priority_emp=2;

-- Give first employee with Second highest salary of employee
SELECT * FROM
(SELECT FirstName, LastName, Salary,
ROW_NUMBER() OVER (ORDER BY Salary DESC) as Priority_Emp
FROM Employee) As temp
WHERE Priority_emp=2;


-- Specify the details of highest salary people in each location
SELECT * FROM ( 
SELECT Location, FirstName, LastName, Salary,
DENSE_RANK() OVER (PARTITION BY Location ORDER BY Salary DESC) as Salary_rank
FROM Employee) as temp
WHERE Salary_rank=1;


