--6. Вывести топ 3 отдела по средней зарплате

SELECT
    d.name AS department_name,
    AVG(e.salary) AS average_salary
FROM  departments d
INNER JOIN employees e ON d.id = e.department_id
GROUP BY d.name
ORDER BY average_salary DESC
LIMIT 3;