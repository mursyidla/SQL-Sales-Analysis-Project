-- Create tables
CREATE TABLE customers (
    customer_id INTEGER,
    name TEXT,
    region TEXT
);

CREATE TABLE orders (
    order_id INTEGER,
    customer_id INTEGER,
    product TEXT,
    amount INTEGER,
    order_date TEXT
);

-- Insert data
INSERT INTO customers VALUES
(1, 'Ali', 'KL'),
(2, 'Siti', 'Selangor'),
(3, 'John', 'Penang');

INSERT INTO orders VALUES
(101, 1, 'Laptop', 3000, '2024-01-01'),
(102, 2, 'Phone', 1500, '2024-01-02'),
(103, 1, 'Mouse', 100, '2024-01-03'),
(104, 3, 'Laptop', 2800, '2024-01-04');

-- Queries
SELECT o.order_id, c.name, o.product, o.amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT c.region, SUM(o.amount) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region;
