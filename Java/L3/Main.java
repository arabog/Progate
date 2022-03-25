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




*/




class Main {
          public static void main(String[] args) {                    
                    hello();                                                              
          }

          public static void hello() {
                    System.out.println("Hello World");               
          }
}

