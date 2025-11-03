--3. Вывести отделы, где есть хотя бы один сотрудник с зарплатой > 10 000

SELECT
    id,
    name
FROM departments
WHERE id IN (
        -- подзапрос выбирает ID всех отделов, в которых есть сотрудник
        -- с зарплатой, превышающей 10000
        SELECT DISTINCT
            department_id
        FROM employees
        WHERE salary > 10000
            AND department_id IS NOT NULL -- Исключаем NULL-отделы
        );