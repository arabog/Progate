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



*/ 





class Main {
          public static void main(String[] args) {
                    // string
                    System.out.println(true);
          }
}