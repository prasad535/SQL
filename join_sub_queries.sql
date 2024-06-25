USE prasadtech;

SHOW TABLES;

SELECT * FROM courses;
SELECT * FROM Learners;

SELECT C.CourseID, C.CourseName, Count(L.LearnerID) as Enrollments
FROM Learners L
JOIN Courses C ON C.CourseID = L.SelectedCourses
GROUP BY SelectedCourses
ORDER BY Enrollments DESC
LIMIT 1;



