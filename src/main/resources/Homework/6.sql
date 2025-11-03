--Задание 6: Для каждого отдела — все заказы (через сотрудников этого отдела); включать отделы с нулём заказов.

SELECT
    d.name AS department_name,
    o.id AS order_id,
    o.order_date,
    o.amount
FROM departments d
LEFT JOIN employees e ON d.id = e.department_id
LEFT JOIN orders o ON e.id = o.employee_id
ORDER BY d.name, o.id;

