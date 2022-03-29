/*
Learn Inheritance
First of all, we'll learn about inheritance, an important 
object-oriented concept.


-:  Duplicate Code in Classes
The Car and Bicycle classes have duplicate code, which we 
should avoid in order to make it easier to edit and revise 
programs. Both of these classes are "vehicles". The duplicate 
part indicates properties and actions common to all vehicles 
in general, rather than properties unique to cars or bicycles.

class ClassName {
          private String name;
          private String color;
          private int distance = 0;
          
          public String getName() {
                    return this.name;
          }
          
          public void setName(String name) {
                    this.name = name;
          }
          
          public String getColor() {
                    return this.color;
          }
          
          public void setColor(String color) {
                    this.color = color;
          }
          
          public void printData(){
                    System.out.println("【Bicycle Info】");
                    System.out.println("Name: " + this.getName());
                    System.out.println("Color: " + this.getColor());
                    System.out.println("Distance: " + this.distance + "km");
          }
          
          
          public void run(int distance) {
                    
                    System.out.println("Moving " + distance + "km ...");
                    System.out.println("Distance: " + distance + "km");
          }
}

Inheriting Class Content
Object-oriented programing enables a class to inherit the content 
of another class. We can remove the duplicate code by combining 
the overlapping fields and methods to create a Vehicle class. In 
doing so, the Car and Bicycle classes can then inherit from that 
class. 

Inheritance
When a class inherits the fields and methods of another class it's 
called inheritance. You can also customize a new class by adding 
your own fields and method to a new inherited class. A class from 
which content is inherited is called a superclass, and the child class 
that inherits content is called a subclass.

extends: Method Inheritance
We use extends when defining a subclass using inheritance. A 
subclass is defined as follows: class SubclassName extends 
SuperclassName.
extends means "to expand"—inheritance is used to create a 
subclass with expanded features based on its superclass.


-: Calling Superclass Methods
The Car class (subclass) inherits the fields and methods of the 
Vehicle class (superclass). Therefore, although nothing is 
defined in the Car class, we can call an instance method of 
the Vehicle class for an instance of the Car class.

class Main {
          public static void main(String[] args) {
                    Car car = new Car();
                    car.setName("Ferrari");
                    car.setColor("Red");
          }
}







*/ 

