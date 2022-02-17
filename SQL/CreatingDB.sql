1. Creating a Database
sudo mysql 
or
mysql -u root -p

mysql --user=root --password
sudo mysql --Arabog=root --Aduke2022$=

To display the list of existing databases, we will use the SHOW command. 
Please run the following query: SHOW databases;

*Don't forget to place a semicolon ( ; ) at the end of the query. 

When creating a database, the CREATE DATABASE statement is used.
CREATE DATABASE progate;

2. Selecting the Database
First, let's use the following command to choose the database where you 
would like to create a table in. (We will use progate here).
USE progate;

*Without specifying the database, we cannot create a table, so make 
sure to complete this step.

Once you have selected the database, let's take a look at the list of tables that already exist. Run the following command to do so.
SHOW tables;

Creating a Table
Now using the command CREATE TABLE, let's create a table titled users. Please run the following query:
CREATE TABLE users (          //users specify d name of d table created
          `id` int auto_increment,      <!--specify d column name, data type & option, respectively -->
          `name` text, 
          primary key (id));  //specify d id column s d pry key

This is the basic syntax used for creating a table. Details such as the column name, data type, and the options you want to add to the columns will differ depending on your purpose.

Using the DESCRIBE statement, which is used to display table structures, let's check that the table has been created correctly.
DESCRIBE users;


3. Primary Key
In this section we will explain the role of a primary key, which was set on the id column when creating the users table.
A primary key is a constraint placed on a database table column to uniquely identify a record, and duplicated values cannot be placed in the set column.
For example, if the value "1" already exists in the primary key id column, you will not be able to place the same value of "1" in the newly inserted record.
Just like in the users table, by setting AUTO_INCREMENT on the id column and defining the id column as the primary key, a unique value will be generated automatically without you having to manually enter the data.

4. Operational Testing of the Table
Now, let's try inserting and retrieving data from the created table.
Please run the following query in the same order:
Retrieving (Confirmation before inserting data)
SELECT * FROM users;

Inserting
INSERT INTO users(`name`) VALUES ('Ken the Ninja');

Retrieving
SELECT * FROM users;

5. Deleting the Created Database and Table
Lastly, in this section we will introduce how to delete databases and tables.
Keep in mind that this execution cannot be undone, and therefore you should proceed with caution.

Deleting the Table
First, let's run the following query to check the existing tables within the database.
SHOW tables;

Next, let's specify the table and delete it. (The users table in this case).
DROP TABLE users;

Deleting the Database
Let's run the following query to check the database:
SHOW databases;

Make sure that you do not accidentally delete the four databases that were created during the installation process (mysql, sys, information_schema, performance_schema).
DROP DATABASE progate;




DEbug:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
Ans: mysql -u root -p

 ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Aduke2022$=';

 FLUSH PRIVILEGES;

 Full Steps For MySQL 8
Connect to MySQL
$ mysql -u root -p
Enter password: (enter your root password)

Reset your password
(Replace your_new_password with the password you want to use)

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_new_password';
mysql> FLUSH PRIVILEGES;
mysql> quit