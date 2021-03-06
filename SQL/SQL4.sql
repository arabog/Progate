/*
The Site's Database:
In the database, there are three tables. A users table for user 
data, an items table for product data, and a sales_records 
table that stores all users and the time for every purchase made.

The Database Content:
Pay attention to the data types and foreign keys of each of 
the columns while completing the exercise.

In the gender column, 0 is stored if the user is male, and 1 
if the user is female.

Q1:User Data
Get the average age of all users.
SELECT AVG(age)
FROM users;


Select all columns for users whose gender 
are male and are younger than 20 years old.
SELECT *
FROM users
WHERE users.gender = 0 
AND users.age < 20;


Group all users by age and get the following:
・The age
・Number of users per age
SELECT age, COUNT(age) AS "COUNT(*)"
FROM users
GROUP BY age;


Q2: Product Analysis:
In the gender column, 0 is stored for male products, 
1 for female products, and 2 for unisex products.

Select the name column of all products from the 
items table without duplicate rows.

SELECT DISTINCT(name)
FROM items;

Select the name and price columns of every product 
and sort them in descending order by price.

SELECT name, price
FROM items
ORDER BY price DESC;

Select all rows that contain the string shirt
in the name column of the items table.

SELECT *
FROM items
WHERE name LIKE "%shirt%";


Q3: Calculating Profit Per Item
SELECT name, price - cost
FROM items;

Aggregate functions like MAX, MIN, SUM, and AVG 
can be combined with the four arithmetic operators
SELECT AVG(price - cost)
FROM items;

ORDER BY & Arithmetic Operators:
SELECT name, price - cost
FROM items
ORDER BY price - cost DESC;

Select the name, price and profit columns of all 
products from the items table.

SELECT name, price, price - cost AS "profit"
FROM items;

Get the average profit value for all products.
SELECT AVG(price - cost)
FROM items;


Select the name column and profit of the 
top 5 products with the highest profit.

SELECT name, price - cost
FROM items
ORDER BY price - cost DESC
LIMIT 5; 


Q4: 
Select the name and price columns of products from the items
table where the price is higher than the item grey hoodie

SELECT name, price
FROM items
WHERE price > (
          SELECT price
          FROM items
          WHERE name = "grey hoodie"
);

Select the name column and the profit of products wc price 
is less than or equal to 70 and the profit is higher than the 
grey hoodie

SELECT name, price - cost
FROM items
WHERE price <= 70 AND price - cost > (
          SELECT price-cost
          FROM items
          WHERE name = "grey hoodie"
);

Q5: Analyzing Sales Records
For each item, get the following data from the 
sales_record table:
・Product ID (item_id)
・Number of units sold

SELECT item_id, COUNT(item_id)
FROM sales_records
GROUP BY item_id;

For the top 5 most-sold items, get the following data 
for each item and order it by descending order by the 
number of units sold:
・Product ID (item_id)
・Number of units sold

SELECT item_id, COUNT(item_id)
FROM sales_records
GROUP BY item_id
ORDER BY COUNT(item_id) DESC
LIMIT 5;


Q6: Analysis with Combined Tables
For the top 5 most sold products, get the following data:
・Product id
・Product name
・Number of units sold
Also, the results should be in descending order by the number 
of units sold.

SELECT items.id, items.name, COUNT(*)
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name
ORDER BY COUNT(*) DESC
LIMIT 5;


Get the following data for the entire site's sales history:
・Total sales (the sum of the prices of all products)
・Total profit (the sum of all profit values)
Use AS to label the results total sales and total profit
.
SELECT SUM(items.price) AS "total sales", SUM(items.price - items.cost) AS "total profit"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id;


Q7:
Next, do an analysis of the daily sales by calculating the number 
of items sold each day.

Group the results by the date and get the following data, while also 
sorting the date in ascending order:
・Date purchased
・Number sold per day
Also, add the label sales to the "items sold" results.

SELECT purchased_at, COUNT(purchased_at) AS "sales"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at
ORDER BY purchased_at ASC;

Group the results by the date and get the following data, while also 
sorting the date in ascending order:
・Date purchased
・The total sales for that date
Also, label the results total sales

SELECT purchased_at, SUM(items.price) AS "total sales"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at
ORDER BY purchased_at ASC;

Q8: Complex User Data Analysis:
In this exercise, you'll combine the sales_records and 
users tables to do a more advanced analysis.

For users who purchased 10 items or more, get the 
following data:
・User ID
・Name of the user
・Number of units purchased
Use the label number for the results displaying the 
number of units purchased.

SELECT users.id, users.name, count(*) AS "number"
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
GROUP BY users.id, users.name
HAVING count(*) >= 10;

For unique users who purchased the product 
sandals, get the following data:
・ID
・Name

SELECT users.id, users.name
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
WHERE sales_records.item_id = (
          SELECT id
          FROM items
          WHERE name = "sandals"
)
GROUP BY users.id;

Q9: Complex Product Data Analysis
For men's, women's, and gender-neutral products, get the following data:
・Gender (0, 1, 2)
・Sales total
Also, use the label  sales total for the sales total.

SELECT items.gender, SUM(items.price) AS "sales total"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.gender;


For the top 5 products with the highest sales, organize the following data in descending order by the number of sales:
・Product ID
・Product name
・Sales total
Use the label sales total for the sales total.
Note: Calculate the sales total as price × number of items.

SELECT items.id, items.name, items.price * COUNT(*) AS "sales total"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name, items.price
ORDER BY COUNT(*) * items.price DESC
LIMIT 5;


For products with a higher sales value than the item "grey hoodie", get the following data:
・Product ID
・Product name
・Sales total
Again, use the label sales total for the sales total.

SELECT items.id, items.name, items.price * COUNT(*) AS "sales total"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name, items.price
HAVING (COUNT(*) * items.price) > (
          SELECT COUNT(*) * items.price
          FROM sales_records
          JOIN items
          ON sales_records.item_id = items.id
          WHERE items.name = "grey hoodie"
);


#Progate @progateEN @dev_careers #dev_careers #needalaptop

*/