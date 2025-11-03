--Задание 14: Количество клиентов, у которых есть хотя бы один заказ.

SELECT COUNT(DISTINCT customer_id) AS customers_with_orders_count
FROM orders
WHERE customer_id IS NOT NULL;