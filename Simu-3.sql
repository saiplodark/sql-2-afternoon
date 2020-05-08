--Add a foreign key reference from orders to users.
ALTER TABLE users
ADD COLUMN order_id INTEGER REFERENCES orders(order_id);


--Update the orders table to link a user to each order.
ALTER TABLE orders
ADD COLUMN user_id INTEGER REFERENCES users(user_id);

--Get all orders for a user.
SELECT * from orders
WHERE  user_id = $1;

--Get how many orders each user has.
SELECT COUNT (order_id)
FROM orders
WHERE user_id =$1;