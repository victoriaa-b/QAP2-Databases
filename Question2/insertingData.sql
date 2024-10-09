-- 5 products, 4 customers and 5 orders
-- each order should have at LEAST 2 items ordered 

-- insert for products
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Water Bottle', 10.00, 100),
('Ruler', 3.00, 25),
('Yo-yo', 6.00, 30),
('Pop Socket', 5.00, 50),
('T-shirt', 16.00, 75);

-- insert for customers
INSERT INTO customers (first_name, last_name, email) VALUES
('Emily', 'Penney', 'emilypenney@code.com'),
('Erin', 'Butler', 'erin.butler@code.com'),
('Alex', 'Curl', 'alexcurl@code.com'),
('James', "Lopez", 'james.lopez@code.com');

-- insert for the orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-10-06'),
(1, '2024-10-07'),
(2, '2024-10-07'),
(3, '2024-10-08'),
(4, '2024-10-09');

-- insert for order items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 4),
(1, 2, 3),
(2, 5, 4),
(2, 3, 3),
(3, 1, 1),
(3, 4, 2),
(4, 2, 1),
(4, 1, 5),
(5, 3, 5),
(5, 5, 4);