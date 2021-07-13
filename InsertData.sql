INSERT INTO Teacher
  (`SSN`, `Name`, `Surname`, `DOB`, `Email`, `Address`, `Phone`)
VALUES
  ('T34', 'Carla', 'Jackson', '12/12/1985', 'cj@dance', 'N/A', '564'),
  ('T23', 'Robert', 'Thorn', '2/4/1992', 'rt@dance', 'N/A', '599'),
  ('T12', 'Michael', 'Robinson', '5/8/1982', 'mr@dance', 'N/A', '1598'),
  ('T77', 'Darla', 'Young', '4/3/1995', 'dy@dance', 'N/A', '148789');

INSERT INTO PriceList
  (`CourseTotal`, `WeeklyTotal`, `Cost`)
VALUES
  ('1', '3', '50'),
  ('2', '6', '100'),
  ('3', '9', '200');

INSERT INTO Participant
  (`ParticipantID`, `Name`, `Surname`, `Phone`, `MedicalCertificate`, `TotalPay`, `MonthlyPay`)
VALUES
  ('A1', 'Jon', 'Smith', '123', 'Yes', '1000', '200'),
  ('B2', 'April', 'Carrigan', '234', 'Yes', '750', '100'),
  ('A2', 'Mark', 'Jones', '564', 'Yes', '500', '50'),
  ('B3', 'Linda', 'Smith', '213', 'Yes', '500', '50'),
  ('C4', 'Samantha', 'Mara', '897', 'Yes', '500', '50'),
  ('A3', 'Jake', 'lin', '561', 'Yes', '500', '50'),
  ('B4', 'Ron', 'Xiao', '189', 'Yes', '500', '50'),
  ('C5', 'Carolin', 'Jorgen', '325', 'Yes', '500', '50'),
  ('A4', 'Alessandra', 'Rossi', '159', 'Yes', '500', '50'),
  ('B5', 'Marco', 'Bianchi', '875', 'Yes', '500', '50'),
  ('C3', 'Bruno', 'Padrin', '562', 'Yes', '750', '100');

INSERT INTO TimeTable
  (`CourseName`, `Date`, `Frequency`, `DOW`)
VALUES
  ((SELECT CourseName FROM Course WHERE CourseName ='Advance Ballroom'), '2021-07-05', 'Weekly', 'Monday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Fun Kids Salsa'), '2021-07-05', 'Weekly', 'Monday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Hip Hop for all'), '2021-07-05', 'Weekly', 'Monday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Ballroom for Kids'), '2021-07-06', 'Weekly', 'Tuesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Beginners Ballet'), '2021-07-06', 'Weekly', 'Tuesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), '2021-07-06', 'Weekly', 'Tuesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Kids Ballet'), '2021-07-06', 'Weekly', 'Tuesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Advance Ballroom'), '2021-07-07', 'Weekly', 'Wednesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Beginners Ballet'), '2021-07-07', 'Weekly', 'Wednesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Hip Hop for all'), '2021-07-07', 'Weekly', 'Wednesday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Ballroom for Kids'), '2021-07-08', 'Weekly', 'Thursday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Beginners Ballet'), '2021-07-08', 'Weekly', 'Thursday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), '2021-07-08', 'Weekly', 'Thursday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Advance Ballroom'), '2021-07-09', 'Weekly', 'Friday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Fun Kids Salsa'), '2021-07-09', 'Weekly', 'Friday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Hip Hop for all'), '2021-07-09', 'Weekly', 'Friday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), '2021-07-09', 'Weekly', 'Friday'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Kids Ballet'), '2021-07-09', 'Weekly', 'Friday');

INSERT INTO Attend
  (`CourseName`, `ParticipantID`, `StartDate`)
VALUES
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A1'), '5/10/2019'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Advance Ballroom'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A1'), '1/1/2021'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Beginners Ballet'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A1'), '1/1/2021'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Hip Hop for all'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A1'), '8/4/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Advance Ballroom'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='B2'), '5/7/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='C3'), '8/1/2018'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='B2'), '7/8/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A2'), '7/9/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='B3'), '7/10/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='C4'), '7/11/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A3'), '7/12/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='B4'), '7/13/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='C5'), '7/14/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Jazzercise'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='A4'), '7/15/2020'),
  ((SELECT CourseName FROM Course WHERE CourseName ='Beginners Ballet'), (SELECT ParticipantID FROM Participant WHERE ParticipantID='C3'), '16/5/2017');

INSERT INTO CarSharing
  (`Area`, `ParticipantID`, `Share`)
VALUES
  ('City Center', (SELECT ParticipantID FROM Participant WHERE ParticipantID='A2'), 'Yes'),
  ('City Center', (SELECT ParticipantID FROM Participant WHERE ParticipantID='B3'), 'Yes'),
  ('City Center', (SELECT ParticipantID FROM Participant WHERE ParticipantID='C4'), 'No'),
  ('West side', (SELECT ParticipantID FROM Participant WHERE ParticipantID='A3'), 'No'),
  ('West side', (SELECT ParticipantID FROM Participant WHERE ParticipantID='B4'), 'Yes'),
  ('East side', (SELECT ParticipantID FROM Participant WHERE ParticipantID='C5'), 'Yes'),
  ('North district', (SELECT ParticipantID FROM Participant WHERE ParticipantID='A4'), 'Yes');

INSERT INTO PhotoShoot
  (`PhotoShootID`, `Date`, `ParticipantID`, `Name`, `Surname`, `Phone`)
VALUES
  ('P1', '2021-7-16', (SELECT ParticipantID FROM Participant WHERE ParticipantID='A2'), (SELECT Name FROM Participant WHERE ParticipantID='A2'), (SELECT Surname FROM Participant WHERE ParticipantID='A2'), (SELECT Phone FROM Participant WHERE ParticipantID='A2')),
  ('P2', '2021-7-30', NULL, 'Michael', 'Scott', '964'),
  ('P3', '2021-9-15',  NULL, 'Janet', 'Jason', '153');

INSERT INTO PrivateEvent
  (`Date`, `Time`, `Place`, `Client`, `Phone`, `Address`)
VALUES
  ('2021-7-9', '4pm-10pm', 'Reception Room', 'Jackson Man', '917', '10283 Hawk Street'),
  ('2021-8-21', '8am-4pm', 'Main hall', 'Sara Park', '364', '13412 Green Ave');

INSERT INTO Course
  (`CourseName`, `Age`, `Style`, `TeacherID`)
VALUES
  ('Advance Ballroom', 'Adult', 'Ballroom', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T34')),
  ('Beginners Ballet', 'Adult', 'Ballet', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T23')),
  ('Hip Hop for all', 'Adult', 'Hip Hop', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T12')),
  ('Jazzercise', 'Adult', 'Exercise', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T12')),
  ('Kids Ballet', 'Kids', 'Ballet', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T23')),
  ('Ballroom for Kids', 'Kids', 'Ballroom', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T34')),
  ('Fun Kids Salsa', 'Kids', 'Salsa', (SELECT `SSN` as TeacherID FROM Teacher WHERE `SSN` ='T77'));

INSERT INTO PrivateEvent
  (`Date`, `Time`, `Place`, `Client`, `Phone`, `Address`)
VALUES
  ('7/19/2021', '4pm-10pm', 'Reception Room', 'Jackson Man', '917', '10283 Hawk Street'),
  ('7/26/2021', '8am-4pm', 'Main hall', 'Sara Park', '364', '13412 Green Ave');