use SRMS;
INSERT INTO students (name, roll_no, class, section, dob) VALUES
('Rahul Sharma', 'S101', '10', 'A', '2008-03-15'),
('Anjali Verma', 'S102', '10', 'A', '2008-07-10'),
('Vikram Mehta', 'S103', '10', 'B', '2008-01-20'),
('Priya Desai', 'S104', '10', 'B', '2008-05-25'),
('Karan Patel', 'S105', '10', 'A', '2008-11-11');

INSERT INTO subjects (subject_name, max_marks) VALUES
('Mathematics', 100),
('Science', 100),
('English', 100),
('Social Studies', 100),
('Hindi', 100);


-- Marks for Rahul Sharma
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(1, 1, 88), (1, 2, 76), (1, 3, 85), (1, 4, 78), (1, 5, 82);

-- Marks for Anjali Verma
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(2, 1, 92), (2, 2, 89), (2, 3, 90), (2, 4, 87), (2, 5, 91);

-- Marks for Vikram Mehta
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(3, 1, 55), (3, 2, 60), (3, 3, 58), (3, 4, 65), (3, 5, 62);

-- Marks for Priya Desai
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(4, 1, 78), (4, 2, 82), (4, 3, 75), (4, 4, 80), (4, 5, 79);

-- Marks for Karan Patel
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(5, 1, 95), (5, 2, 93), (5, 3, 97), (5, 4, 94), (5, 5, 96);


-- Rahul Sharma
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(1, 1, 50, 48), (1, 2, 50, 47), (1, 3, 50, 45), (1, 4, 50, 46), (1, 5, 50, 49);

-- Anjali Verma
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(2, 1, 50, 50), (2, 2, 50, 49), (2, 3, 50, 50), (2, 4, 50, 48), (2, 5, 50, 49);

-- Vikram Mehta
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(3, 1, 50, 42), (3, 2, 50, 40), (3, 3, 50, 41), (3, 4, 50, 43), (3, 5, 50, 39);

-- Priya Desai
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(4, 1, 50, 47), (4, 2, 50, 48), (4, 3, 50, 47), (4, 4, 50, 48), (4, 5, 50, 46);

-- Karan Patel
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(5, 1, 50, 50), (5, 2, 50, 50), (5, 3, 50, 50), (5, 4, 50, 50), (5, 5, 50, 50);

SELECT * FROM result_summary;
