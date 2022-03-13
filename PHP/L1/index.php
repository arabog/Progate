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

-->
<?php
          // This is a comment
          echo "Hello";

          echo "Learn PHP!";
?>