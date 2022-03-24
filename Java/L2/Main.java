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







*/ 
class Main {
          public static void main(String[] args) {
                    // string
                    System.out.println(true);
          }
}