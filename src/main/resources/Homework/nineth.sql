--Задание 9: Вывести отделы, где все сотрудники зарабатывают выше 5000

SELECT d.name AS department_name
FROM departments d
INNER JOIN employees e ON d.id = e.department_id
GROUP BY d.name
HAVING MIN(e.salary) > 5000; -- фильтруем, чтобы минимальная зарплата в группе была > 5000