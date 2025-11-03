--5. Вывести для каждого клиента количество его заказов


SELECT
    c.name AS customer_name,
    COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC, c.name;