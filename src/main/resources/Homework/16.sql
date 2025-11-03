--Задание 16: Найти клиентов, чья средняя сумма заказа выше средней по всем заказам.

SELECT
    c.name AS customer_name,
    AVG(o.amount) AS average_order_amount
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
HAVING AVG(o.amount) > (SELECT AVG(amount) FROM orders)
ORDER BY average_order_amount DESC;