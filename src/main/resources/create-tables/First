CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT UNIQUE
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    sum BIGINT,
    order_date TIMESTAMP DEFAULT NOW(),
    customer_id INT REFERENCES customers(id)
);
