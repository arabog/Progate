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

JOIN:







#Progate @progateEN @dev_careers #dev_careers
*/
