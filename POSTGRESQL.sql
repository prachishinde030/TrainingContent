--TABLE CUSTOMERS
CREATE TABLE customers (
      customer_id SERIAL PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
      email VARCHAR(100) NOT NULL,
      address VARCHAR(200),
      phone_number VARCHAR(20)
    );

--TABLE PRODUCTS
	CREATE TABLE products (
      product_id SERIAL PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
      description TEXT,
      price DECIMAL(10, 2) NOT NULL
    );

--TABLE ORDERS
	CREATE TABLE orders (
      order_id SERIAL PRIMARY KEY,
      customer_id INTEGER REFERENCES customers(customer_id),
      order_date DATE NOT NULL,
      total_amount DECIMAL(10, 2) NOT NULL
    );

--TABLE ORDER_ITEMS
	CREATE TABLE order_items (
      order_item_id SERIAL PRIMARY KEY,
      order_id INTEGER REFERENCES orders(order_id),
      product_id INTEGER REFERENCES products(product_id),
      quantity INTEGER NOT NULL
    );

--TABLE PAYMENTS
	CREATE TABLE payments (
      payment_id SERIAL PRIMARY KEY,
      order_id INTEGER REFERENCES orders(order_id),
      payment_date DATE NOT NULL,
      amount DECIMAL(10, 2) NOT NULL
    );
	
--INSERT INTO TABLES
	INSERT INTO customers (name, email, address, phone_number)
VALUES
  ('Jennifer Adams', 'jenniferadams@example.com', '444 Pine St, City', '555-7890'),
  ('Robert Wilson', 'robertwilson@example.com', '555 Maple Ave, City', '555-5678'),
  ('Jessica Brown', 'jessicabrown@example.com', '777 Elmwood Pl, City', '555-1234'),
  ('Daniel Davis', 'daviddaniel@example.com', '888 Oak St, City', '555-9876'),
  ('Sophia Thompson', 'sophiathompson@example.com', '123 Cedar Ln, City', '555-4321'),
  ('Andrew Miller', 'andrewmiller@example.com', '999 Spruce Dr, City', '555-2468'),
  ('Emma Martinez', 'emmamartinez@example.com', '111 Birch Rd, City', '555-1357'),
  ('Matthew Clark', 'matthewclark@example.com', '222 Pinecrest Ave, City', '555-8642'),
  ('Ava Taylor', 'avataylor@example.com', '555 Elmwood Pl, City', '555-5793'),
  ('William Turner', 'williamturner@example.com', '777 Oakwood Rd, City', '555-7582'),
('Sophie Anderson', 'sophieanderson@example.com', '555 Walnut St, City', '555-1111'),
  ('Henry Davis', 'henrydavis@example.com', '777 Maplewood Ave, City', '555-2222'),
  ('Grace Johnson', 'gracejohnson@example.com', '123 Oak Ln, City', '555-3333'),
  ('Samuel Thompson', 'samuelthompson@example.com', '888 Elmwood Dr, City', '555-4444'),
  ('Elizabeth Wilson', 'elizabethwilson@example.com', '555 Pinecrest Rd, City', '555-5555'),
  ('Joseph Miller', 'josephmiller@example.com', '999 Birch Ave, City', '555-6666'),
  ('Chloe Brown', 'chloebrown@example.com', '111 Cedar St, City', '555-7777'),
  ('Benjamin Clark', 'benjaminclark@example.com', '222 Elm Pl, City', '555-8888'),
  ('Mia Martinez', 'miamartinez@example.com', '555 Oakwood Ln, City', '555-9999'),
  ('David Turner', 'davidturner@example.com', '777 Pine Rd, City', '555-0000');
 
 SELECT * from customers
 
  INSERT INTO products (product_id, name, description, price)
