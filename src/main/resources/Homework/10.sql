--Задание 10: Общее количество заказов и суммарная выручка (amount).

SELECT
    COUNT(id) AS total_orders,
    SUM(amount) AS total_revenue
FROM orders;