CREATE DATABASE session05_btvn1;
USE session05_btvn1;

CREATE TABLE students(
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    birth_year YEAR,
    gender VARCHAR(10),
    score DECIMAL(4, 2)
);

INSERT INTO students
VALUES
('SV001', 'Nguyen Van A', '1990', 'Nam', '9.5'),
('SV002', 'Nguyen Van B', '1995', 'Nam', '8.85'),
('SV003', 'Pham Thi C', '2005', 'Nu', '9.2'),
('SV004', 'Tran Thi D', '2002', 'Nu', '7.91'),
('SV005', 'Le Van E', '1997', 'Nam', '8.5');

SELECT student_id,
UPPER(full_name) AS full_name
FROM students;

SELECT full_name,
YEAR(CURDATE()) - birth_year AS age
FROM students;

SELECT ROUND(score, 1) AS score
FROM students;

SELECT 
	COUNT(*),
	MAX(score),
	MIN(score)
FROM students;