VALUES
    (101, 'car', 'Very big', 100000),
    (202, 'phone', 'Latest model', 800),
    (303, 'laptop', 'High-performance', 1500),
    (404, 'watch', 'Waterproof', 200),
    (505, 'headphones', 'Wireless', 100),
    (606, 'camera', 'DSLR', 1200),
    (707, 'television', 'Smart TV', 1500),
    (808, 'tablet', 'Portable', 600),
    (909, 'gaming console', '4K gaming', 500),
    (1000, 'smart speaker', 'Voice assistant', 80),
    (1101, 'monitor', 'High resolution', 300),
    (1202, 'fitness tracker', 'Heart rate monitor', 50),
    (1303, 'drone', 'Aerial photography', 1000),
    (1404, 'smartwatch', 'Fitness tracking', 200),
    (1505, 'printer', 'Wireless printing', 150),
    (1606, 'blender', 'Powerful motor', 80),
    (1707, 'vacuum cleaner', 'Robotic', 300),
    (1808, 'microwave', 'Compact', 100),
    (1909, 'toaster', 'Multiple slots', 40),
    (2000, 'hair dryer', 'Ionic technology', 60)
	
	SELECT * from products
	
	INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2023-07-01', 100.00),
    (2, 2, '2023-07-02', 75.50),
    (3, 3, '2023-07-03', 200.00),
    (4, 4, '2023-07-04', 50.25),
    (5, 5, '2023-07-05', 300.00),
    (6, 6, '2023-07-06', 150.75),
    (7, 7, '2023-07-07', 80.50),
    (8, 8, '2023-07-08', 120.00),
    (9, 9, '2023-07-09', 250.50),
    (10, 10, '2023-07-10', 175.25),
    (11, 1, '2023-07-11', 80.00),
    (12, 2, '2023-07-12', 60.50),
    (13, 3, '2023-07-13', 180.00),
    (14, 4, '2023-07-14', 40.25),
    (15, 5, '2023-07-15', 270.00),
    (16, 6, '2023-07-16', 140.75),
    (17, 7, '2023-07-17', 75.50),
    (18, 8, '2023-07-18', 100.00),
    (19, 9, '2023-07-19', 220.50),
    (20, 10, '2023-07-20', 155.25);
	
	SELECT * from orders
	
	INSERT INTO payments (order_id, payment_date, amount)
VALUES
(1, '2008-11-11', 5400),
(2, '2008-12-01', 3200),
(3, '2009-01-15', 6700),
(4, '2009-02-28', 4800),
(5, '2009-03-05', 7800),
(6, '2009-04-12', 2200),
(7, '2009-05-22', 6100),
(8, '2009-06-03', 4500),
(9, '2009-07-10', 8900),
(10, '2009-08-14', 5100),
(11, '2009-09-25', 3700),
(12, '2009-10-17', 7200),
(13, '2009-11-02', 5900),
(14, '2009-12-06', 4200),
(15, '2010-01-20', 6900),
(16, '2010-02-15', 5300),
(17, '2010-03-27', 7900),
(18, '2010-04-07', 4800),
(19, '2010-05-12', 6600),
(20, '2010-06-18', 5800);

SELECT * from payments

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (55, 1, 2, 100);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (56, 1, 3, 50);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (57, 1, 4, 75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (58, 2, 1, 200);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (59, 2, 3, 150);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (60, 3, 4, 100);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (61, 3, 2, 50);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (62, 4, 1, 75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (63, 4, 3, 125);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (64, 5, 2, 150);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (65, 5, 4, 100);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (66, 6, 1, 200);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (67, 6, 2, 75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (68, 7, 3, 100);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (69, 7, 4, 50);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (70, 8, 1, 125);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (71, 8, 2, 150);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (72, 9, 3, 100);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (73, 9, 4, 75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (74, 10, 1, 200);

SELECT * from order_items

--RETRIVE ALL ORDERS WITH CUSTOMERS DETAILS
SELECT * 
FROM ORDERS
INNER JOIN CUSTOMERS
ON Orders.CUSTOMER_ID = Customers.CUSTOMER_ID;

--RETRIVE ALL CUSTOMERS ALONG WITH THEIR ORDERS IF ANY
SELECT *
FROM customers
LEFT JOIN orders
ON customers.CUSTOMER_ID = orders.CUSTOMER_ID;

--RETRIVE ALL ORDER WITH CUSTOMERS 
SELECT *
FROM customers
right JOIN orders
ON customers.CUSTOMER_ID = orders.CUSTOMER_ID;

--RETRIVE ALL CUSTOMERS AND THEIR ORDERS INCLUDING UNMATCH RECORDS
SELECT *
FROM Customers
FULL JOIN Orders ON Customers.Customer_id=Orders.Customer_id;

select * from customers;

create or replace function cal_order_total(order_id integer)
returns decimal
LANGUAGE plpgsql
as $$
declare
total decimal(10,2);
begin
select sum (order_items.quantity*products.price)
  into total from order_items
  inner join products on products.product_id = order_item.product_id
  where order_items.order_id = order_id;
RETURN total;
end;$$

SELECT cal_order_total(1);

  

