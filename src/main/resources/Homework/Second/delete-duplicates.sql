--CREATE TABLE students (
--                         student_id SERIAL PRIMARY KEY,
--                         first_name VARCHAR(50) NOT NULL,
--                         last_name VARCHAR(50) NOT NULL,
--                         birth_date DATE NOT NULL,
--                         email VARCHAR(100) UNIQUE,
--                         group_id INT NOT NULL
--);


--Удалить дубликаты, оставить только первую запись


DELETE FROM students s
USING students s2
WHERE s.first_name = s2.first_name
  AND s.last_name = s2.last_name
  AND s.student_id > s2.student_id;
