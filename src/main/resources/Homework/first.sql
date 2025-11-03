--1. Вывести сотрудников с зарплатой выше средней по компании

SELECT
    name,
    salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);