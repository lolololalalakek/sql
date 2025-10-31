--CREATE TABLE students (
--     student_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     birth_date DATE NOT NULL,
--     email VARCHAR(100), Убрал уник
--     group_id INT NOT NULL
--);
--


--Напишите INSERT для заполнения таблицы
INSERT INTO students (first_name, last_name, birth_date, email, group_id)
VALUES
    ('Eminem', 'Eminemovich', '03.04.2005', 'eminem@Gmail.com', 182102),
    ('Slim', 'Shadiev', '04.01.2001', 'slimshady@mail.ru', 182104),
    ('Eminem', 'Eminemovich', '03.04.2005', 'eminem@Gmail.com', 182102),
    ('Kendrick', 'Lamarov', '15.02.2001', 'Lamarov@mail.ru', 182104),
    ('Eminem', 'Eminemovich', '03.04.2005', 'eminem@Gmail.com', 182102);

