<!-- 
Let's Learn PHP
We're going to make a contact form in this lesson

-: What is PHP?
Using only HTML, there are limitations to how we 
control what is displayed. Using PHP, you can change 
the text to be displayed according to the audience and 
situation.

How to Write PHP
PHP code can be embedded within HTML. Using the 
special PHP tag, you can write instructions <?php ... ?>. 
The code written in <?php ... ?> will be converted into 
HTML and displayed.

<html>
          <head>
                    <body>
                              <h1>PHP</h1>

                              <?php echo "<h2> Beginner </h2>"; ?>
                    </body>
          </head>
</html>

PHP Syntax
Semicolons ; are used to separate statements in PHP. It 
will cause an error if there is a missing semicolon, so 
be careful! Also, lines that start with // are called 
comments and aren't executed. Comments won't affect 
your code, but they're useful for documenting and 
making notes.

<?php
          // This is a comment
          echo "Hello";

          echo "Learn PHP!";
?>

String Output
You can use echo to print a series of characters called 
a string. Put strings in single quote ' or double quotes " 
to print them.

Arithmetic
Calculations are what computers do best! In programming, 
you can also do calculations with symbols known as arithmetic 
operators. The symbols used for calculations in PHP are as 
follows: + (addition), - (subtraction), * (multiplication), and 
/ (division). You can also calculate the remainder after division 
with the % symbol.

echo 7 + 3          //10
echo 3 * 6          //18
echo 5 % 2          //1


-: Data Types
There are different types of data used in PHP like numbers 
and characters. Text data like 'Kid' or 'A' are called strings 
and numbers like 42 or 3.1415 are numeric data types.

Comparing Strings and Numerics
As you can see below, 5 + 2 becomes 7 when printed as a 
numeric value. But, if you put it in single or double quotes, 
the value will be interpreted as the literal string '5 + 2'.

<?php
          echo 5 + 2          //7

          echo "5 + 2"        // 5 + 2 
?>


-: Variables
What are Variables?
Now let's learn about a very important programming concept 
called a variable. A variable is like a box to store data. We 
define variable by adding the $ symbol at the beginning. 
All types of data can be stored using the syntax 
$variableName = value;. In the programming world, = 
means to assign the value on the right to what's on the left.

<?php
          $name = "Bob";

          echo $name;

?>

The Role of Variables
There are 2 major benefits to using variables: 
(1) you can give a name to a piece of data to 
describe it; and 
(2) you can update the value of a variable in just 
one place even if it's used many times in your code.

How to Name Variables
There are a few rules and conventions you need to 
follow when declaring variables. You can't use numbers 
at the beginning of a variable name. Also, it's important 
to choose a variable name that clearly describes what 
kind of data the variable contains. We should also be 
consistent in writing the variable names.

$date
$user_name
$userName



-->