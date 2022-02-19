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

What to Do With Unnecessary Data
DELETE
The DELETE statement is used to delete records. As with UPDATE, 
records can't be reverted after query execution, so let's check the 
records with SELECT before deleting them.

DELETE FROM students WHERE id = 7;

using WHERE specify d record to be deleted

Important Point for DELETE
If you don't specify the record to be deleted using WHERE, all of the 
records within the table will be deleted.

DELETE FROM students ;


Using DELETE, let's delete the unnecessary records.
DELETE FROM students WHERE id = 7;

-- Don't delete the following query
SELECT * FROM students WHERE id=7;

#Progate @progateEN @dev_careers #dev_careers


The Four Statements
Let's review the four statements we learned in this lesson. 
When executing the UPDATE and DELETE statements, 
you must always use WHERE to specify the record that 
you'll be processing.



GET DATA:
          SELECT columnA, columnB
          FROM table_name; 



INSERT DATA:
          INSERT  INTO table_name(columnA, columnB)
          VALUES (value1, value2); 


UPDATE DATA:
          UPDATE table_name 
          SET columnA = value1, columnB = value2
          WHERE condition;    // alw specify


DELETE DATA:
          DELETE FROM table_name 
          WHERE condition;    // alw specify


-- Add a new record to the students table, where the name is Katy and the course is HTML
INSERT INTO students(name, course) VALUES ("Katy", "HTML");

-- Within the students table, update the name to Juliet and the course to Ruby, for the record that has the id 6
UPDATE students SET name = "Juliet", course = "Ruby" WHERE id = 6;

-- Within the students table, delete the record with the id 2
DELETE FROM students WHERE id = 2;

-- Do not delete the following query
SELECT * FROM students;





*/