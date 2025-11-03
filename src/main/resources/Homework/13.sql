--Задание 13: Топ-3 продукта по суммарной выручке (price*quantity).

SELECT
    p.name AS product_name,
    SUM(p.price * oi.quantity) AS total_product_revenue
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY total_product_revenue DESC
LIMIT 3;