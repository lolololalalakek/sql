--Задание 20: Для таблицы employees: заменить NULL в salary на 0 в вычислениях и вывести salary + bonus (bonus = 10% для определённой позиции).

SELECT
    name AS employee_name,
    COALESCE(salary, 0) AS base_salary,
    (CASE
        WHEN position = 'Sales Manager' THEN COALESCE(salary, 0) * 0.10
        ELSE 0
    END) AS bonus,
    COALESCE(salary, 0) + (CASE
        WHEN position = 'Sales Manager' THEN COALESCE(salary, 0) * 0.10
        ELSE 0
    END) AS total_compensation
FROM employees;