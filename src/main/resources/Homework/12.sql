--Задание 12: Для каждого заказа — общее количество товаров (sum quantity) и уникальных позиций (count distinct product_id).

SELECT
    order_id,
    SUM(quantity) AS total_items_count,
    COUNT(DISTINCT product_id) AS unique_products_count
FROM order_items
GROUP BY order_id
ORDER BY order_id;