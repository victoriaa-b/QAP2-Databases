-- products 
CREATE TABLE products (
    products_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- customers
CREATE TABLE customers (
    customers_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL
);

-- orders
CREATE TABLE orders (
    orders_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customers_id)
)

-- order items 
CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL, 
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(orders_id),
    FOREIGN KEY (product_id) REFERENCES products(products_id)
)