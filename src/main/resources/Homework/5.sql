--Задание 5: Список заказов с товарами: для каждого заказа вывести order_id, product_name, quantity. Показать также заказы без позиций.

SELECT o.id AS order_id,
    p.name AS product_name,
    oi.quantity
FROM orders o
LEFT JOIN order_items oi ON o.id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.id
ORDER BY o.id;