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





*/




class Main {
          public static void main(String[] args) {                    
                    hello();
                    
                    hello("Bob");
          }

          public static void hello() {
                    System.out.println("Hello World");                 
          }

          public static void hello(String name) {
                    System.out.println("Hello " + name);               
          }
}

