A database is created which records the information about all the classrooms on a college campus and people can reserve a room for a certain date, time and event. The data requirements for this database are summarized as follows:
•	Each room is uniquely identified by a room number composed of building, floor and room number (e.g. B123 means B building, floor 1, room 23) as well as room type (office, classroom, lab…), capacity (fixed number of persons can reside in), equipment installed in. Each equipment has name, type and SerialNumber that is unique.
•	If a room is a classroom or lab, it has a schedule. The schedule describes the time slot (e.g. from 10 to 12), the occupation reason (e.g. the lecture or lab of the course 2223-001), the instructor who uses the room during that time slot.
•	The schedule of a room can be different for every semester. 
•	An instructor can teach multiple course sectors in a semester.
•	People can book a room. When a room is booked, the name of the person who booked, the start time, duration, and purpose (event title) is stored in the database.
