CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    price BIGINT CHECK (price >= 0),
    category_id INT REFERENCES categories(id)
);
