
USE prasadtech;

-- 1. Give me the record of employee getting highest salary
-- Execution Flow : FROM -> SELECT -> ORDER BY -> LIMIT
SELECT * from employee
ORDER BY Salary DESC
LIMIT 1;

-- 2. Give the record of employee highest salary and age greater than 30
-- Execution Flow: FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT
SELECT * FROM employee
WHERE Age > 30
ORDER BY Salary DESC
LIMIT 1;

-- 3. Display the number of enrollments in the website
SELECT COUNT(*) as num_of_enrollments 
FROM Learners;

-- 4. Display the number of enrollments for the course ID = 3
SELECT COUNT(*) as num_of_enrollments_SQL 
FROM Learners
WHERE SelectedCourses=3;

-- 5. Count the number of learners enrolled in the month of JAN
SELECT COUNT(*) as JAN_enrolls
FROM Learners
WHERE LearnerEnrollmentDate LIKE '%-01-%';

-- 5b Count the number of learners enrolled in the month of JAN
SELECT COUNT(*) as JAN_enrolls
FROM Learners
WHERE LearnerEnrollmentDate LIKE '%-01-21%';

-- 6. Update the jeeven data with years as 1 and Learner company as "Amazon"
UPDATE Learners
SET YearsOfExperience = 1, LearnerCompany="Amazon"
WHERE LearnerID = 3;

SELECT * FROM Learners; 

-- 7. Count the number of companies where learners belongs to
-- COUNT >> It counts the non null values
-- DISTINCT >> It gives the unique values
SELECT COUNT(LearnerCompany) as LearnersCompanies FROM Learners;
SELECT COUNT(DISTINCT LearnerCompany) As Companies FROM Learners;



