--Задание 19: Найти заказы старше N дней (параметр)

-- Найти заказы старше 30 дней
SELECT
    id AS order_id,
    order_date
FROM orders
WHERE order_date < CURRENT_DATE - INTERVAL '30 days';