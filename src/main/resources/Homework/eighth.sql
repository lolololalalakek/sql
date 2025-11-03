--8. Вывести сотрудников, зарабатывающих больше, чем любой из менеджеров.

SELECT
    name AS employee_name,
    salary
FROM employees
WHERE salary > (
        -- находим максимальную зарплату среди всех менеджеров.
        SELECT MAX(salary)
        FROM employees
        WHERE id IN (
                -- находим ID всех, кто является менеджером
            SELECT DISTINCT manager_id
                FROM employees
                WHERE manager_id IS NOT NULL
            )
            AND salary IS NOT NULL -- исключаем менеджеров с NULL-зарплатой из сравнения
    )
    -- доп. условие - исключаем самих менеджеров
    AND id NOT IN (
        SELECT DISTINCT manager_id
        FROM employees
        WHERE manager_id IS NOT NULL
    );