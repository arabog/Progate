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

INSERT INTO articles(title, summary, content, category) VALUES ('Mouse That Connects to a Computer', "Have you ever heard that every computer has a mouse on it? Actually, this story is true!", "Have you ever heard that every computer has a mouse on it? Actually, this story is true!", 'all');


Let's check if the items have been successfully inserted.
SELECT * FROM items;

2. Let's Add a Column
Let's Look at the Steps to Add a Column
Check the target table
Add the new column
Check the target table again after adding the column

Checking the Target Table
Before we add the new column, let's double-check the data in the current table.
SELECT * FROM items;

Adding the New Column
Let's add the new column.
As stock numbers should be a whole number, we are going to set the column 
data type as INT.

ALTER TABLE items ADD COLUMN stock INT;
ALTER TABLE users ADD COLUMN username  TEXT;

NULL is shown for values in the stock as the stock numbers are currently not defined.
We use the UPDATE query to set the actual data. Let's update the stock of the item 
with the id 1 to 100.
UPDATE items SET stock = 100 WHERE id = 1;
UPDATE users SET username = "HUGB" WHERE id = 2;


3. Let's Change a Column
Let's Look at the Steps to Change a Column Name
Check the target table
Check the data type of the column to change
Change the column name
Check the target table again after changing the column name

Checking the Data Type of the Column to Change:
When changing the column name, the data type of the column 
needs to be provided. Let's check the data type of the price 
column.

DESCRIBE items;

Changing the Column Name
After knowing the data type, let's change the name of the price column into cost.
ALTER TABLE items CHANGE COLUMN price cost INT;


4. Let's Drop a Column
Let's Look at the Steps to Drop a Column
Check the target table        //SELECT * FROM items;
Drop the target column
Check the target table again after dropping the column

Dropping the Target Column:
ALTER TABLE items DROP COLUMN category;

5. What to Check for When There Are Problems
If you are unable to successfully perform the various column operations, 
please check on the following.
The code specified in the article has not been run
Misspellings in the entered file name, source code, etc.
The command run in the terminal is being run in a different location




