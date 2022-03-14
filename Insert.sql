INSERT INTO Person
VALUES      ( 1101,
              'Akshit' ); 
INSERT INTO Person
VALUES      ( 1102,
              'Ak' ); 
INSERT INTO Person
VALUES      ( 1103,
              'Aman' ); 
INSERT INTO Person
VALUES      ( 1104,
              'Aran' ); 
INSERT INTO Person
VALUES      ( 1105,
              'Alan' );
INSERT INTO Person
VALUES      ( 1201,
              'Sam' ); 
INSERT INTO Person
VALUES      ( 1202,
              'John' ); 
INSERT INTO Person
VALUES      ( 1203,
              'Jack' ); 
INSERT INTO Person
VALUES      ( 1204,
              'Derrick' ); 
INSERT INTO Person
VALUES      ( 1205,
              'Jason' );


INSERT INTO Room
VALUES      ( 'A',
               1,
			   1,
			   18,
              'Lab'
            ); 
INSERT INTO Room
VALUES      ( 'B',
               2,
			   1,
			   18,
              'Lab'
            ); 
INSERT INTO Room
VALUES      ( 'A',
               2,
			   1,
			   100,
              'Classroom'
            ); 
INSERT INTO Room
VALUES      ( 'C',
               0,
			   1,
			   150,
              'Library'
            ); 
INSERT INTO Room
VALUES      ( 'C',
               0,
			   2,
			   30,
              'Office'
            );
INSERT INTO Room
VALUES      ( 'C',
               1,
			   1,
			   15,
              'Club Room'
            ); 
INSERT INTO Room
VALUES      ( 'C',
               1,
			   2,
			   20,
              'Meeting'
            ); 
INSERT INTO Room
VALUES      ( 'C',
               1,
			   3,
			   50,
              'Lab'
            );

INSERT INTO Schedule
VALUES      ( 001,
               '2021-09-06',
			   1400,
			   1600,
              'Reading Session'
            );
INSERT INTO Schedule
VALUES      ( 002,
               '2021-10-06',
			   1400,
			   1600,
              'Reading Session'
            ); 
INSERT INTO Schedule
VALUES      ( 003,
               '2021-11-06',
			   1400,
			   1600,
              'Music class'
            ); 
INSERT INTO Schedule
VALUES      ( 004,
               '2021-09-06',
			   0800,
			   1000,
              'Lab'
            ); 
INSERT INTO Schedule
VALUES      ( 005,
               '2021-10-06',
			   0800,
			   1000,
              'Music class'
            ); 
INSERT INTO Schedule
VALUES      ( 006,
               '2021-09-06',
			   1200,
			   1400,
              'Meeting'
            );
INSERT INTO Schedule
VALUES      ( 007,
               '2021-10-06',
			   1200,
			   1400,
              'Club Activity'
            ); 
INSERT INTO Schedule
VALUES      ( 008,
               '2021-09-06',
			   1000,
			   1200,
              'Discussion'
            ); 
INSERT INTO Schedule
VALUES      ( 009,
               '2021-09-06',
			   0800,
			   1000,
              'Lab'
            ); 
INSERT INTO Schedule
VALUES      ( 010,
               '2021-09-06',
         0800,
         1000,
              'Office Hours'
            ); 
INSERT INTO Schedule
VALUES      ( 011,
               '2021-10-06',
         1200,
         1400,
              'Office Hours'
            ); 
INSERT INTO Schedule
VALUES      ( 012,
               '2021-11-06',
         1500,
         1600,
             'Office Hours'
            ); 
INSERT INTO Schedule
VALUES      ( 013,
               '2021-11-06',
         1700,
         1800,
            'Office Hours'
            ); 
INSERT INTO Equipment
VALUES      ( 11,
              'A',
               1,
			   1,
              'Measurment',
			  'Scale'); 
INSERT INTO Equipment
VALUES      ( 110,
              'A',
               1,
			   1,
              'weight',
			  'bob');
