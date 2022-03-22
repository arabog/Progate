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

-: Updating Variables
Variables can be updated with another value. This can be done 
simply by assigning a new value to a variable that already has 
a value, using =.

String name = "John";
System.out.println(name);  // John

name = "Kate";
System.out.println(name);  // Kate

Common Mistakes with Variables
When updating a variable, you don't need to specify a type, as it 
has been already declared. If you do specify a type, it will be 
interpreted as a new variable. This will be an error because no 
variables can have the same name.

To update a variable by addition, you can just assign the sum 
of the variable's current value and a number back to itself, as 
shown below. This may seem strange, but remember that = in 
Java means assign, not equal.

int x = 2;
System.out.println(2); 

x = x + 2;
System.out.println(x);

You can use shorthand as shown below when updating a variable 
that has an integer value. This kind of syntax is often used for 
calculations, so be sure to remember it!

x = x + 10;                   x += 10;

Adding 1, Subtracting 1
When you're adding or subtracting 1, you can shorten it further 
with ++ and --. x++ is the same as x += 1, and x-- is the same 
as x -= 1. It's a convenient way to write, so let's remember it.

-: Why Use Variables?
We've learned the basics of variables, but why do we need them?
One benefit is that variables make it easier to tell what the values 
represent, making the code easier to read. Another benefit is 
reusability, where you can use the same data in multiple places.
And easy to make changes to data.

-: Double
Decimal Numbers
So far, we've learned that we use the int type to deal with integers 
(numbers without a decimal point), but what if we want to work 
with numbers with a decimal point? float and double are used 
for this purpose, but we will be using double in our course. There 
re lots of other data types in Java, so look up "Java data types" 
on the Internet if you're interested!

3.14      double type

The double Type
Numbers like 3 and -39 belong to the int type, which is for integers.
The double type is for numbers with decimals, like 3.28 and -5.7.
3 is an int while 3.0 is a double, even though they are the same 
mount. You can print them the same way you print int values.

double decimalNum = 3.14;
System.out.println(decimalNum);

-: Type Conversion
We learned about concatenating strings, but can we concatenate 
an integer and a string? You can, by using type conversion. In 
Java, types can be converted both implicitly and explicitly. In 
the example, 23 is converted to "23". This is because int gets 
converted to String implicitly when you add them together.

System.out.println("I am " + 23 + " years old");

Rules of Calculation
Before learning about implicit type conversion between an int 
and a double, there's one important rule to be careful of. 
Calculations between two identical types will return the same 
type. Therefore, 5 / 2 returns 2, not 2.5.

System.out.println(5 / 2);    //2

System.out.println(5.0 / 2.0);          //2.5

int and double Calculations
What happens when we do calculations with an int and a double?
In this case, the int will be implicitly converted to a double, and 
the result will be a double. So, both 5 / 2.0 and 5.0 / 2 will be 2.5.
Since integers can be expressed as numbers with a decimal point
(like 5 and 5.0), Java automatically converts them.




*/ 

// javac Main.java 
// java Main


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

                    // double
                    double decimalNum = 3.14;
                    System.out.println(decimalNum);

                    // implicit type conversn
                    System.out.println(7 / 2);    //3
                    System.out.println(7.0 / 2.0);          //3.5
                    System.out.println(7 / 2.0);  //3.5
          }
}

