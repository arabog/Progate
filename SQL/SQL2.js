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

COUNT(column_name)

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
MAX & MIN:
With the MAX function in SQL, you can get the maximum 
value from the rows of the specific column. Likewise, by 
using the MIN function, the minimum value can be 
retrieved.

MAX(column_name)
MIN(column_name)

Just as with other aggregate functions, MAX and MIN 
can be used after SELECT. By specifying the price 
column, you can get the item with the highest price 
of all the rows.

SELECT MAX(price)
FROM purchases;

Combining WHERE with MAX-MIN:
SELECT MAX(price)
FROM purchases
WHERE character_name = "Ken the Ninja";


GROUPING ROWS:
GROUP BY:
For instance, applying aggregate functions to rows 
with the same date is referred to as grouping. 

GROUP BY column_name

With GROUP BY you can put rows into groups. 
For example, using the syntax GROUP BY column_name, 
rows with exactly the same values will be put in a group 
for the specified column.


Grouping & Aggregating:
To use grouping with aggregated data, you can add 
GROUP BY column_name to the end of an SQL 
statement that uses any of the aggregate functions 
we've learned in this lesson. This will apply the 
aggregate function for the rows in each group.

SELECT SUM(price)
FROM purchases
GROUP BY purchased_at;

A Note About GROUP BY:
When GROUP BY is used, only the column name 
specified in GROUP BY and the aggregate function 
can be used in SELECT:

CORRECT: i.e selecting both price & purchased_at columns
SELECT SUM(price), purchased_at
FROM purchases
GROUP BY purchased_at;

WRONG:
SELECT price, purchased_at
FROM purchases
GROUP BY purchased_at;

E.g:
In this exercise, we'll use GROUP BY to determine 
the purchase totals according to their purchased 
dates.

Select the total of the price column using the SUM 
function also select the purchased_at column.

Use GROUP BY to group the rows by the purchased_at column.

SELECT COUNT(price), purchased_at
FROM purchases
GROUP BY purchased_at
;

Grouping Results with Multiple Columns:
For example, you can group the result of the total 
price spent by each character by the purchase date

How to Use GROUP BY with Multiple Columns:
You can use GROUP BY with multiple columns by 
listing multiple column names and separating them 
with comma.

GROUP BY column1, column2,

SELECT SUM(price), purchased_at, character_name
FROM purchases
GROUP BY purchased_at, character_name;

Results of Using GROUP BY with Multiple Columns:
Using aggregate functions on specific groups are more 
effective than using them on results with no grouping. 


Grouping by Precise Conditions:
WHERE & GROUP BY:
GROUP BY can also be used with a WHERE clause. 
To do this, it should come after the WHERE in the SQL 
statement. These functions come in an order: 
WHERE comes first, then GROUP BY, and then 
aggregate functions.

SELECT aggregate_fxn
FROM table_name
WHERE condition
GROUP BY column1, column2;

The Order for Using WHERE and GROUP BY:
To get the total amount of money spent on food for 
each purchase date and character name, the order 
of operations is: 
① Find rows with the category "food" in WHERE, 
② Group them by purchased_at and character_name, and 
③ Aggregate them using the aggregate function.

SELECT SUM(price), purchsed_at, character_name
FROM purchases
WHERE category = "food"
GROUP BY purchsed_at, character_name;

QUE:
Select the total of the price column and get 
the rows from the purchased_at column.
Use WHERE to aggregate rows where the 
character_name column is Ken the Ninja
Use GROUP BY to group the rows by the 
total of the price and purchased_at columns.

SOLN:
SELECT SUM(price), purchased_at
FROM purchases
WHERE character_name = "Ken the Ninja"
GROUP BY purchased_at;

HAVING: Narrowing Down Grouped Data




#Progate @progateEN @dev_careers #dev_careers
*/
