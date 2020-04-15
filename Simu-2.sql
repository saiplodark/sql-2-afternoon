--Get all products for the first order.
SELECT * FROM orders
WHERE order_number = 1;

--Get all orders.
SELECT * FROM orders;

--Get the total cost of an order ( sum the price of all products on an order ).
SELECT SUM(price)
FROM orders o
JOIN products p ON p.product_id = o.product_id  
WHERE o.order_number = 1;

SELECT SUM(price)
FROM orders o
JOIN products p ON p.product_id = o.product_id  
WHERE order_number = 1;