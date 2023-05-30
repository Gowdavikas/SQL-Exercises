SHOW databases;
CREATE DATABASE coffee_store;
USE coffee_store;

CREATE TABLE Product(
	id INT auto_increment primary key,
	Item_Name Varchar(15),
    Price decimal(3,2)
);

CREATE TABLE Customer(
id INT auto_increment PRIMARY KEY,
first_name varchar(10),
last_name varchar(10),
gender enum('m','f'),
phone_number varchar(10)
);

CREATE TABLE Orders(
id INT auto_increment PRIMARY KEY,
Product_id INT,
Customer_id INT,
Order_time DATETIME
);

SELECT * FROM customer;
ALTER TABLE customer
ADD COLUMN Coffee_origin varchar(27);
ALTER TABLE customer
DROP COLUMN Coffee_origin;

describe product;
SHOW databases;
USE COFFEE_STORE;
SHOW TABLES;
SELECT * FROM product;
ALTER TABLE product
ADD COLUMN Coffee_origin varchar(20);

INSERT INTO product (Item_Name,Price,Coffee_origin)
VALUES('Americano',2.5,'Ethiipia')

INSERT INTO product (Item_Name,Price,Coffee_origin)
VALUES('Cappuccino',4.5,'USA'),('Black Coffee',8.0,'South-India'),('Flate White',3.8,'Indonesia');

SELECT * FROM product;
UPDATE product
set Coffee_origin = 'Srilanka'
WHERE id = 4;

UPDATE product
SET Item_Name = 'Macchiato'
WHERE id = 4;

UPDATE product
SET Item_Name = 'Filter', Coffee_origin= 'Karnataka'
WHERE id = 5;

UPDATE product
SET Price = '9.8'
WHERE id = 3;

