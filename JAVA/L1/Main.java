/*
-: What is Java?
Java is a popular language that's used all around the world. 
You can develop all kinds of things using Java, like large scale 
systems, web applications, and mobile applications.

Let's Run Java
Let's write your first Java code. You'll be doing this in a file 
called Main.java. The first step is printing characters. By 
writing characters inside the () of System.out.println(), you 
can print them on the console.


class Main {
          public static void main(String[] args) {
                    System.out.println("Hello world");
          }
}

-: Strings
In the last lesson, we printed characters in the console. In 
programming, a sequence of characters like "Hello Java", 
is known as a string. A string needs to be enclosed in double 
quotes ", or there will be an error.

System.out.println
System.out.println() is an instruction to print what's inside ().
In programming, you can give various instructions like this to 
a computer. Be familiar with System.out.println(), as you'll use 
it again and again in this lesson!

※ The l in "println" is the lowercase letter of L.

The Structure of Java
Every Java file has a class. Inside the class, there are methods.
In our example below, we have a Main class, and a main method.
For now, the only thing you have to remember is that you'll be 
writing your code inside the main method.


class Main {
          public static void main(String[] args) {
                    //wrire code to be run here
          }
}

Semicolon
Java requires a semicolon ; at the end of every statement.
You'll get an error without it, so be careful!

Comments
We can also write comments in code using // at the beginning of 
a line. Comments will be ignored when running the code, so you 
can use them to leave notes.


-: Integers
You can use numbers like integers in programming. Unlike strings,
they don't need to be enclosed in quotes. You can add and subtract 
integers just like you do in math. Putting spaces before and after 
integers is not required, but it makes the code easier to read.

System.out.println(5 + 5); //10

Difference between Strings and Integers
Strings and integers are interpreted differently in programming.
5 + 2 will print 7, the result of the addition. However, if you make 
it a string by adding double quotes " like "5 + 2", the output will 
be the literal string: 5 + 2.

-: String Concatenation
The + that we used for calculations also lets us combine strings.
Combining strings is known as string concatenation. "5" + "3" 
will concatenate the two strings to become "53", instead of adding 
them as numbers. Try to always be aware of the difference between 
an integer and string.

-: Data Types
So far, we have worked with two types of values, strings and integers. 
These are called data types. There are other data types as well but 
let's first cover the two types we've learned, String and int. Keep in 
mind that the first letter of String is capitalized while int is not.

Declaring Variables
You first need to declare a variable before storing a value in it. By 
declaring the variable, a "box" is created that can store the value.
There are two steps to declaring a variable in Java:
① Specify the data type of the value.
② Decide the name of the variable.

int number;
String name;

Assigning Values
After declaring a variable, you need to assign a value. You can do this 
in the following format: variableName = value. The = operator in 
Java does not mean "equal". This assignment operator means assign 
the value on the right to the variable on the left. Note that variable 
names are not enclosed in double quotes.

number = 3;
name = "John";

-: Initializing Variables
You can also declare a variable and assign a value to it at the same 
time, like int number = 3; or String text = "Hello World";.
Declaring a variable and assigning a value at the same time is 
called variable initialization. Let's keep that in mind.

int number = 3;
String name = "John";

Calculation with Variables
If a variable is an integer, you can do calculations with it, just like 
with plain integer values. You can use it with other integer values, 
or integer variables.

System.out.println(number + 5);         //8

Concatenating Variables
Similarly, you can concatenate string variables in the same way 
that you concatenate strings. Just be careful not to put variables 
in double quotes. If you do, it will just print the variable name 
instead of the value stored.

String name = "John";
System.out.println("Hello " + name);         //Hello John





*/ 

class Main {
          public static void main(String[] args) {
                    // string
                    System.out.println("Hello world");

                    // calculation
                    System.out.println(5 + 5);
                    System.out.println(5 % 3);

                      // Concatenate 
                    System.out.println("38" + "19");
                    System.out.println(38 + 19);

                    // data type
                    int number;
                    String name;

                    number = 3;
                    name = "John";

                    System.out.println(number);
                    System.out.println(name);

          }
}

