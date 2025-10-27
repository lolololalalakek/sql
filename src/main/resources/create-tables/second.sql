CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT,
    position TEXT,
    department_id INT REFERENCES departments(id) ON DELETE SET NULL
);
