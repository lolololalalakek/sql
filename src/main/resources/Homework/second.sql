--2. Вывести продукты дороже среднего

SELECT
    name,
    price
FROM products
WHERE price > (SELECT AVG(price) FROM products);
