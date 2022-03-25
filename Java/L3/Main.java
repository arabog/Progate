/*
Use of Methods and Classes
In this lesson, we'll learn about methods and classes in Java.
These new techniques allow us to split a large-scale program into smaller, 
cohesive components. This is one of the best ways to make your code 
understandable for others and yourself.

-: Using Methods
A method is a section of code to which we assign a specific task. 
From here, we'll be splitting up the main method into smaller methods. 
When Java files are executed, the main method is automatically 
executed. When the program is divided up, the main method instructs 
each of the others to execute their individual tasks.

By splitting our program into smaller methods, we can give each 
of them separate and specific roles, and we'll be able to easily 
reuse them!

Calling Methods
You can think of a method as a collection of statements that are 
grouped together to perform a specific operation. In the code below, 
we defined a hello method, and called hello method from the main method.

class Main {
          public static void main(String[] args) {                    //1
                    hello();                                                              //2
          }

          public static void hello() {
                    System.out.println("Hello World");                //3
          }
}

1. d main method is called
2. d hello method is called inside d main method
3. System.out.println("Hello World"); is executed
inside d hello method


-: Method Definitions
First, let's take a look at method definitions. For now, remember 
public static void as a fixed phrase. Later we'll learn about the () 
t the end of each method name. We write the code for each method 
inside the block, the part between { and }. We should give each 
method a name that makes it easy to tell what it does.

We define methods inside a class. As shown below, the 
hello method is defined in the block { } of the Main class. 
If you define a method outside of a class, there will be an 
error, so be careful.

class Main {                  //Main class blk
          public static void main(String[] args) {                    
                    hello();                                                              
          }

          public static void hello() {            //def a method in d class
                    System.out.println("Hello World");               
          }

}                             //Main class blk

Calling Methods
To call a method, just write methodName(). Don't forget to put 
the () when you call the method.

class Main {
          public static void main(String[] args) {    
                    call a method with methodName()
                    hello();      
                    hello();                                                            
          }

          public static void hello() {
                    System.out.println("Hello World");               
          }
}


-: Arguments
An argument is like an additional information that you give to the 
method. If you pass the arguments when you call a method, the 
value of the arguments can be used inside the method.

Receiving Arguments
To pass arguments to a method, you must first define a method 
that can accept arguments. To do so, we need to specify a 
variable or rather, what is more commonly known as a parameter 
inside the () of public static void methodName(). Remember to 
include the data type for each parameter just like when declaring 
a variable.

public static void methodName(datatype variableName) {}

public static void hello(Sttring name) {}

Passing Arguments
To pass an argument to a method, call the method like this: 
methodName(argument). An argument passed to a method 
will be received by the method as its parameter specified in 
the method definition, and the parameter can be used as a 
variable within the method.

class Main {
          public static void main(String[] args) {                    
                    hello("Bobs");                                                              
          }

          public static void hello(String name) {
                    System.out.println("Hello " + name);               
          }
}


-: Methods with Multiple Arguments
Multiple arguments can be passed to a method. In order for a 
method to take more than one argument, we can separate them 
using commas , in method definition. When calling a method, 
arguments should be in order from left to right like: 
firstArgument, secondArgument, …

public static void methodName(datatype variableName1, datatype variableName2) {}

public static void hello(Sttring item, int price) {}

class Main {
          public static void main(String[] args) {                    
                    printPrice("Pizza", 30);    
                    printPrice("Coke", 2);                                                                                                                        
          }

          public static void printPrice(String item, int price) {
                    System.out.println(item + " is " + price + " dollars");               
          }
}

The Order of Passing Arguments
Though the order of the parameters can be arbitrary, when calling 
a method, you have to pass the arguments in the same order and 
same data type as the parameters. If you try to use an int argument 
where a String type parameter is defined, it causes an error; the 
data types of the arguments passed do not match the data types of 
the parameters received.

class Main {
          public static void main(String[] args) {                    
                    printPrice("Pizza", 30);    
                    printPrice("Coke", 2);                                                                                                                        
          }

          public static void printPrice(String item, int price) {
                    System.out.println(item + " is " + price + " dollars");               
          }
}


-: Return Values
A return value allows us to use the result of a method where it was called. 
Think of a method like a factory. The factory gets materials (arguments) 
from the client (main method), does the predetermined manufacturing 
(operations), and returns the finished product to the client. It's the return 
value that corresponds to the finished product.

Method Return Values
Methods can send a return value back to the caller with return.
When there is a return value, you need to set its return type
(the data type of the return value). To do this, change the void part of 
public static void. As shown below, the return value of the add method 
is an integer, so we set the data type like public static int.

public static returnType methodName(parameter) {
          return value;
}

public static int add(int a, int b) {
          return a + b;
}

class Main {
          public static void main(String[] args) {                    
                    int total = add(7, 5);   
                    
                    System.out.println(total);
          }

          public static int add(int a, int b) {
                    return a + b;               
          }
}

void
So what is void from the fixed phrase of public static void?
The void means no return value. As shown in the example below, 
the hello method doesn't have a return value. We use void to specify 
that a method has no return value.

public static void hello(int a, int b) {
          System.out.println("Hello");      
}

-: Method Overloading
Identically Named Methods
Defining more than one method with the same name in the same 
class is not allowed in programming. This is because if the 
computer recognizes multiple methods with the same name in 
the same class, it cannot determine which method to call.

Overloading
However, if the parameters of two identically named methods 
differ in number of parameters or data type, they can have the 
same name. Even if there are multiple methods with the same 
name, the computer can tell which one to call when argument 
lists are unique. Defining multiple methods with the same name 
is called overloading.

class Main {
          public static void main(String[] args) {                    
                    hello();
                    
                    hello("Bob");
          }

          same method name but diff parameters
          public static void hello() {
                    System.out.println("Hello World");                 
          }

          public static void hello(String name) {
                    System.out.println("Hello " + name);               
          }
}

class Main {
          public static void main(String[] args) {
                    printData(fullName("Kate", "Jones"), 27);
                    
                    // Replace the printData arguments to match with the new fullName method parameters
                    printData(fullName("John", "Christopher", "Smith"), 65);
          }

          public static void printData(String name, int age) {
                    System.out.println("My name is " + name + ".");

                    System.out.println("I am " + age + " years old.");
          }

          public static String fullName(String firstName, String lastName) {
                    return firstName + " " + lastName;
          }
          
          // Define the fullName method
          public static String fullName(String firstName, String middleName, String lastName) {
                    return firstName + " " + middleName + " " + lastName;
          }
  
}


-: Calling a Method from Another Method
We can call a method not only from the main method but from 
other methods as well. As components of a larger program, 
methods help each other to make up one whole program

Combining Methods
Let's call a method from another method. To calculate (a + b) / 2, 
we can first use the add method inside the average method. Using 
the add method in this way returns the sums of two numbers. 

class Main {
          public static void main(String[] args) {                    
                    System.out.println(average(3, 8));  
          }

          public static double average(int a, int b) {
                    int total = add(a, b);

                    return (double)total / 2;
          }

          public static int add(int a, int b) {
                    return a + b;
          }
}

class Main {
  public static void main(String[] args) {
    printData(fullName("Kate", "Jones"), 27, 1.6, 50.0);
    printData(fullName("John", "Christopher", "Smith"), 65, 1.75, 80.0);
  }

  public static void printData(String name, int age, double height, double weight) {
    System.out.println("My name is " + name + ".");
    System.out.println("I am " + age + " years old.");
    System.out.println("My height is " + height + " meters.");
    System.out.println("My weight is " + weight + " kilograms.");
    
    // Assign BMI to the bmi variable using the bmi method
    double bmi = bmi(height, weight);
    
    // Using the bmi variable, print out "My BMI is ____."
    System.out.println("My BMI is " + bmi + ".");
    
  }

  public static String fullName(String firstName, String lastName) {
    return firstName + " " + lastName;
  }
  
  public static String fullName(String firstName, String middleName, String lastName) {
    return firstName + " " + middleName + " " + lastName;
  }
  
  // Define the bmi method
  public static double bmi(double height, double weight) {
      return weight / height / height;
  }
  
}


-: Returning boolean Value
Finally, let's create a method that returns a boolean value. As 
shown in the example below, we first define the method as a 
boolean data type. The isEven method checks if the value of 
the argument is an even number and returns true if it is, and 
false otherwise.

public static boolean isEven (int a) {
          return a % 2 == 0;
}

Example: Method Returns boolean Value
Let's try using the isEven method, which returns a boolean value.
Take a look at the example below. Pay attention to the output!

class Main {
          public static void main(String[] args) {   
                    int num = 9;

                    if(isEven(num)) {
                              System.out.println(num + " is even");  
                    }else {
                              System.out.println(num + " is odd"); 
                    }
          }

          public static boolean isEven (int a) {
                    return a % 2 == 0;
          }
}


-: Classes
Next, we'll learn how to split these methods into different classes.
Using Multiple Classes
A class is like a component that groups smaller components 
(methods) together. We've worked with methods that share the 
same class (Main class) with the main method. Now we will 
learn how to use methods in other classes.

Calling Methods of Other Classes
Below, there are 2 classes, Main and Person, and Person.hello() 
is called in the main method of the Main class. Using the syntax 
ClassName.methodName(), you can call methods of other classes


class Main {
          public static void main(String[] args) {   
                    Person.hello();
          }
}

class Person {
          public static void hello () {
                    System.out.println("Hello World");
          }
}


-: Defining Classes
Define a class in the following way: class ClassName. 
As shown in the below, class names should be capitalized 
and the file name should be the same as the class name 
(e.g. ClassName.java). Be sure to remember these 
naming conventions for Java classes.

Person.java
class Person {}

Creating a Person Class
By creating the Person class and moving all the code except 
for the main method from the Main class, we can give the 
execution role to the Main class and the logic role to the 
Person class.

class Person {
          public static void printData()

          public static boolean isHealthy()
}

Calling Person Class Methods
Let's look at how to call a method of the Person class 
from the main method of the Main class in the example below!

class Main {
          public static void main(String[] args) {   
                    String name = Person.fullName("Kate", "Jones");

                    System.out.println(name);
          }
}


class Person {
          public static String fullName(String firstName, String lastName) {   
                    return firstName + " " + lastName;
          }
}

Supplement for Classes
When you execute a Java class, the runtime environment 
will always look for the main method in the class. If the 
executed class does not have a main method, it cannot be 
executed by itself and needs to be called from another class.
In our example, the Main class has a main method but the 
Person class doesn't, hence only the Main class can be 
executed by itself. Take note that the name of the class has 
nothing to do with this form of execution.

Main.jav
public class Main {
  public static void main(String[] args) {
    // Rewrite the calls to the printData and fullName methods
    Person.printData(Person.fullName("Kate", "Jones"), 27, 1.6, 50.0);
    Person.printData(Person.fullName("John", "Christopher", "Smith"), 65, 1.75, 80.0);
  }
  
}

Person.java
// Define the Person class
class Person {
  public static void printData(String name, int age, double height, double weight) {
    System.out.println("My name is " + name + ".");
    System.out.println("I am " + age + " years old.");
    System.out.println("My height is " + height + " meters.");
    System.out.println("My weight is " + weight + " kilograms.");

    double bmi = bmi(height, weight);
    System.out.println("My BMI is " + bmi + ".");

    if (isHealthy(bmi)) {
      System.out.println("Your BMI is in the standard range.");
    } else {
      System.out.println("Your BMI is outside of the standard range.");
    }
  }
  
  public static String fullName(String firstName, String lastName) {
    return firstName + " " + lastName;
  }

  public static String fullName(String firstName, String middleName, String lastName) {
    return firstName + " " + middleName + " " + lastName;
  }
  
  public static double bmi(double height, double weight) {
    return weight / height / height;
  }

  public static boolean isHealthy(double bmi) {
    return bmi >= 18.5 && bmi < 25.0;
  }
}


-: External Libraries
We can use classes made by other programmers in Java. Such 
classes are called external libraries and they are available after 
you import them into your program. You don't have to create 
everything by yourself from scratch! We can expand the range 
of development by using convenient methods created by 
engineers all over the world.

Importing Libraries
Use import to load external libraries into your program. For 
example, there's a class (library) called Math that contains 
mathematical methods. Above the class definition, you can 
import the Math class as follows: import java.lang.Math. 
Note that java.lang refers to the package that contains the 
Math class.

import java.lang.Math;

class Main {
          public static void main(String[] args) {}
}

Math Class Methods
External libraries make it easy for us to implement programs. 
For example, the max method of the Math class returns the 
maximum value from the two given arguments.

import java.lang.Math;

class Main {
          public static void main(String[] args) {
                    int max = Math.max(3, 8);

                    System.out.println("The max is " + max + ".");
          }
}


-: Receiving Input
Automatically Imported Libraries
Some classes, like java.lang.Math are so fundamental to the 
Java programming language that they actually get imported 
automatically. Only libraries that are used very commonly in 
java.lang are being imported by default.

class Main {
          public static void main(String[] args) {
                    int max = Math.max(3, 8);

                    System.out.println("The max is " + max + ".");
          }
}

Console Input and Scanner
So far, we have been printing values to the console, but you can 
actually input value to the console and use it as a value in your 
program as shown on the left image. We will be using a library 
called Scanner to receive the input. To import Scanner, write: 
import java.util.Scanner.

import java.util.Scanner.

class Main {
          public static void main(String[] args) {}
}

Receiving Strings Using Scanner
Let's look at how to use Scanner. First, we must initialize a new 
Scanner instance and assign it to a variable. Here, we are using 
a variable called scanner. Then, we can use scanner.next() to get 
String inputs from the console. Note that you'll be using the variable 
name scanner instead of the package name Scanner.

import java.util.Scanner.

class Main {
          public static void main(String[] args) {
                    // make a new Scanner instance
                    Scanner scanner = new Scanner(System.in);

                    String name = scanner.next(); //read a string
          }
}

Flow of Scanner
When scanner.next() is called, the program is interrupted and waits 
for some value to be entered from the console. As shown below, 
scanner.next() gets some input from the console and assigns it to 
the variable name.
(System.out.print is used to print a value without starting a new line.)

import java.util.Scanner;

class Main {
          public static void main(String[] args) {
                    // make a new Scanner instance
                    Scanner scanner = new Scanner(System.in);
                    System.out.println("Your name: ");

                    String name = scanner.next(); //read a string

                    System.out.println("Your name is " + name + ".");

          }
}


-: Receiving Numerical Inputs
There are two methods used to get numerical input using 
Scanner: the nextInt method for integers and the nextDouble 
method for numbers with a decimal point.

import java.util.Scanner;

class Main {
          public static void main(String[] args) {
                    // make a new Scanner instance
                    Scanner scanner = new Scanner(System.in);
                    System.out.println("Age: ");

                    int age = scanner.nextInt(); 

                    System.out.println("Weight: ");

                    double weight = scanner.nextDouble(); 

                    System.out.println("Your are " + age + " years old");
                    System.out.println("Your weight is " + weight + " kilogram");


          }
}


*/

import java.util.Scanner;

class Main {
          public static void main(String[] args) {
                    Scanner scanner = new Scanner(System.in);
                    
                    System.out.print("First Name: ");
                    // Input a string value
                    String firstName = scanner.next();
                    
                    System.out.print("Last Name: ");
                    // Input a string value
                    String lastName = scanner.next();
                    
                    System.out.print("Age: ");
                    // Input an integer value
                    int age = scanner.nextInt();
                    
                    System.out.print("Height (m): ");
                    // Input a decimal value
                    double height = scanner.nextDouble();
                    
                    System.out.print("Weight (kg): ");
                    // Input a decimal value
                    double weight = scanner.nextDouble();
                    
                    Person.printData(Person.fullName(firstName, lastName), age, height, weight);
          }
}






