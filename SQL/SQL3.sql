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
SELECT name,goals
FROM players
WHERE goals > (
          SELECT AVG(goals)
          FROM players
);


#Progate @progateEN @dev_careers #dev_careers
*/
