USE prasadtech;

SELECT * FROM courses;

-- CASE Statements in SQL
-- Create a new column named "CourseFeeStatus"

/*
CourseFee > 3999 -> Expensive
CourseFee > 1499 -> Moderate
Other -> Cheap
*/

SELECT CourseID, CourseName, CourseFee,
	CASE
		WHEN CourseFee > 3999 THEN "Expensive"
		WHEN CourseFee > 1499 THEN "Moderate"
		ELSE "Cheap"
	END AS CourseFeeStatus
FROM Courses;


-- CASE Expressions in SQL
-- CourseType: Premium Course, Plus Course, Regular Course
SELECT CourseID, CourseName, CourseFee, 
	CASE CourseFee
		WHEN 4999 THEN "Premium"
        WHEN 1499 THEN "Plus"
        ELSE "Regular"
	END AS CourseType
FROM courses;


/*
When there is comparison use CASE Statements.
Whenever there is no Comparison use CASE Epressions
*/