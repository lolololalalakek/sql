--4. Вывести продукты, которые чаще всего встречаются в заказах

SELECT p.name
FROM products p
INNER JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.name
HAVING COUNT(oi.product_id) = (SELECT MAX(product_count)

        FROM (
            SELECT COUNT(product_id) AS product_count
            FROM order_items
            GROUP BY product_id
        ) AS subquery

);