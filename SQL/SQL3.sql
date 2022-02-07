/*
Subqueries:
In SQL, you can write an SQL statement within another 
statement. This other statement is known as a subquery. 
It's used to retrieve more complex data because it can 
combine two or more SQL statements into one. 

SELECT name
FROM players
WHERE goals > (
                    SELECT goals                    ds gets
                    FROM players                  d number of 
                    WHERE name = "Will"    goals Will scored
);

ds is d same as writing dse 2 statemt:

SELECT goals
FROM players
WHERE name = "Will";

SELECT name
FROM players
WHERE goals > 14;

Subqueries can be used by enclosing them in parenthesis ( ).

Order of Execution:
When an SQL statement includes subqueries, the outer 
SQL statement will be executed after the subqueries

SELECT name
FROM players                                      (2)
WHERE goals > (
                    SELECT goals                    
                    FROM players                  (1)
          WHERE name = "Will"           
);


QUE:
Let's get the names of the players with goals that are greater 
than the average number of goals.

ANS:
SELECT name, goals
FROM players
WHERE goals > (
          SELECT AVG(goals)
          FROM players
);


Making the Data Easier to Read:
Using AS:
By using AS, you can create temporary labels for column  
names and tables. To do this, use the syntax: column_name  
AS "New Name". This will display the column column_name 
as New Name

SELECT goals AS "Will's Goals"
FROM players
WHERE name = "Will";

QUE:
Now let's use AS and get a total of goals scored for the whole team.

ANS:
SELECT SUM(goals) AS "total team score"
FROM players;

Combining Tables:
To use the tables together, we must add two columns known 
as a foreign key and a primary key. Since there is already 
a primary key in the countries table which is the id 
column, we must simply add a foreign key named 
country_id to the players table.

Rows are connected where the foreign key is equal to the primary key!

How Tables Are Connected:
In SQL, we use foreign keys and primary keys to connect tables. 
By specifying a primary key in another table as a foreign key, 
you can connect the tables together.

Benefits of Connecting Tables:
Combining two tables has various advantages over combining 
columns. One advantage is that it makes managing data easier.

QUE:
Use the combined table to get total goals 
for each country in this lesson.

SELECT SUM(goals), country_id
FROM players
GROUP BY country_id;


JOIN:
JOIN is used to combine multiple tables into one. 
Conditions for a join are specified with ON. You can 
then get data from the resulting table just as you would 
with a single table.

SELECT *
FROM table_a
JOIN table_b
ON condition;

Join Conditions:
To write a join condition, use the syntax: 
ON table_a.column_name = table_b.column_name.

SELECT *
FROM table_a
JOIN table_b
ON players.country_id = countries.id;

Order of Execution for JOIN:
When an SQL statement contains a JOIN clause, the JOIN 
is performed first. Next, the SELECT is performed on the 
joined table.

SELECT *                                                      (2)

FROM table_a                                               (1)
JOIN table_b                                                 (1)
ON players.country_id = countries.id;         (1)


QUE:
Using JOIN, combine the countries table to the players table. 
sing ON, associate  country_id of the players table with 
id of the countries table.

SOLN:
SELECT *
FROM players

-- Add the table name after the JOIN to combine the table 
JOIN countries

-- Add a join condition
ON players.country_id = countries.id;


Getting Data with JOIN: 
Specifying Columns with Multiple Tables:
If the same column name exists in more than one table, 
it must be specified like so: table_name.column_name.

SELECT players.name, countries.name
FROM players
JOIN countries
ON players.country_id = countries.id;

The syntax table_name.column_name can also be used 
in a WHERE clause. When dealing with multiple tables, 
it's important to remember that the same column name 
may exist in different tables

SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
WHERE  players.name = "Will";

Overall Order of Execution:
Let's check the overall order in which the various SQL 
statement parts will be performed. Note that FROM and 
JOIN are performed first because the table must be 
constructed before SQL searches can be performed.


Specified Table:              FROM

Combining:                    ON, JOIN       

Conditions:                   WHERE

Grouping:                     GROUP BY

Functions:                    COUNT, SUM, AVG, MIN

HAVING:                       HAVING

Searching:                    SELECT, DISTINCT

Ordering:                     ORDER BY

LIMIT:                        LIMIT

QUE:
let's try to get data from a specific column in the table created with JOIN.
Select the name column of both the players and countries tables.

ANS:
SELECT players.name, countries.name
FROM players
JOIN countries
ON players.country_id = countries.id;

QUE:
Next, let's get the total number of goals for each country.
Select the name column from the countries table and the sum of 
goals column.

ANS:
SELECT countries.name, SUM(players.goals)
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;

Execution Results When Containing NULL Value:
When using JOIN, the operation is executed based on the table 
specified with FROM. However, rows with a NULL foreign key 
value, won't be displayed in the executed results.

SELECT *
FROM players
JOIN teams
ON players.previous_team_id = teams_id;

Including Results with NULL Values:
It is possible to display rows in which the foreign key 
is NULL in the executed results by using LEFT JOIN.

LEFT JOIN:
Using LEFT JOIN, you can get all the records of the 
table specified in the FROM clause. All rows with a 
NULL foreign key value will also be displayed in 
the executed results as NULL.

SELECT *
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams_id;

Combining Three or More Tables:
JOIN with Multiple Tables:
JOIN can be used multiple times in a single SQL 
statement, and even if you use JOIN multiple times, 
you only need to write FROM once.

SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams_id;

QUE:
In this exercise we're going to use JOIN to combine three tables!

ANS:
SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id;




#Progate @progateEN @dev_careers #dev_careers
*/
