create database SRMS;
use SRMS;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_no VARCHAR(20) UNIQUE,
    class VARCHAR(20),
    section CHAR(1),
    dob DATE
);
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100),
    max_marks INT DEFAULT 100
);
CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
CREATE TABLE attendance (
    att_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    total_classes INT,
    attended_classes INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);


CREATE VIEW result_summary AS
SELECT 
    s.student_id,
    s.name,
    SUM(m.marks_obtained) AS total_obtained,
    SUM(sub.max_marks) AS total_max,
    ROUND((SUM(m.marks_obtained)*100.0)/SUM(sub.max_marks), 2) AS percentage,
    CASE 
        WHEN (SUM(m.marks_obtained)*100.0)/SUM(sub.max_marks) >= 90 THEN 'A+'
        WHEN (SUM(m.marks_obtained)*100.0)/SUM(sub.max_marks) >= 75 THEN 'A'
        WHEN (SUM(m.marks_obtained)*100.0)/SUM(sub.max_marks) >= 60 THEN 'B'
        WHEN (SUM(m.marks_obtained)*100.0)/SUM(sub.max_marks) >= 50 THEN 'C'
        ELSE 'F'
    END AS grade
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN subjects sub ON sub.subject_id = m.subject_id
GROUP BY s.student_id;
