This article talks about the below 3 operations on SQL.
Adding a column
Changing a column
Dropping a column


Creating a Database
Let's create a database named shop_app.
CREATE DATABASE shop_app;

Let's check if the shop_app database has been successfully created.
SHOW DATABASES;

Let's now select the database to use.
USE shop_app;

Creating a Table
Since we have successfully created and selected the shop_app 
database to use, we shall now create the items table.


Since we have successfully created and selected the shop_app database 
to use, we shall now create the items table.
CREATE TABLE items(id INT AUTO_INCREMENT, 
name TEXT, price INT, category TEXT, PRIMARY KEY(id));

Let's check if the items table has been successfully created.
SHOW TABLES;

Inserting the Data
Last, let's insert 3 items into the items table. Execute the 3 queries below.
INSERT INTO items(name, price, category) VALUES ('Carrot', 60, 'Vegetables');
INSERT INTO items(name, price, category) VALUES ('Banana', 200, 'Fruits');
INSERT INTO items(name, price, category) VALUES ('Milk', 120, 'Drinks');

Let's check if the items have been successfully inserted.
SELECT * FROM items;