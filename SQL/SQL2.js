/*
Processing Results:
Processing Results means not only get data, but 
also perform calculations and produce new data. 

There is a way to omit the duplicate rows of a column.

DISTINCT: Removes dublicate
By using DISTINCT you can exclude duplicate rows of 
data from your search results. You can specify the name 
of a column to get only unique rows, omitting duplicates. 
To do this, use the following syntax: 
DISTINCT(column_name)

you can use DISTINCT in a SELECT statement to omit 
duplicate rows. e.g:

SELECT DISTINCT(name)
FROM purchases;

SELECT DISTINCT(character_name)
FROM purchases;


Using Arithmetic Operators:
In SQL, arithmetic operators are used for doing 
calculations like multiplication or division.

Using these operators you can perform calculations 
on the rows of a specified column. e.g

column_name - 10: subtract 10 from d row of 
a specified column

Similar to using DISTINCT, arithmetic operators can 
be used after the SELECT keyword in SQL statements 
to get the resulting values of a calculation.

SELECT name, price, price * 1.09
FROM purchases;

Using Functions:
Data found with WHERE ----> Aggregate Fxn -----> Aggregate results

Aggregate functions: allow us to collect data such as totals and 
averages of number data saved in the database.

Collecting Total Amount of Money:
SUM:
To calculate the sum of numbers in SQL, use the SUM function. 
With the syntax SUM(column_name), it's possible to calculate 
the total of all the values in the specified column.

SUM(column_name)

The SUM function is used after SELECT to get an aggregated result.

SELECT SUM(price)
FROM purchases;


Combining WHERE & SUM:
The SUM function can also be used in combination with WHERE.

SELECT SUM(price)
FROM purchases
WHERE character_name = "Ken the Ninja";


Calculating Averages:
To calculate the average of numbers in SQL, you can use AVG. 
Using the syntax AVG(column_name) you can calculate the 
average value of a specified column.

AVG(column_name)

The AVG function can be used after SELECT to calculate 
the average of the rows for a specific column.

SELECT AVG(price)
FROM purchases;

Combining WHERE & AVG:
The AVG function can also be used in combination 
with the WHERE statement. 

SELECT AVG(price)
FROM purchases
WHERE character_name = "Ken the Ninja";


COUNT: Counting the Number of Rows:
we can use aggregate functions to count the number of rows too.
By simply counting the total number of rows stored in the 
purchases table, you can determine the number of times 
an item was bought.

COUNTCOUNT(column_name)

e.g:
SELECT COUNT(name)
FROM purchases;


The COUNT function calculates the total number of rows of 
a specified column. This is done by using the syntax 
COUNT(column_name)

COUNT and NULL:
When using COUNT with a specific column, the number 
of rows counted doesn't include rows with a null value. 

Using COUNT:
If you want to include rows with null values when counting 
the number of rows, you need to use * (all columns) with 
the COUNT function. When * is used, it calculates the 
total number of rows, rather than the number of data in 
a particular column. In this way, you can count the 
number of rows, including the number of null data.

SELECT COUNT(*)
FROM purchases;

WHERE & COUNT:
The COUNT function can be used in combination with WHERE as well.

SELECT COUNT(*)
FROM purchases;
WHERE character_name = "Ken the Ninja";


Finding Maximum and Minimum:



#Progate @progateEN @dev_careers #dev_careers
*/
