--Задание 8: Показать, какие продукты никогда не продавались.

SELECT p.name AS product_name
FROM products p
LEFT JOIN order_items oi ON p.id = oi.product_id
WHERE oi.id IS NULL;