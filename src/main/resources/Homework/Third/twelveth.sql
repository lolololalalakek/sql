--Найдите студентов, у которых средний балл по всем предметам выше 8.5.


SELECT s.full_name, AVG(gr.grade) AS average_grade
FROM students s
JOIN grades gr ON s.student_id = gr.student_id
GROUP BY s.full_name
HAVING AVG(gr.grade) > 8.5;