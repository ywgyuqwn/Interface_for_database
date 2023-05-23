CREATE TABLE item (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL
);
 
CREATE TABLE teacher (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);
 
CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    item_id INTEGER REFERENCES item(id),
    teacher_id INTEGER REFERENCES teacher(id),
    day_of_week TEXT NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    week_type TEXT NOT NULL CHECK (week_type IN ('Even Week', 'Odd Week')),
    room_numb TEXT NOT NULL
);
 
INSERT INTO item (name, type) VALUES
('Physics', 'Lecture'),
('Physics', 'Practice'),
('Computer Science', 'Lecture'),
('Computer Science', 'Practice'),
('Math', 'Lecture'),
('Math', 'Practice'),
('History', 'Lecture'),
('History', 'Practice'),
('Database', 'Lecture'),
('Database', 'Practice');
 
INSERT INTO teacher (name) VALUES 
('John Smith'),
('Michael Jordan'),
('Elon Musk'),
('Mark Zukerberg'),
('Jeff Bezos'),
('Andrew Tate');
 
INSERT INTO schedule (item_id, teacher_id, day_of_week, start_time, end_time, room_numb, week_type) VALUES
(NULL, NULL, 'Monday', '09:30', '11:05','103', 'Even Week'),
(1, 1, 'Monday', '11:20', '12:55','102', 'Even Week'),
(1, 1, 'Monday', '13:10', '14:45','101','Even Week'),
(NULL, NULL, 'Monday', '15:25', '17:00','101','Even Week'),
(NULL, NULL, 'Monday', '17:15', '18:55', '101','Even Week'),
 
(2, 2, 'Monday', '09:30', '11:05','103', 'Odd Week'),
(3, 3, 'Monday', '11:20', '12:55','102', 'Odd Week'),
(4, 4, 'Monday', '13:10', '14:45','101','Odd Week'),
(NULL, NULL, 'Monday', '15:25', '17:00','101', 'Odd Week'),
(NULL, NULL, 'Monday', '17:15', '18:55','101','Odd Week'),
 
(NULL, NULL, 'Tuesday', '09:30', '11:05','103', 'Even Week'),
(NULL, NULL, 'Tuesday', '11:20', '12:55','102', 'Even Week'),
(5, 4, 'Tuesday', '13:10', '14:45','101','Even Week'),
(3, 6, 'Tuesday', '15:25', '17:00','101', 'Even Week'),
(NULL, NULL, 'Tuesday', '17:15', '18:55','101', 'Even Week'),
 
(1, 2, 'Tuesday', '09:30', '11:05','103', 'Odd Week'),
(8, 5, 'Tuesday', '11:20', '12:55','102', 'Odd Week'),
(3, 1, 'Tuesday', '13:10', '14:45','101','Odd Week'),
(10, 3, 'Tuesday', '15:25', '17:00','101','Odd Week'),
(NULL, NULL, 'Tuesday', '17:15', '18:55','101','Odd Week'),
 
(3, 2, 'Wednesday', '09:30', '11:05','103', 'Even Week'),
(5, 6, 'Wednesday', '11:20', '12:55','102','Even Week'),
(NULL, NULL, 'Wednesday', '13:10', '14:45', '103', 'Even Week'),
(NULL, NULL, 'Wednesday', '15:25', '17:00', '101','Even Week'),
(NULL, NULL, 'Wednesday', '17:15', '18:55','101', 'Even Week'),
 
(1, 2, 'Wednesday', '09:30', '11:05','103', 'Odd Week'),
(7, 3, 'Wednesday', '11:20', '12:55','102', 'Odd Week'),
(NULL, NULL, 'Wednesday', '13:10', '14:45','101','Odd Week'),
(NULL, NULL, 'Wednesday', '15:25', '17:00', '103', 'Odd Week'),
(NULL, NULL, 'Wednesday', '17:15', '18:55', '104', 'Odd Week'),
 
(NULL, NULL, 'Thursday', '09:30', '11:05','103', 'Even Week'),
(4, 3, 'Thursday', '11:20', '12:55','102', 'Even Week'),
(NULL, NULL, 'Thursday', '13:10', '14:45','101','Even Week'),
(NULL, NULL, 'Thursday', '15:25', '17:00', '101','Even Week'),
(NULL, NULL, 'Thursday', '17:15', '18:55','101', 'Even Week'),
 
(1, 2, 'Thursday', '09:30', '11:05','103', 'Odd Week'),
(7, 3, 'Thursday', '11:20', '12:55','102', 'Odd Week'),
(NULL, NULL, 'Thursday', '13:10', '14:45','101','Odd Week'),
(NULL, NULL, 'Thursday', '15:25', '17:00', '103', 'Odd Week'),
(NULL, NULL, 'Thursday', '17:15', '18:55', '104', 'Odd Week'),
 
(NULL, NULL, 'Friday', '09:30', '11:05','103', 'Even Week'),
(4, 3, 'Friday', '11:20', '12:55','102', 'Even Week'),
(NULL, NULL, 'Friday', '13:10', '14:45','101','Even Week'),
(5, 6, 'Friday', '15:25', '17:00', '101', 'Even Week'),
(NULL, NULL, 'Friday', '17:15', '18:55','101', 'Even Week'),
 
(1, 2, 'Friday', '09:30', '11:05','103', 'Odd Week'),
(7, 3, 'Friday', '11:20', '12:55','102', 'Odd Week'),
(NULL, NULL, 'Friday', '13:10', '14:45','101','Odd Week'),
(NULL, NULL, 'Friday', '15:25', '17:00', '103', 'Odd Week'),
(NULL, NULL, 'Friday', '17:15', '18:55', '104', 'Odd Week'),
 
(8, 6, 'Saturday', '09:30', '11:05','103', 'Even Week'),
(4, 3, 'Saturday', '11:20', '12:55','102', 'Even Week'),
(NULL, NULL, 'Saturday', '13:10', '14:45','101','Even Week'),
(5, 6, 'Saturday', '15:25', '17:00', '101','Even Week'),
(NULL, NULL, 'Saturday', '17:15', '18:55','101', 'Even Week'),
 
(1, 2, 'Saturday', '09:30', '11:05','103', 'Odd Week'),
(7, 3, 'Saturday', '11:20', '12:55','102', 'Odd Week'),
(NULL, NULL, 'Saturday', '13:10', '14:45','101','Odd Week'),
(NULL, NULL, 'Saturday', '15:25', '17:00', '103', 'Odd Week'),
(NULL, NULL, 'Saturday', '17:15', '18:55', '104', 'Odd Week');