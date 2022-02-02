// MySQL Local Environment Setup
// https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04?__cf_chl_managed_tk__=Qy.tsA4XLND1YC1scnPyId9hHP1vSBV2IIg9cAkAC5g-1643620209-0-gaNycGzNDlE


/*
SQL I:
"data analysis" means making use of statistics and other data 
stored in what are known as databases.

A database is a tool for storing strings (sequence of characters) 
and numbers. For example, "posts" on social networking 

Databases manage data in tables. The vertical data are known 
as columns, and the horizontal data are known as rows. 

take note of these two questions:
・What kind of columns are there?
・What kind of data is being saved?

To retrieve data from the database, we need to learn how 
to communicate with it by sending queries. SQL is the 
language for writing queries!

U send QUERY to retrieve DATA

In SQL, we use SELECT to get data from a database. 
Select statements are used to choose which column 
you want to get data from.

Usually, there are several different tables in a database. For 
this reason, we must use a FROM clause to choose which 
table to get columns from, along with a SELECT statement.
eg;
SELECT name
FROM purchases;


Selecting Multiple Columns:
When you want to get data from multiple columns, you can use
a comma to separate each column name as shown below.

SELECT name, price

When you want to get data from all columns in a table, 
you can use the asterisk * symbol.
SELECT * FROM purchases;


Getting Specific Rows:
To get specific rows, you can use the SQL keyword WHERE. 
We already know how to say which columns from which table 
we want to get rows, but with WHERE we can specifically 
say which rows to get.

SELECT * 
FROM purchases
WHERE category = 'food';


Multiple Columns with Conditions:
There are rules for storing data in databases known as data 
types. These are used to express different types of data like 
text data, numbers data, and even date data.

Comparison Operators:
In addition to the equal = sign, other comparison operators, 
such as symbol for greater or lesser than, can also be used 
in the WHERE condition 


The LIKE opertor:
When you want to get all rows that contain some specific 
characters, you can use the LIKE operator. You can make 
a condition to get "rows that contain some string" for 
a specific column.

Wildcards:
In order to use the LIKE operator, you'll need to also learn 
about wildcards. In the programming world, "wildcard" 
means a symbol that matches any string. The LIKE operator 
treats the % symbol as a wildcard, so you can use the % 
symbol to get all rows that contain 4 e.g "pudding" from 
the specified column:

SELECT * 
FROM purchases
WHERE name LIKE '%pudding%';


Prefix Search: Start with 'a particular word'
You can use wildcards at the start and end of a string. 
"pudding%" will allow you to search for any values that 
start with "pudding", followed by any string. This kind 
of search is known as prefix search.

SELECT *
FROM purchases
WHERE name LIKE "pudding%";


Postfix Search: End with a 'particular word
You can also search for values that end with some specific string, 
like "%pudding" for example. All values that end with the string 
"pudding" will be found. This is known as postfix search.

SELECT *
FROM purchases
WHERE name LIKE "%pudding";


NOT: The NOT Operator
By placing NOT in front of the operators we've learned so 
far, we can retrieve rows that doesn't satisfy the condition.

SELECT *
FROM purchases
WHERE NOT price > 10;

SELECT *
FROM purchases
WHERE NOT name LIKE "%pudding%";


IS NULL & IS NOT NULL :
when the database cannot recognize a value or when it 
does not know there is one, it is called "NULL". For 
instance, when no data is stored, that is considered NULL.
In order to select rows that contain a NULL value for 
certain columns, we can use IS NULL

SELECT *
FROM purchases
WHERE price IS NULL;

Getting Rows without NULL Values:
If we want to get rows where the value for certain 
columns are not NULL, we can use IS NOT NULL.

SELECT *
FROM purchases
WHERE price IS NOT NULL;

About Comparing Values with NULL:
When you want to get rows where a certain column 
is or isn't NULL, note that you can't use the = operator. 
So, be careful to avoid making this mistake

SELECT *
FROM purchases
WHERE price = NULL;

The AND Operator:
If you use the AND operator, you can put multiple conditions 
in a WHERE clause. Using the structure WHERE condition1 
AND condition2, you can search for only rows that are true 
for both conditions.

SELECT *
FROM purchases
WHERE character_name = "Master Wooly"
AND category = "food";

The OR Operator:
the OR operator can be used to make SQL statements 
with multiple conditions. Using the structure WHERE 
condition1 OR condition2, you can search for rows 
that meet either one of the conditions or both.

SELECT *
FROM purchases
WHERE character_name = "Master Wooly"
OR character_name = "Ken the Ninja";

ORDER BY:
To put rows in order, you can use ORDER BY in SQL. 
You can also choose a specific column to order the rows by, 
You must also specify how the rows should be ordered at the end.

e,g: ORDER BY column_name order_method;

Ascending & Descending Order:
ORDER BY requires a method for ordering, either "ascending" 
or "descending". In SQL, ascending is written as ASC which 
puts the smallest values first, and descending is written as DESC 
which puts the largest values first.

ASC(ascending): 1, 2, 3 ...100
DESC(descending): 100 ... 3, 2, 1

By putting ORDER BY at the end of an SQL statement, the 
results can be put neatly in order:

SELECT *
FROM purchases
ORDER BY price DESC;

Since ORDER BY is used at the end of an SQL statement, it can 
be used in combination with a WHERE clause

SELECT *
FROM purchases
WHERE condition
ORDER BY price ASC;

LIMIT:
You can set a maximum number of results by using SQL LIMIT

LIMIT number_of_rows;


SELECT *
FROM purchases
LIMIT 5;

LIMIT can be used in combination with a WHERE clause, 
just as with ORDER BY.

SELECT *
FROM purchases
WHERE condition
LIMIT 5;




#Progate @progateEN @dev_careers #dev_careers
*/
