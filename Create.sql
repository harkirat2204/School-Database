CREATE TABLE Person
  (
     SSN         INT,
     NameOfPerson VARCHAR(20) NOT NULL,
     PRIMARY KEY(SSN)
  );

  CREATE TABLE Room
  (
     Building VARCHAR(2),
	 Floor    INT,
	 RoomNumber INT,
	 Capacity INT NOT NULL,
	 RoomType VARCHAR(10),
	 PRIMARY KEY(Building,Floor,RoomNumber)

  );

CREATE TABLE Equipment
  (
     SerialNumber    INT,
	 Building VARCHAR(2),
	 Floor INT,
	 RoomNumber INT,
     Type VARCHAR(15),
     Name VARCHAR(20) NOT NULL,
     PRIMARY KEY(SerialNumber),
	 FOREIGN KEY (Building,Floor,RoomNumber) REFERENCES Room(Building,Floor,RoomNumber)
  );

CREATE TABLE Schedule
  (
     ScheduleID       INT,
     Datee             DATE,
     StartTime        INT NOT NULL,
     EndTime          INT NOT NULL,
     OccupationReason VARCHAR(50),
     PRIMARY KEY(ScheduleID)
  );

CREATE TABLE Course
  (
     CourseID VARCHAR(10),
	 PRIMARY KEY(CourseID)
  );

CREATE TABLE Section
  (
     CourseID VARCHAR(10),
	 SectionID VARCHAR(5),
	 InstructorSSN INT,
	 PRIMARY KEY(CourseID,SectionID),
	 FOREIGN KEY(CourseID) REFERENCES Course(CourseID),
	 FOREIGN KEY(InstructorSSN) REFERENCES Person(SSN)
  );


  CREATE TABLE Person_Room_Schedule
  (
     SSN INT,
   Building VARCHAR(2),
   Floor INT, 
   RoomNumber INT, 
   ScheduleID INT,
     PRIMARY KEY(SSN,Building, Floor, RoomNumber, ScheduleID), 
   FOREIGN KEY(SSN) REFERENCES Person(SSN),
   FOREIGN KEY(Building,Floor,RoomNumber) REFERENCES Room(Building,Floor,RoomNumber),
   FOREIGN KEY(ScheduleID) REFERENCES Schedule(ScheduleID)
   
  );

CREATE TABLE Section_Has_Schedule
    (
	 CourseID VARCHAR(10),
	 SectionID VARCHAR(5),
	 ScheduleID INT,
	 FOREIGN KEY(CourseID,SectionID) REFERENCES Section(CourseID,SectionID),
	 FOREIGN KEY(ScheduleID) REFERENCES Schedule(ScheduleID)
    );
CREATE TABLE Instructor_has_Schedule
     (
	 InstructorSSN INT,
	 ScheduleID INT,
	 PRIMARY KEY(InstructorSSN,ScheduleID),
	 FOREIGN KEY(InstructorSSN) REFERENCES Person(SSN),
	 FOREIGN KEY(ScheduleID) REFERENCES Schedule(ScheduleID)
	 );