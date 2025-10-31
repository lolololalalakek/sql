--Найдите средний возраст студентов по каждой группе.


SELECT g.group_name, AVG(s.age) AS average_age
FROM groups g
JOIN students s ON g.group_id = s.group_id
GROUP BY g.group_name;

