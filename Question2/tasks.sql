-- retrieve names and stock quantities of all products
SELECT product_name, stock_quantity
FROM products;

-- retrieve products name and quantities for one of the orders
SELECT products.product_name, order_items.quantity
FROM order_items
JOIN products ON order_items.product_id = products_id
WHERE order_items.order_id = 2;

-- retrieve all oders placed by a specific customers (needs ids of what was order and number)
SELECT orders.id AS order_id, products.product_name, order_items.quantity
FROM orders
JOIN order_items ON orders.orders_id = order_items.order_id
JOIN products ON order_items.product_id = products.products_id
WHERE orders.customer_id = 2;

-- update to simulate the reducing of stock quantities of items after a customer places an order. 
-- ruler and water bottle were reduce 
UPDATE products
SET stock_quantity = stock_quantity - order_items.quantity
FROM order_items
WHERE products.products_id = order_items.product_id
AND order_items.order_id = 4;

--  delete the orders and items
DELETE FROM orders
WHERE id = 3;
DELETE FROM order_items
WHERE order_id = 3;
