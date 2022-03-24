/*
The Fundamentals of Java
In this lesson, we'll learn the fundamentals of programming,
like control flow and iteration.

-: Booleans
First, we'll learn a new data type called boolean. A boolean can 
only be either true or false.

boolean bool = true;

Comparison Operators
Comparison operators compare two values, then return true or 
false. x == y judges whether x and y refer to the same value. 
The result will be true if they do, and false if they don't. Make 
sure not to confuse = (assign) and == (compare).

x == y;
x != y;

Printing Booleans
You can print booleans as well. However, you shouldn't enclose 
true and false in quotes, so be careful! As comparison operators 
return boolean values, they also get printed as true or false.

System.out.println(true);     //true
System.out.println(false);    //false
System.out.println(6 + 2 == 5);         // false
System.out.println(6 + 2 != 5);         //true


Just like math, you can use < and > to compare numbers. 
You can also use greater than and equal to >= and less 
than and equal to <=

System.out.println(8 < 5);
System.out.println(3 >= 2);


-: && (AND)
Logical operators are used to express relations like AND, OR, and NOT.
&& is used to express AND, and it can be used to combine conditions.
For example, condition1 && condition2 will return true only when both 
condition1 and condition2 are true. It will return false if either condition1 
or condition2 is false.

x = 5;
x > 10 && x < 30;             //false

x = 20;
x > 10 && x < 30;             //true

x = 35;
x > 10 && x < 30;             //fale

| | (OR)
|| is used for OR, and it can also be used to combine conditions. For 
instance, condition1 || condition2 will return true if either condition1 
or condition2 returns true. 

x = 5;
x < 10  ||  x > 30;             //true

x = 20;
x < 10  ||  x > 30;             //fale

x = 35;
x < 10  ||  x > 30;             //true




! (NOT)
! is used for NOT, and it can be used to negate a condition. For example, 
the condition !(x >= 30) returns true when x is less than 30 and false 
when x is greater than or equal to 30

x = 20;
x >= 30;            // false
!(x >= 30);         // true

Logical Operators Review
Let's review logical operators using the two simple examples below.
&& results in true only when both values are true while || returns true 
if either one of them is true. 

System.out.println(true && false);      // false
System.out.println(true || false);      // true


-: Control Flow
In daily life, we make decisions based on conditions. A simple example 
would be, "If it's raining, bring an umbrella". In programming, there 
are also times when we want to do different things based on certain 
conditions. This is known as control flow. 

if Statements
The if statement is the most common type of control flow. By putting a 
condition in the () after if, the code inside the { } is only executed when 
the condition is true.

if (condition) {
          // Run this code
}

Booleans, comparison operators (==, <, etc) and logical operators 
(&&, ||, !) are often used in if statement conditions.

int x = 10;

if(x == 10) {
          System.out.println("x is equal to 10");
}

Blocks
{ } in an if statement is called block. Block helps put 
multiple lines of code together. All the lines within a block 
get executed when the condition is true. Note that 
semicolons ; are unnecessary after braces { }.

int x = 20;

if(x < 30) {
          System.out.println("The condition is true");
          System.out.println("x is equal to 10");
}

// Put true as the condition for the if statement
if (true) {
          System.out.println("The condition is true. Printing...");
}

// Put false as the condition for the if statement
if (false) {
          System.out.println("The condition is false. Not printing...");
}

-: else
Using the else statement, you can add some code you want to run 
when the condition of the if statement is false

int x = 20;

if(x < 30) {
          System.out.println("x is less than 30");
} else {
          System.out.println("x is greater than or equal to 30");
}

else if
You can use the else if statement to add alternative conditions to the control flow

int x = 25;

if(x >= 30) {
          System.out.println("x is greater than or equal to 30");
} else if (x > 20) {
          System.out.println("x is greater than  20 but less than 30");
} else {
          System.out.println("x is less than  or equal to 20");
}

When Multiple Conditions Match
You can add as many else if statements as you want. However, keep 
in mind that only the code that returns true first will be executed.


-: switch Statements
The switch statement is another type of control flow. It uses cases, 
and the case that matches the value of the condition gets executed. 
Don't forget to put colons :

switch (value of condition) {
          case value1:
                    run this code;
                    break;

          case value2:
                    run this code;
                    break;

          case value3:
                    run this code;
                    break;

          default:
                    run this code;
}

if Statements and switch Statements
Let's compare switch statements to if statements. The if 
statement adds flow based on conditions, whereas the 
switch statement adds flow based on values. switch 
statements are better for when there are a lot of 
conditions based on values.


if (condition) {
          // Run this code
}

switch (value of condition) {
          case value:
                    run this code;
                    break;
}

break Statements
With switch statements, every case needs a break statement 
at the end. This is crucial because without it, the switch 
statement would not end. Make sure to use it when you do 
not want to run code in the next case!

class Main {
  public static void main(String[] args) {
    int number = 12;
    
    // Create a control flow according to the result of number % 3
    switch (number % 3) {
      case 0:
        System.out.println("Divisible by 3");
        break;
        
      case 1:
        System.out.println("Remainder is 1 when divided by 3");
        break;
        
      case 2:
        System.out.println("Remainder is 2 when divided by 3");
        break;
    }
    
  }
}


-: The default Case
In switch statements, you can set a default case for when none of 
the cases match. It functions similarly to an else in if statements.

switch (value of condition) {
          case value:
                    run this code;
                    break;

          default:
                    System.out.println("Remainder is 2 when divided by 3");
                    break;
}


-: Loops
Loops r also known as iteration.

while Loops
One of the most common types of iteration is the while loop.
while loops are written like the example below. The code inside 
he { } gets repeated while the condition is true.

while(condition) {
          repeat ds code
}

How while Loops Work
Let's learn the flow of while loops as shown below. First, a 
variable is initialized before the while loop. After each 
iteration of the while loop, the variable is updated and the 
condition is checked again. This same process is continued 
until the condition evaluates false.

int i = 1;          //1

while (i <= 5) {    //2
          System.out.println(i);        //3

          i++;      //4
}

Infinite Loops
If you forget to add 1 to the i variable in the loop, i will not 
change, and the condition will always evaluate true. This 
will cause an infinite loop, and put a huge load on the 
computer resources. You have to ensure that the loop 
evaluates false at some point.


-: for Loops
The for loop is another type of iteration. In the (), we initialize the 
variable, add a condition, and update the variable. Each step is 
separated by semicolons ; 

               1          2        4
for(int i = 0; i <= 5; i++) {
          ystem.out.println(i);         //3
}

class Main {
  public static void main(String[] args) {
    // Create a for loop that runs 10 times
    for(int i = 1; i <= 10; i++) {
      System.out.println("Loop count: " + i);
    }
    
  }
}




*/ 





class Main {
          public static void main(String[] args) {
                    // string
                    System.out.println(true);
          }
}