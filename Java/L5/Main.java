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


-: Subclass Fields and Methods
We can customize a subclass by incorporating original fields 
and methods that aren't in the superclass. The fuel instance 
field is a unique instance field for the Car class. Let's declare 
the fuel instance field and define its getter method in the Car 
class. Here, we will also define the charge instance method

Note about Calling Methods
An instance of a subclass can call not only its own methods 
but those of its superclass as well. On the other hand, an 
instance of a superclass can't call methods of a subclass. 
Since class inheritance is unilateral, if we call a method 
of a subclass from a superclass, we get an error

Structure of Calling Methods
The method will be called from the subclass if it's defined in the 
subclass, or from the superclass if it's not defined in the subclass.


-: Customizing Methods
Let's consider a situation where we want to customize a superclass 
method inside the subclass that inherited it. For example, when 
calling the printData instance method for an instance of the Car 
class, we also want to display the amount of fuel.

Overriding
We can override the content of a method inherited from a superclass 
by defining another method of the same name in the subclass. This is 
called overriding. If we define the printData method in the Car class 
(subclass), it overrides the printData inherited from the Vehicle class.


Although the superclass and the subclass have methods with the same 
name, the program first looks at the subclass, and as a result, the 
content of the method is overwritten inside the subclass. Here, the 
program calls the printData instance method defined in the Car class.

Access to private Field
Fields other than fuel such as name, color, and distance are declared 
as private instance fields in the Vehicle class, and external classes 
like Car can't directly access them (encapsulation). When you want 
to allow external access to private instance fields, use a getter method.



*/ 

