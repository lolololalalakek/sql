----Задание 7: Найти пары клиентов и продуктов, которые этот клиент никогда не покупал (т.е. построить Cartesian клиент×продукт
--и исключить реальные покупки).

SELECT
    c.name AS customer_name,
    p.name AS product_name
FROM
    customers c,
    products p
LEFT JOIN orders o ON c.id = o.customer_id
LEFT JOIN order_items oi ON o.id = oi.order_id AND p.id = oi.product_id
WHERE oi.id IS NULL
ORDER BY c.name, p.name;