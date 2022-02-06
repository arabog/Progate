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
          WHERE name = "Will"           goals Will scored
);

ds is d same as writing dse 2 statemt:

SELECT goals
FROM players
WHERE name = "Will";

SELECT name
FROM players
WHERE goals > 14;









#Progate @progateEN @dev_careers #dev_careers
*/
