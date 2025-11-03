--Покажите предметы, где средний балл выше 8.


SELECT sub.subject_name, AVG(gr.grade) AS average_grade
FROM grades gr
JOIN subjects sub ON gr.subject_id = sub.subject_id
GROUP BY sub.subject_name
HAVING AVG(gr.grade) > 8;
