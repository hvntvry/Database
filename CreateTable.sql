CREATE TABLE Teacher (
  `SSN` VARCHAR(10) NOT NULL,
  `Name` VARCHAR(20) NOT NULL,
  `Surname` VARCHAR(20) NOT NULL,
  `DOB` VARCHAR(10),
  `Email` VARCHAR(20),
  `Address` VARCHAR(20),
  `Phone` VARCHAR(11),
  PRIMARY KEY(`SSN`)
);


CREATE TABLE PriceList (
  `CourseTotal` INTEGER NOT NULL,
  `WeeklyTotal` INTEGER NOT NULL,
  `Cost` INTEGER NOT NULL,
  PRIMARY KEY (CourseTotal, WeeklyTotal)
);

CREATE TABLE Course (
  `CourseName` VARCHAR(20) NOT NULL,
  `Age` VARCHAR(10) NOT NULL,
  `Style` VARCHAR(20) NOT NULL,
  `TeacherID` VARCHAR(10), 
  PRIMARY KEY (CourseName),
  FOREIGN KEY (`TeacherID`) REFERENCES Teacher(`SSN`)
);

CREATE TABLE Participant (
  `ParticipantID` VARCHAR(10) NOT NULL,
  `Name` VARCHAR(20) NOT NULL,
  `Surname` VARCHAR(20) NOT NULL,
  `Age` VARCHAR(3),
  `Phone` VARCHAR(11),
  `MedicalCertificate` VARCHAR(3),
  `TotalPay` INTEGER,
  `MonthlyPay` INTEGER,
  PRIMARY KEY (`ParticipantID`),
  CHECK (`MedicalCertificate` in ("Yes", "No"))
);

CREATE TABLE Attend (
  `CourseName` VARCHAR(20) NOT NULL,
  `ParticipantID` VARCHAR(10) NOT NULL,
  `StartDate` VARCHAR(10),
  PRIMARY KEY (`CourseName`, `ParticipantID`),
  FOREIGN KEY (`CourseName`) REFERENCES Course(`CourseName`)
);

CREATE TABLE TimeTable (
  `CourseName` VARCHAR(20),
  `Date` DATE,
  `Frequency` VARCHAR(10),
  `DOW` VARCHAR(10),
  PRIMARY KEY (`CourseName`, `Date`),
  FOREIGN KEY (`CourseName`) REFERENCES Course(`CourseName`),
  CHECK (`Frequency` in ('Once', 'Weekly', 'Monthly'))
);




CREATE TABLE CarSharing (
  `Area` VARCHAR(20) NOT NULL,
  `ParticipantID` VARCHAR(10) NOT NULL,
  `Share` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`Area`, `ParticipantID`),
  FOREIGN KEY (`ParticipantID`) REFERENCES Participant(`ParticipantID`)
);


CREATE TABLE PhotoShoot (
  `PhotoShootID` VARCHAR(10) NOT NULL,
  `Date` DATE NOT NULL,
  `ParticipantID` VARCHAR(10),
  `Name` VARCHAR(20),
  `Surname` VARCHAR(20),
  `Phone` VARCHAR(11),
  PRIMARY KEY (`PhotoShootID`),
  FOREIGN KEY (`ParticipantID`) REFERENCES Participant(`ParticipantID`)
);



CREATE TABLE PrivateEvent (
  `Date` DATE NOT NULL,
  `Time` VARCHAR(20) NOT NULL,
  `Place` VARCHAR(20) NOT NULL,
  `Client` VARCHAR(50),
  `Phone` VARCHAR(11),
  `Address` VARCHAR(20),
  PRIMARY KEY (`Date`, `Time`, `Place`));