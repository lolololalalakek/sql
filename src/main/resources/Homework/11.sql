--Задание 11: Средняя и максимальная зарплата по отделам.

SELECT
    COALESCE(d.name, 'No Department') AS department_name,
    AVG(e.salary) AS average_salary,
    MAX(e.salary) AS maximum_salary
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id
GROUP BY department_name
ORDER BY average_salary DESC;