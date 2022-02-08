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


Q3:


Q4:


Q5:


Q6:


Q7:


Q8:


Q9:


Q10:


Q11:



#Progate @progateEN @dev_careers #dev_careers

*/