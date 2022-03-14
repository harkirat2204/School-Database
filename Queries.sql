-- Name of instructor who teaches section for course
--Query 1
SELECT NameofPerson
FROM Section JOIN Person
ON  Section.InstructorSSN = Person.SSN
WHERE CourseId = 'CPSC1150' 
    AND SectionId = 'W04'



-- LOCATing room which has equipment with serial no 11
--Query 2
SELECT Building, Floor , RoomNumber
FROM Equipment
WHERE SerialNumber = 11;




-- List all instructors who teach abc Course and their  respective sections
--Query 3

SELECT NameofPerson, SectionID
FROM Section JOIN Person
ON  Section.InstructorSSN = Person.SSN
WHERE CourseId = 'CPSC1150' 


--- Name of person who booked jkl room on xyz date abc time
--Query 4
SELECT NameOfPerson
FROM Person_Room_Schedule, Person, Schedule
WHERE Person.SSN = Person_Room_Schedule.SSN
    AND Schedule.ScheduleID = Person_Room_Schedule.ScheduleID
    AND Schedule.StartTime = 1200
    AND Schedule.Datee = '09/06/2021'
    AND Building = 'C'
    AND Floor = 1
    AND RoomNumber = 2;


-- Locating room with max capacity
--Query 5
SELECT Building, Floor , RoomNumber
FROM Room
WHERE capacity = ( SELECT Max(capacity)
                  FROM Room
                 )

----   Show Sessions for CPSC1145 W05

--Query 6


SELECT Datee, StartTime, EndTime
FROM SECTION_HAS_SCHEDULE JOIN Schedule
ON SECTION_HAS_SCHEDULE.ScheduleID = Schedule.ScheduleID
WHERE CourseID = 'CPSC2221'
    AND SectionID = 'W03'

-------
-- No of bookings per person" 

--Query 7

SELECT NameofPerson AS "Name Of Person",pERSON.SSN ,COUNT(ScheduleID) AS "Number Of Bookings"
FROM PERSON LEFT JOIN  Person_Room_Schedule
    ON Person.ssn = Person_Room_Schedule.ssn
GROUP BY NameOfPerson, PERSON.SSN


-- ----------- CPsc INstructor view
--Query 8
CREATE VIEW CpscInstructors AS
SELECT DISTINCT Person.SSN, NameOfPerson
FROM Person , Section
WHERE  Person.SSN = Section.InstructorSSN
    AND CourseId LIKE 'CPSC%'


-- TOTAL Sections offered for Each Course
--Query 9

SELECT CourseID, Count(SectionID) AS "NUMBER OF SECTONS OFFERED"
FROM Section
GROUP BY CourseID



-- TOTAL CAPACITY OF C BUILDING
--Query 10

SELECT SUM(capacity) AS "TOTAL CAPACITY OF C BUILDING"
FROM Room
WHERE BUilding = 'C'

-- No of equipments in each room
--Query 11
SELECT Building, Floor, RoomNumber , Count(SerialNumber) AS "NUMBER OF EQUIPMENTS"
FROM Equipment
GROUP BY Building, Floor, RoomNumber
ORDER BY COUNT(SerialNumber) DESC;

-- Delete all sections which are taught by Derrick
--Query 12
DELETE FROM SECTION
WHERE InstructorSSN = (SELECT SSN
                        FROM Person
                        Where NameOfPerson = 'Derrick');



--- DELETE ALL EQUIPMNTS FROM B BUILDING FLOOR 2 ROOM 1
--Query 13
DELETE FROM Equipment
WHERE Building = 'B'
    AND Floor = 2
    AND RoomNumber = 1;

--Query 14
UPDATE Person
SET NameOfPerson = 'Akay'
WHERE NameOfPerson = 'Ak'


---List of Person who do not teach
--Query 15
SELECT  NameOfPerson, SSN
FROM  Section RIGHT JOIN Person
    ON InstructorSSN = SSn
WHERE  SectionID IS NULL

--Query 16

UPDATE Schedule
SET OccupationReason = 'Teaching Session'
WHERE ScheduleID = (SELECT ScheduleID 
                    FROM Schedule 
                    WHERE Datee = '09/06/2021'
                    AND StartTime = 1400 )


--Query 17
-- Show entire schedule of Insructor AKSHIT
SELECT DISTINCT Datee AS "DATE", OccupationReason, StartTime, EndTime 
FROM Schedule,Instructor_Has_Schedule, Person, Section_Has_Schedule, Section
WHERE SSN = Instructor_Has_Schedule.InstructorSSN
    AND Schedule.ScheduleID = Instructor_Has_Schedule.ScheduleID
    AND NameOfPerson ='Akshit'
UNION
SELECT DISTINCT  Datee AS "DATE", OccupationReason, StartTime, EndTime 
FROM Schedule, Section_Has_Schedule, Section
WHERE Section.InstructorSSN =                    (Select SSN
                                                From Person
                                                Where NameOfPerson = 'Akshit')
        AND Section.SectionID = Section_Has_Schedule.SectionID
        AND Section.CourseID = Section_Has_Schedule.CourseID
        AND Schedule.ScheduleID = Section_Has_Schedule.ScheduleID



--Query 18
--List all equipments in Room A11
SELECT E.Name,E.Type from
Equipment E,Room R
WHERE R.Building=E.Building 
    AND R.Floor=E.Floor 
    AND R.RoomNumber=E.RoomNumber
    AND R.Building='A'
    AND R.Floor=1 
    AND R.RoomNumber=1;

--Query 19
--Locate Rooms having Compass
Select R.Building,R.Floor,R.RoomNumber
from Room R,Equipment E
where R.Building=E.Building AND R.Floor=E.Floor AND R.RoomNumber=E.RoomNumber
      AND E.Name='Compass';

--Query 20
-- Show all course and sections that have classes on 2021-09-06 and start on 1400
SELECT CourseID, SectionID
FROM Section_Has_Schedule SS ,  Schedule S
WHERE SS.ScheduleID = S.ScheduleID
    AND S.Datee = '2021-09-06'
    AND StartTime = 1400






