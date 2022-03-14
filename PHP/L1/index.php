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
special PHP tag, you can write instructions <?php ... ?>
The code written in <?php ... ?> will be converted into 
HTML and displayed.

<html>
          <head>
                    <body>
                              <h1>PHP</h1>

                              <?php 
                                        echo "<h2> Beginner </h2>"; 
                              ?>
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
          echo 'Hello';

          echo 'Learn PHP!';
?>

String Output
You can use echo to print a series of characters called 
a string. Put strings in single quote ' or double quotes " 
to print them.

Arithmetic
Calculations are what computers do best! In programming, 
you can also do calculations with symbols known as arithmetic 
operators. The symbols used for calculations in PHP are as 
follows: + addition, - subtraction, * multiplication, and 
/ division. You can also calculate the remainder after division 
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
          echo 5 + 2;          //7

          echo '5 + 2';       // 5 + 2 
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
          $name = 'Bob';

          echo $name;

?>

The Role of Variables
There are 2 major benefits to using variables: 
1 you can give a name to a piece of data to 
describe it; and 
2 you can update the value of a variable in just 
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

-: Updating Variables
A variable can also be updated to change the value it 
contains. Like in the examples below, when you assign 
another value to the variable, this new value will 
overwrite its original content.

$num = 3;

echo $num;          //3

$num =5;

echo $sum;          //5

Adding Numbers to Variables
What should we do, for instance, when we want to 
add 10 to a variable? To do this, we simply need 
to add the number to the variable and assign that 
result back to the variable. We can do other 
calculations like subtraction in the same way. In 
PHP, note that the = means assign, not an i
ndication that the left and right values are equal.


$x = 1;
$x = $x +10;

echo $x;   //11

In fact, there is a shorter way of writing when adding 
numbers to variables.

$x += 10;

$x += 1; is d same as $x++

$x = 3;
$y = 3;

echo ++$x;          //4 ds means add 1 before running echo

echo $y++           //3 ds means add 1 after running echo

:- String Concatenation
You can concatenate strings using a period .. This is called the dot operator in PHP. There are 3 kinds of string concatenation:
1 a string with a string, 
2 a string variable with a string variable, and 
3 a string with a string variable.

$lesson = "PHP";
echo $lesson . "Beginner";     // PHP Beginner


$level = "Beginner";
echo $lesson . $level;         // PHP Beginner

You can omit the concatenation of a variable and a string using .=.

$name = "Ken";
$name .= "the Ninja";
ds is d same as $name = $name."the Ninja"

echo $name;         // Ken the Ninja

-: Variable Substitution
Within a string that is in double quotes ", you can insert a 
variable by putting the variable name in braces { }. This is 
called variable substitution. If you use single quotes ' instead, 
the variables won't be substituted because it will be interpreted 
as a string even if it's in braces.

$name = 'Ken the Ninja';
echo "Hello, {$name};         // Hello, Ken the Ninja

echo 'Hello, {$name}'; // Hello, {$name};




:- The if Statement
Using an if statement makes it possible to create a conditional 
branch. If you put a condition in () after if, the code between 
the braces { } will be executed only when the condition is true.

<?php
          $x = 20;
          if ($x > 10) {
                    echo '$x is greater than 10';           //ds wil be executed
          }

          if ($x > 30) {
                    echo '$x is greater than 30';           //ds will not be executed
          }
?>

Comparing Numbers
The symbols used to compare two values, like > are known as 
comparison operators. The condition of the comparison is either 
true or false. The most common comparison operators are shown 
below.

x == y
x != y
x < y
x <= y
x > y
x >= y

The if Statement and Boolean Values
The condition of the comparison operator gets replaced with 
a boolean value. Boolean is another data type and there are 
only two boolean values: true and false. The if statement only 
executes the code between the braces { } when the condition is true.

if (true) {
          echo 'The condition is true';
}

<?php
          $x = 20;

          // <!-- true -->
          if ($x > 10) {      
                    echo '$x is greater than 10';           //ds wil be executed
          }

          // <!-- false -->
          if ($x > 30) {
                    echo '$x is greater than 30';           //ds will not be executed
          }
?>

:- else
If you use else in combination with an if statement, you 
can add code for when the condition is false. If the 
matching if statement is false, the code in else is 
executed.

<?php
          $x = 20;

          // <!-- false -->
          if ($x == 30) {      
                    echo '$x is 30';           
          } else { 
                    echo '$x is not 30';           //ds will be executed
          }
?>

elseif
You can use the elseif statement to add alternative 
conditions to the control flow. Samples of alternative 
conditions may be: A will be executed if condition X 
is true; elseif Y is true given that X is false, B will be 
executed; if all conditions are false C will be executed.

<?php
          $x = 20;

          if ($x < 30) {      
                    echo '$x is less than 30';           //ds wil be executed even though elseif is also true
          }elseif ($x >= 20) {
                    echo '$x is greater than 20 or equal to 20';   
          }else { 
                    echo '$x is not 30';           
          }
