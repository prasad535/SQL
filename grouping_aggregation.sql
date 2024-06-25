USE prasadtech;
SHOW TABLES;

-- 1. Count the number of learners who joined the course via LinkedIn, Youtube, Community
-- Always aggregation (COUNT< MAX, MIN, SUM, AVG) exist with GroupBy 
SELECT SourceOfJoining, COUNT(*) as enrolls FROM Learners
GROUP BY SourceOfJoining;

-- 2. Count the number of learners who joined the course via SourceofJoining or Location
SELECT SourceOfJoining, LearnerLocation, COUNT(*) as enrolls FROM Learners
GROUP BY SourceOfJoining, LearnerLocation;

-- 3. Corresponding to each course, How many students are enrolled
SELECT SelectedCourses, Count(*) as num_of_enrollments
FROM Learners
GROUP BY SelectedCourses;

-- 4. Corresponding to indivisual Source of Joining, give me the maximum years of experience any person hold
SELECT SourceOfJoining, MAX(YearsOfExperience) as max_exp
FROM Learners
GROUP BY SourceOfJoining;

-- 5. Corresponding to indivisual Source of Joining, give me the minimum years of experience any person hold
SELECT SourceOfJoining, MIN(YearsOfExperience) as min_exp
FROM Learners
GROUP BY SourceOfJoining;

-- 6. Corresponding to indivisual Source of Joining, give me the average years of experience any person hold
-- Execution Flow : FROM -> SELECT -> GROUP BY -> COUNT
SELECT SourceOfJoining, AVG(YearsOfExperience) as mvg_exp
FROM Learners
GROUP BY SourceOfJoining;

-- 7. Display the records of those learners who have joined the course via more than 1 source of joining
-- Whenever filteration required on top of aggregation after GROUP BY use HAVING, not WHERE
-- Execution Flow : FROM -> SELECT -> GROUP BY -> COUNT -> HAVING
SELECT SourceOfJoining, COUNT(*) as num_enrolls
FROM Learners
GROUP BY SourceOfJoining
Having num_enrolls >= 2;

-- 8. Display the course which doesn't include name Excel
SELECT * FROM Courses
WHERE CourseName NOT LIKE "%Excel%";

-- 9. Display the students records who have less than 4 years of experience, and source of joining Youtube and location is chennai
SELECT * FROM Learners
WHERE YearsOfExperience < 4 AND SourceOfJoining = 'YouTube' AND LearnerLocation = 'Chennai';

-- 10. Display the records of those students who have years of experience between 1 to 3 years
SELECT * FROM Learners
WHERE YearsOfExperience BETWEEN 1 AND 3;

-- 11. Display the students records who have less than 4 years of experience, OR source of joining Youtube OR location is chennai
SELECT * FROM Learners
WHERE YearsOfExperience < 4 OR SourceOfJoining = 'YouTube' OR LearnerLocation = 'Chennai';

-- ALTER command in SQL
DESC employee;

ALTER TABLE employee ADD column JobPosition varchar(25);
ALTER TABLE employee MODIFY column FirstName varchar(25);
ALTER TABLE employee DROP column JobPosition;

-- TRUNCATE TABLE in SQL
-- It removes all the data in the table


-- DATATYPES in SQL --> INT, VARCHAR, TIMESTAMP, DECIMAL

-- if any column is defined as INT but you entered values with points it implicit cast into integer. To avoid this we need use Decimal data type
-- DECIMAL(3, 1) >> Maximum 3 characters and only char after the point
CREATE TABLE Course_Update(
	CourseID INT AUTO_INCREMENT,
    CourseName varchar(30) NOT NULL, 
    CourseDuration_Months DECIMAL(3, 1) NOT NULL,
    CourseFee INT NOT NULL,
    Changed_AT TIMESTAMP DEFAULT NOW() ON UPDATE NOW(), 
    PRIMARY KEY(CourseID)
);

DESC Course_Update;

INSERT INTO Course_Update(CourseName, CourseDuration_Months, CourseFee) VALUES ('The Complete Excel Mastery', 3.3, 1499);
INSERT INTO Course_Update(CourseName, CourseDuration_Months, CourseFee) VALUES ('DSA For Interview Preparation', 2.522, 4999);
INSERT INTO Course_Update(CourseName, CourseDuration_Months, CourseFee) VALUES ('SQL Bootcamp', 12.1, 2999);

-- It gives the error, courseDuration_Months is greater than 3 chars
INSERT INTO Course_Update(CourseName, CourseDuration_Months, CourseFee) VALUES ('ML', 134.1, 5999);

-- Update any records, Check if timestamp is modified or not. 
-- TIMESTAMP is modified until unless we use ON UPDATE NOW() for the columns
UPDATE Course_Update
SET CourseFee = 1299
WHERE CourseID = 3;

-- CourseFee update but timestamp is not updated. So, I added ON UPDATE NOW() in the column schema
SELECT * FROM Course_Update;

DROP TABLE Course_Update;

SELECT * FROM Course_Update;
