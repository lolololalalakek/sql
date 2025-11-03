--Задание 15: Для каждого отдела — количество сотрудников, средняя зарплата, суммарная сумма заказов (через сотрудников этого отдела).

SELECT
    COALESCE(d.name, 'No Department') AS department_name,
    COUNT(e.id) AS employee_count,
    AVG(e.salary) AS average_salary,

    COALESCE((
        SELECT
            SUM(o.amount)
        FROM
            orders o
        INNER JOIN
            employees emp ON o.employee_id = emp.id
        WHERE
            emp.department_id = d.id -- Связываем подзапрос с внешним отделом
    ), 0) AS department_total_orders_amount
FROM
    departments d
LEFT JOIN
    employees e ON d.id = e.department_id
GROUP BY
    d.id, d.name
ORDER BY
    d.name;