DELETE FROM product
WHERE id = 6;
DESCRIBE orders;
SELECT * FROM product;
SELECT * FROM orders;
DESCRIBE orders;
SELECT * FROM customer;
INSERT INTO customer (first_name, last_name, gender, phone_number) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');
INSERT INTO orders (Product_id,Customer_id,Order_time) VALUES (1,1,'2017-01-01 08-02-11'),(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12'),(6,17,'2017-01-23 12-45-30'),(2,11,'2017-01-24 08-01-27'),(1,1,'2017-01-25 08-05-13'),(6,11,'2017-01-26 10-49-10'),(7,3,'2017-01-27 09-23-57'),(7,1,'2017-01-27 10-08-16'),(3,18,'2017-01-27 10-13-09'),(4,19,'2017-01-27 11-02-40'),(3,10,'2017-01-28 08-03-21'),(1,2,'2017-01-28 08-33-28'),(1,12,'2017-01-28 11-55-33'),(1,13,'2017-01-29 09-10-17'),(6,6,'2017-01-30 10-07-13'),(1,1,'2017-02-01 08-10-14'),(2,14,'2017-02-02 10-02-11'),(7,10,'2017-02-02 09-43-17'),(7,20,'2017-02-03 08-33-49'),(4,21,'2017-02-04 09-31-01'),(5,22,'2017-02-05 09-07-10'),(3,23,'2017-02-06 08-15-10'),(2,24,'2017-02-07 08-27-26'),(1,1,'2017-02-07 08-45-10'),(6,11,'2017-02-08 10-37-10'),(3,13,'2017-02-09 08-58-18'),(3,14,'2017-02-10 09-12-40'),(5,4,'2017-02-10 11-05-34'),(1,2,'2017-02-11 08-00-38'),(3,8,'2017-02-12 08-08-08'),(7,20,'2017-02-12 09-22-10'),(1,1,'2017-02-13 08-37-45'),(5,2,'2017-02-13 12-34-56'),(4,3,'2017-02-14 08-22-43'),(5,4,'2017-02-14 09-12-56'),(3,5,'2017-02-15 08-09-10'),(6,7,'2017-02-15 09-05-12'),(1,8,'2017-02-15 09-27-50'),(2,9,'2017-02-16 08-51-12'),(3,10,'2017-02-16 13-07-46'),(4,11,'2017-02-17 08-03-55'),(4,12,'2017-02-17 09-12-11'),(5,10,'2017-02-17 11-41-17'),(6,18,'2017-02-17 13-05-56'),(7,19,'2017-02-18 08-33-27'),(1,17,'2017-02-19 08-12-31'),(1,1,'2017-02-20 09-50-17'),(3,5,'2017-02-20 09-51-29'),(4,6,'2017-02-20 10-43-39'),(3,1,'2017-02-21 08-32-17'),(1,1,'2017-02-21 10-30-11'),(3,2,'2017-02-21 11-08-45'),(4,3,'2017-02-22 11-46-32'),(2,15,'2017-02-22 13-35-16'),(6,13,'2017-02-23 08-34-48'),(4,24,'2017-02-24 08-32-03'),(2,13,'2017-02-25 08-03-12'),(7,17,'2017-02-25 09-34-23'),(7,23,'2017-02-25 11-32-54'),(5,12,'2017-02-26 11-47-34'),(6,4,'2017-02-27 12-12-34'),(1,1,'2017-02-28 08-59-22');
ALTER TABLE customer MODIFY phone_number varchar(15);

truncate table product;
INSERT INTO orders (Product_id,Customer_id,Order_time)
VALUES(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33')

SELECT * FROM customer;
SELECT first_name,gender FROM customer;
SELECT * FROM product;
UPDATE product
SET Item_Name = 'Filter', Coffee_origin= 'Karnataka'
WHERE id = 5;

INSERT INTO product (Item_Name,Price,Coffee_origin)
VALUES('Americano',2.5,'Ethiipia')


SELECT * FROM product
WHERE Price = 2.50
or Coffee_origin = 'Karnataka';

SELECT * FROM product
WHERE Price = 2.50
AND Coffee_origin = 'Brazil';

SELECT * FROM product
WHERE PRICE < 3;

SELECT * FROM product
WHERE Price >= 6;

SELECT * FROM customer
WHERE phone_number IS NULL;

SELECT * FROM customer
WHERE phone_number IS NOT NULL;

SELECT first_name,phone_number,last_name FROM customer
WHERE last_name = 'Bluth'
AND gender = 'F';

SELECT Item_name FROM product
WHERE price > 3
or Coffee_origin = 'srilanka'

SELECT * from customer
WHERE gender = 'm' 
AND phone_number IS NULL;


SELECT * FROM product

SELECT Price,Item_Name,Coffee_origin FROM product
WHERE Price BETWEEN 4 and 9;
SELECT * from customer
SELECT * from customer
WHERE last_name BETWEEN 'A' and 'L';

SELECT * from customer
ORDER BY first_name ASC;

SELECT * FROM product
ORDER BY price ASC;

SELECT item_name, price FROM product
WHERE coffee_origin IN ('Brazil','Karnataka')
ORDER BY item_name;

select DISTINCT first_name From Customer;

select * from product;
SELECT price,Coffee_origin AS Coffee_type From product;

SELECT * FROM ORDERS;
DROP TABLE orders;
INSERT INTO orders (product_id,customer_id,order_time) VALUES (1,1,'2017-01-01 08-02-11'),(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12');


SELECT product.Item_Name, orders.Order_time FROM orders
INNER JOIN product ON orders.Product_id = product.id;


SELECT Item_Name,Price FROM product
WHERE Coffee_origin IN ('Srilanka','South-India')
ORDER BY Item_name;

SELECT * FROM Orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'


SELECT product.Item_Name, orders.Order_time FROM orders
INNER JOIN product ON orders.Product_id = product.id;


-- EXERCISES-- 
SELECT o.id,c.phone_number,c.last_name,o.order_time FROM orders o
LEFT JOIN customer c ON o.customer_id = c.id
ORDER BY O.order_time ASC
LIMIT 10;

SELECT o.id,c.phone_number,c.last_name,o.order_time FROM customer c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY O.order_time
LIMIT 10;

SELECT o.id,c.phone_number,c.last_name,o.order_time FROM orders o
RIGHT JOIN customer c ON o.customer_id = c.id
ORDER BY O.order_time
LIMIT 10;

SELECT o.id, c.phone_number FROM orders o
JOIN customer c ON o.customer_id = c.id
WHERE o.product_id = 4;

-- EXERCISES-- 
SELECT p.item_name, o.order_time FROM orders o
JOIN product p ON o.product_id = p.id
WHERE p.Item_Name = 'Filter'
AND o.order_time between '2017-01-15' AND '2017-02-17';

SELECT p.item_name, p.price, o.order_time FROM product p
JOIN orders o ON p.id = o.product_id
JOIN customer c ON o.customer_id = c.id
WHERE c.gender = 'F'
AND o.order_time between '2017-01-01' AND'2017-01-30';