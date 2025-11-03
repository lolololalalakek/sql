--Задание 2: Сотрудники, у которых есть менеджер (показать имя сотрудника и имя менеджера).

SELECT e.name AS employee_name, m.name AS manager_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.id;