--Задание 9: Для каждого менеджера — показать суммарную сумму заказов, оформленных его подчинёнными.

SELECT
    m.name AS manager_name,
    SUM(o.amount) AS total_subordinate_orders_amount
FROM employees m
INNER JOIN employees e ON m.id = e.manager_id  -- e - подчинённые
INNER JOIN orders o ON e.id = o.employee_id    -- заказы подчинённых
GROUP BY m.name
ORDER BY total_subordinate_orders_amount DESC;