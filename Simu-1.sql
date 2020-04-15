--Create 3 tables following the criteria in the summary.
--Add some data to fill up each table.

CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
  );
  INSERT INTO users (name,email)
  VALUES
  ('Andy', 'andy@table.com'),
  ('Betty', 'betty@table.com'),
  ('Cody', 'cody@table.com'),
  ('Danny', 'danny@table.com');
  
  CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  price MONEY
  );
  INSERT INTO products (name, price)
  VALUES
  ('Apple', 500),
  ('Banana', 50),
  ('Cookie', 100),
  ('Egg', 10);
  
  CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  order_number INTEGER,
  product_id INTEGER REFERENCES products(product_id)
  );
  INSERT INTO orders (order_number, product_id)
  VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,2),
  (2,4),
  (3,1),
  (3,4);