?>

-: Combining Multiple Conditional Statements
And && and or || are known as logical operators. They 
are used to combine multiple conditions. The result of 
statements with && becomes true only when both left 
and right expressions are true. The result of statements 
with || become true when either or both of the left and 
right expressions are true.

<?php
          $x = 20;

          if ($x > 10 && $x < 30) {      
                    echo '$x is greater than 10 and less than 30';           
          }
          
          if ($x < 10 || $x > 30) {
                    echo '$x is  less than 10 and greater than 30';   
          }
?>

Negating Conditions
An exclamation mark ! is also a logical operator. You can
negate the condition using !. The output becomes false if 
the expression is true, and true if the expression is false.

<?php
          $x = 20;

          if !($x == 30) {      
                    echo '$x is not equl to 30';           
          }
?>

-: switch Statements
The switch statement is another way to control the flow of 
your code to make it easier to read and understand, 
especially when conditional branching gets complicated. 
switch statements usually have many cases. The first case 
that matches the condition value will get executed. When 
there is no match, the default case is executed.

<?php
          switch($coin) {
                    case 0:
                              echo 'Head';
                              break;

                    case 1:
                              echo 'Tail';
                              break

                    default
                              echo 'Error';
                              break;
          }
?>

switch Statements - break
With switch statements, every case needs a break statement 
at the end. This will exit the switch statement when executed. 
Without it, the switch statement will continue on to the next 
case(s) until a break statement is found. So, make sure to 
put one at the end of every case!




-: What are Arrays?
You can store multiple values ​​collectively using an array, 
whereas variables can handle only one value as we learned 
previously. An array is like a box with an inner partition; 
each space contains data, and the name for each space is 
assigned an index number (0, 1, 2 …).

Creating Arrays
The basic syntax for declaring an array is as follows: 
$arrayName = array(value1, value2, …);. An index 
number is designated to each array element in order from 
0 to the last element. To retrieve data from an array, we use 
these index numbers like so: $arrayName[indexNumber].

Adding and Overwriting Values
To add an element to the end of the array, write the 
following: $arrayName[] = value;. You can also overwrite 
a value in an array ​​by specifying an existing index number 
that already exists.

<?php
          $names = array('John', 'Kate', 'Bob');

          $names[] = 'Mary';

          echo $names[3];

          $names[1] = 'Jane';

          echo $names[1];
?>

-: Creating Associative Arrays
Associative arrays allow us to manage a collection of data 
like normal arrays. The difference is that instead of using 
index numbers to manage individual elements, you can 
specify values as keys. Keys can come in the form of strings. 
You can set the key for a value with => as follows: 
arrayName = array('keyName' => 'value1', ...);.

<?php
          $user = array(
                    'name' => 'Ken', 
                    'age' => 14, 
                    'gender' > 'male',
          );

          echo user['name']; 

          user[level] = 'beginner';
?>

-: Loops and Iteration
We use loops to do something repeatedly. For example, say 
you wanted to print numbers from 1 to 100. By using a loop, 
you can reduce long blocks of repetitive code down to just a 
few lines as shown in the example below.

for ($i = 1; $i <= 100; $i++) {
          echo $i;
}

The for Loop
You can iterate (repeat) code using a for loop. In the 
example above, the variable $i is assigned 1 as an initial 
value then echo $i; gets executed. After that, the value of 
$i is updated ($i++) and echo $i; is executed repeatedly 
until the condition($i <= 100) of the loop is no longer 
satisfied.

To print each number on a new line, we can use <br> 
as follows:

echo $i;
echo '<br>';

or

echo $i.'<br>';

-: The while Loop
The while loop allows you to iterate code like the for loop. 
When a condition is specified, the code in the loop gets 
repeatedly executed while it is true. Different from the for 
loop, the increment of the variable, $i++; in this case, has 
to be written in the loop. This is an important difference 
between while loops and for loops.

init d value
$i = 1;     

while ($i <= 100) {
          echo $i;

          $i++;
}

Infinite Loops
If you forget to update the value of the variable used for the 
condition at the end of a while loop, this causes an infinite 
loop as the condition would always be true. Infinite loops 
put a huge load on the computer, so make sure the condition is false at some point in execution.

-: break
The break statement forcibly ends the current loop and is used 
in iterative statements like loops (for, while, foreach, etc). 
break statements are generally used in combination with 
conditional statements like if statements.

for ( $i = 1; $i <= 10; $i++) {
          if($i > 5) {
                    break;
          }

          echo $i;
}


-: continue
While the break statement completely exits the loop, 
the continue statement only skips the current iteration 
but remains in the loop. The continue statement can 
also be used in iterative statements such as for, while, 
foreach, etc.

for ( $i = 1; $i <= 10; $i++) {
          if($i % 3 == 0) {
                    continue;
          }

          echo $i;
}


-: 











-->