--Задание 4: Все заказы с именем сотрудника и именем клиента — если employee или customer отсутствует, показывать No Employee / No Customer.

SELECT o.id AS order_id,
    o.order_date,
    o.amount,
    COALESCE(e.name, 'No Employee') AS employee_name,
    COALESCE(c.name, 'No Customer') AS customer_name
FROM orders o
LEFT JOIN employees e ON o.employee_id = e.id
LEFT JOIN customers c ON o.customer_id = c.id;