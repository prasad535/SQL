USE prasadtech;

CREATE TABLE Courses(
	CourseID INT AUTO_INCREMENT,
    CourseName varchar(50) NOT NULL,
    CourseDuration_Months INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseID)
);

DESC Courses;

INSERT INTO Courses(CourseName, CourseDuration_Months, CourseFee) VALUES ('The Complete Excel Mastery Course', 3, 1499);
INSERT INTO Courses(CourseName, CourseDuration_Months, CourseFee) VALUES ('DSA For Interview Preparation', 2, 4999);
INSERT INTO Courses(CourseName, CourseDuration_Months, CourseFee) VALUES ('SQL Bootcamp', 1, 2999);

SELECT * FROM Courses;


CREATE TABLE Learners(
	LearnerID INT AUTO_INCREMENT,
    LearnerFirstName varchar(50) NOT NULL,
    LearnerLastName varchar(50) NOT NULL,
    LearnerEmailID varchar(50) NOT NULL,
    LearnerPhoneNo varchar(50) NOT NULL,
    LearnerEnrollmentDate timestamp NOT NULL,
    SelectedCourses INT NOT NULL,
    YearsOfExperience INT NOT NULL,
    LearnerCompany varchar(50),
    SourceOfJoining varchar(50) NOT NULL,
    BatchStartDate timestamp NOT NULL,
    LearnerLocation varchar(50) NOT NULL,
    PRIMARY KEY(LearnerID),
    UNIQUE KEY(LearnerEmailID),
    FOREIGN KEY(SelectedCourses) REFERENCES Courses(CourseID)
);

DESC Learners;

-- Insert Learners Details in the Learners Table
-- Batch Start Date '1' : 2024-02-29
-- Batch Start Date '2' : 2024-01-16
-- Batch Start Date '3' : 2024-03-25
INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Akash', 'Mishra', '999888776', 'akash@gmail.com', '2024-01-21', 
1, 4, 'Amazon', 'LinkedIn', '2024-02-29', 'Bengaluru');

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Rishikesh', 'Joshi', '9950487546', 'carjkop@gmail.com', '2024-03-19', 
3, 2, 'HCL', 'YouTube', '2024-03-25', 'Chennai');

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Jeevan', 'Hedge', '8574986124', 'jeevan@yahoo.co.in', '2024-01-15', 
2, 0, '', 'LinkedIn', '2024-01-16', 'Noida');

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Akhil', 'George', '8759848762', 'akhil.george.8734@gmail.com', '2024-03-13', 
3, 4, 'Accenture', 'Community', '2024-03-25', 'Bengaluru');

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Sidhish', 'Kumar', '92547864821', 'sidhikumar@gmail.com', '2024-01-10', 
1, 4, 'Meta', 'YouTube', '2024-02-29', 'Bengaluru');

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhoneNo, LearnerEnrollmentDate,
SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, LearnerLocation) 
VALUES ('Nagasai', 'Sreedar', '9321458764', 'saisreedar2001@gmail.com', '2024-03-17', 
3, 4, 'TCS', 'Community', '2024-03-25', 'Mumbai');

SELECT * FROM Learners;

