--CREATE TABLE students (
--   student_id INT PRIMARY KEY,
--   full_name VARCHAR(100),
--   age INT,
--   group_id INT
--);
--
--CREATE TABLE groups (
--   group_id INT PRIMARY KEY,
--   group_name VARCHAR(50)
--);
--
--CREATE TABLE subjects (
--   subject_id INT PRIMARY KEY,
--   subject_name VARCHAR(50)
--);
--
--CREATE TABLE grades (
--   grade_id INT PRIMARY KEY,
--   student_id INT,
--   subject_id INT,
--   grade INT,
--   FOREIGN KEY (student_id) REFERENCES students(student_id),
--   FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
--);
--
--Задание
--Напишите INSERT для заполнения таблиц

-- Таблица групп
INSERT INTO groups (group_id, group_name)
VALUES
    (1, 'IT-101'),
    (2, 'MUSIC-202'),
    (3, 'SPORT-303');

-- Таблица студентов
INSERT INTO students (student_id, full_name, age, group_id)
VALUES
    (1, 'Eminem Eminemovich', 25, 2),
    (2, 'LeBron James', 22, 3),
    (3, 'Sasha Bublik', 24, 2),
    (4, 'Stephen Curry', 21, 3),
    (5, 'Miyagi Endspiel', 23, 2),
    (6, 'Khabib Nurmagomedov', 26, 3),
    (7, 'Pevec Emin', 20, 2),
    (8, 'Kendrick Lamar', 24, 2),
    (9, 'Michael Jordan', 27, 3),
    (10, 'Rafael Nadal', 25, 2);

-- Таблица предметов
INSERT INTO subjects (subject_id, subject_name)
VALUES
    (1, 'Database Systems'),
    (2, 'Web Development'),
    (3, 'Music Theory'),
    (4, 'Sports Analytics');

-- Таблица оценок
INSERT INTO grades (grade_id, student_id, subject_id, grade)
VALUES
    (1, 1, 1, 9),
    (2, 1, 2, 10),
    (3, 2, 4, 8),
    (4, 3, 3, 9),
    (5, 4, 4, 10),
    (6, 5, 3, 8),
    (7, 6, 4, 9),
    (8, 7, 3, 7),
    (9, 8, 1, 9),
    (10, 8, 3, 10),
    (11, 9, 4, 10),
    (12, 10, 1, 8),
    (13, 10, 2, 9),
    (14, 3, 1, 9),
    (15, 5, 1, 8);

