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
characters, you can use the LIKE operator. As shown in 
the image below, you can make a condition to get "rows 
that contain some string" for a specific column.

Wildcards:
In order to use the LIKE operator, you'll need to also learn 
about wildcards. In the programming world, "wildcard" 
means a symbol that matches any string. The LIKE operator 
treats the % symbol as a wildcard, so you can use the % 
symbol to get all rows that contain "pudding" from the 
specified column

SELECT * 
FROM purchases
WHERE name LIKE '%pudding%';


Prefix Search: Start with 'a particular word'
You can use wildcards at the start and end of a string. "pudding%" 
will allow you to search for any values that start with "pudding",
 followed by any string. This kind of search is known as prefix search.

 Use LIKE to get all rows for which the value of the:
name column starts with pudding
column starts with:
SELECT *
FROM purchases
WHERE name LIKE "pudding%";


Postfix Search: End with a 'particular word
You can also search for values that end with some specific string, 
like "%pudding" in the example below. All values that end with 
the string "pudding" will be found. This is known as postfix search.

we'll use a wildcard to do a postfix search: 
SELECT *
FROM purchases
WHERE name LIKE "%pudding";
























#Progate @progateEN @dev_careers #dev_careers
*/
