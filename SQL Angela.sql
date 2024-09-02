
CREATE table product(
  id INT NOT NULL,
  name STRING,
  price MONEY,
  PRIMARY KEY (id)
  );

INSERT into product VALUES
(1,"pen",1.20),
(2,"pencil",2.2);


SELECT * from product;


INSERT INTO product (id , name) VALUES
(3,"sharpner");


SELECT * from product;

--- 06-08-2023 14:47:26
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: product.id
 ----- 
INSERT into product (name , price) VALUES
("eraser",1.3);
*****/

--- 06-08-2023 14:50:39
--- SQLite
SELECT name from product;

--- 06-08-2023 15:01:22
--- SQLite
select * from product where id=1;

--- 06-08-2023 15:05:04
--- SQLite
update product set price=1.8 where id=3;

--- 06-08-2023 15:06:10
--- SQLite
UPDATE product set price=1.8 where id=3;

--- 06-08-2023 15:06:36
--- SQLite
INSERT into product VALUES
(4,"eraser",1.3);

--- 06-08-2023 15:06:41
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: product.id
 ----- 
INSERT into product VALUES
(4,"eraser",1.3);
*****/

--- 06-08-2023 15:10:05
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: product.id
 ----- 
INSERT into product (id,name,price) VALUES
(4,"eraser",1.3);
*****/

--- 06-08-2023 15:10:16
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: product.id
 ----- 
INSERT into product (id,name,price) VALUES
(3,"eraser",1.3);
*****/

--- 06-08-2023 15:10:50
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:11:16
--- SQLite
UPDATE product set price=1.877 where id=3;

--- 06-08-2023 15:11:19
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:24:53
--- SQLite.2
alter table product add stock INT;

--- 06-08-2023 15:24:58
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:28:53
--- SQLite.3
update product set stock=32 where id=1; 
update product set stock=22 where id=2; 
update product set stock=12 where id=3; 
update product set stock=42 where id=4;

--- 06-08-2023 15:29:01
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:31:41
--- SQLite.4
delete from product where id=4;

--- 06-08-2023 15:31:50
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:46:27
--- SQLite
INSERT into product (id,name,price) VALUES
(4,"eraser",1.3);

--- 06-08-2023 15:46:32
--- SQLite.1
SELECT * from product;

--- 06-08-2023 15:47:13
--- SQLite.3
update product set stock=32 where id=1; 
update product set stock=22 where id=2; 
update product set stock=12 where id=3; 
update product set stock=42 where id=4;

--- 06-08-2023 15:47:17
--- SQLite.1
SELECT * from product;

--- 06-08-2023 16:01:46
--- SQLite.5
create table orders (
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  product_id INT,
  PRIMARY KEY (id),
  FOREIGN key (customer_id) REFERENCES customer(id),
  FOREIGN key (product_id) REFERENCES product (id)
  );

--- 06-08-2023 16:02:07
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'orders' AND type LIKE 'table';

--- 06-08-2023 16:02:44
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'product' AND type LIKE 'table';

--- 06-08-2023 16:11:12
--- SQLite.6
CREATE table customer (
  id INT Not NULL,
  first_name TEXT,
  last_name TEXT,
  address TEXT
  );

--- 06-08-2023 16:16:39
--- SQLite.7
insert into customer VALUES 
(1,"Ankit","Kumar","Visakhaptnam"),
(2,"Rajesh","Sharma","Patna"),
(3,"Abhishek","Kumara","Mumbai"),
(4,"Hariansh","Singh","Amritsar");

--- 06-08-2023 16:16:59
--- SQLite.8
SELECT * from customer;

--- 06-08-2023 16:17:08
--- SQLite.8
SELECT * from product;

--- 06-08-2023 16:17:20
--- SQLite.8
SELECT * from customer;

--- 06-08-2023 16:17:42
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'product' AND type LIKE 'table';

--- 06-08-2023 16:19:00
--- SQLite.9
SELECT * from product;

--- 06-08-2023 16:19:19
--- SQLite.9
DROP TABLE demo;

--- 06-08-2023 16:21:19
--- SQLite.9
SELECT * from product;

--- 06-08-2023 16:23:14
--- SQLite.10
INSERT INTO orders VALUES
(1,4632,2,1);

--- 06-08-2023 16:23:27
--- SQLite.9
SELECT * from orders;

--- 06-08-2023 16:43:56
--- SQLite.11
/***** ERROR ******
no such column: customer.customer_id
 ----- 
select orders.order_number,customer.first_name,customer.last_name,customer.address
from orders
INNER join customer on orders.customer_id = customer.customer_id;
*****/

--- 06-08-2023 16:44:23
--- SQLite.9
SELECT * from orders;

--- 06-08-2023 16:44:36
--- SQLite.9
SELECT * from customer;

--- 06-08-2023 16:46:33
--- SQLite.11
select orders.order_number,customer.first_name,customer.last_name,customer.address
from orders
INNER join customer on orders.customer_id = customer.id;

--- 06-08-2023 23:54:18
--- SQLite.9
SELECT * from product;

--- 06-08-2023 23:56:43
--- SQLite.12
SELECT orders.order_number,product.name,product.price,product.stock
from orders 
inner join product on orders.product_id = product.id;

