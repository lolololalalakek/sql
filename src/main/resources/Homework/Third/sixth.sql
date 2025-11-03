--Подсчитайте, сколько студентов учится в каждой группе.


SELECT g.group_name, COUNT(s.student_id) AS student_count
FROM groups g
JOIN students s ON g.group_id = s.group_id
GROUP BY g.group_name;

