--Найдите количество студентов, у которых есть оценки по каждому предмету.


SELECT s.full_name, COUNT(DISTINCT gr.subject_id) AS subjects_count
FROM students s
JOIN grades gr ON s.student_id = gr.student_id
GROUP BY s.full_name
HAVING COUNT(DISTINCT gr.subject_id) = (SELECT COUNT(*) FROM subjects);
