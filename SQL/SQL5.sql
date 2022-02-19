/* 
SQL Data Processing
In this lesson, rather than retrieving more data, we'll 
learn the syntax used to add, update, and delete data.
These data processing methods are used in all web 
services such as online stores and social media.

Adding Data
INSERT:
The INSERT statement is used when entering a new record into a table.

INSERT INTO students (id, name, course) VALUES (4, "Kate", "Java");

AUTO INCREMENT
In most cases, the id column uses the AUTO_INCREMENT feature. 
When a new record is inserted into a table, AUTO_INCREMENT 
allows unique values to be automatically generated.

d column with AUTO_INCREMENT  can be left out

INSERT INTO students (name, course) VALUES ("Kate", "Java");




When You've Entered the Wrong Data...
UPDATE
The UPDATE statement is used when you want to update data.
When you want to update the data in multiple columns, a comma , is used to separate each column.

UPDATE students SET name = "Jordan", course="HTML" WHERE id = 6;

name = "Jordan", course="HTML" : update d value of d specified column

WHERE id = 6: using WHERE specify d record to be updated

Important Point for UPDATE
If you don't specify the record to be updated using the WHERE clause, 
all of the data in the column will be updated.

UPDATE students SET name = "Jordan", course="HTML"

Before Running UPDATE
After running the UPDATE statement, the data can't be reverted. 
Make it a habit to run SELECT once to check the data to be 
manipulated before execution.

SELECT * FROM students;







#Progate @progateEN @dev_careers #dev_careers

*/