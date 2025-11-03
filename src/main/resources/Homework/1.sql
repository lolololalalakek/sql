SELECT e.id AS employee_id, e.name AS employee_name, COALESCE(d.name, 'No Department') AS department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id;

--Задание 1: Вывести employee.id, employee.name, department.name — сотрудники без отдела должны показать No Department.