INSERT INTO Equipment
VALUES      ( 101,
              'A',
               1,
			   1,
              'Geometry',
			  'Compass'); 
INSERT INTO Equipment
VALUES      ( 301,
              'B',
               2,
			   1,
              'Digital',
			  'Desktop'); 
INSERT INTO Equipment
VALUES      ( 302,
               'B',
               2,
			   1,
              'Digital',
			  'Printer');
INSERT INTO Equipment
VALUES      ( 303,
              'B',
               2,
			   1,
              'Digital',
			  'Hub'); 
INSERT INTO Equipment
VALUES      ( 401,
              'A',
               2,
			   1,
              'Display',
			  'Projector'); 
INSERT INTO Equipment
VALUES      ( 402,
              'A',
               2,
			   1,
              'Teaching',
			  'Smart Board');
INSERT INTO Equipment
VALUES      ( 403,
              'C',
               1,
			   3,
              'Music',
			  'Instruments'); 

INSERT INTO Course
VALUES      ( 
              'CPSC2221'
            ); 
INSERT INTO Course
VALUES      ( 
              'CPSC1150'
            ); 
INSERT INTO Course
VALUES      ( 
              'CPSC1145'
            ); 
INSERT INTO Course
VALUES      ( 
              'CPSC1050'
            ); 
INSERT INTO Course
VALUES      ( 
              'MATH1170'
            ); 
INSERT INTO Course
VALUES      ( 
              'MUS1171'
            ); 

INSERT INTO Section
VALUES      ( 
              'CPSC2221',
              'W03',
			  1101 
            ); 
INSERT INTO Section
VALUES      ( 
              'CPSC1150',
              'W04',
			  1103 
            );
INSERT INTO Section
VALUES      ( 
              'CPSC1145',
              'W05',
			  1204
            );
INSERT INTO Section
VALUES      ( 
              'CPSC1050',
              'W07',
			  1201 
            ); 
INSERT INTO Section
VALUES      ( 
              'MATH1170',
              'W08',
			  1203 
            );
INSERT INTO Section
VALUES      ( 
              'MUS1171',
              'W09',
			  1205
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1103,
			  'A',
			  2,
			  1,
			  002
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1101,
			  'B',
			  2,
			  1,
			  004
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1101,
			  'A',
			  1,
			  1,
			  001
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1205,
			  'C',
			  1,
			  3,
			  003
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1201,
			  'C',
			  1,
			  3,
			  005
            );
INSERT INTO Person_Room_Schedule
VALUES      ( 
              1204,
			  'C',
			  1,
			  2,
			  006
            );


INSERT INTO Section_Has_Schedule
VALUES      ( 
              'CPSC2221',
			  'W03',
			  001
            );
INSERT INTO Section_Has_Schedule
VALUES      ( 
              'CPSC2221',
			  'W03',
			  003
            );
INSERT INTO Section_Has_Schedule
VALUES      ( 
              'CPSC1150',
			  'W04',
			  002
            );
INSERT INTO Section_Has_Schedule
VALUES      ( 
              'MUS1171',
			  'W09',
			  004
            );
INSERT INTO Section_Has_Schedule
VALUES      ( 
              'CPSC1050',
			  'W07',
			  005
            );

INSERT INTO Instructor_has_Schedule
VALUES      (
             1103,
			 010
            );
INSERT INTO Instructor_has_Schedule
VALUES      (
             1101,
			 010
            );
INSERT INTO Instructor_has_Schedule
VALUES      (
             1101,
			 011
            );
INSERT INTO Instructor_has_Schedule
VALUES      (
             1205,
			 012
            );

INSERT INTO Instructor_has_Schedule
VALUES      (
             1205,
       013
            );

INSERT INTO Instructor_has_Schedule
VALUES      (
             1201,
			 010
            );
INSERT INTO Instructor_has_Schedule
VALUES      (
             1204,
			 010
            );