--Задание 18: Вывести дату заказа в формате DD.MM.YYYY HH24:MI.

SELECT
    id AS order_id,
    TO_CHAR(order_date, 'DD.MM.YYYY HH24:MI') AS order_date_formatted
FROM orders;