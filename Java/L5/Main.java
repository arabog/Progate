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


-: Duplicate Code in Methods
The printData instance method we overrode previously contains 
duplicate code. Except for displaying the fuel amount, the code i
n the printData instance method in the Car class is the same as 
in the Vehicle class. Let's reduce redundancy by removing the 
duplicate code.

Calling Superclass Methods
We can call an instance method of a superclass from an instance 
of a subclass as follows: super.methodName(). By calling the 
printData instance method of the Vehicle class from the Car 
class, we can remove all the code except for the part that 
displays the amount of fuel.

Car.java
public void printData() {
          // Rewrite the duplicate code below using super
          super.printData();
          System.out.println("Fuel: " + this.fuel + " L");
}


-: Subclass Constructors
Let's learn to set the name and color values ​​in the constructor.
There is one rule to follow when defining a constructor in a 
subclass: We must call the superclass constructor at the 
beginning of the constructor. 

Calling Superclass Constructors
To call the constructor of a superclass use: super()

Setting Value in Field
Let's use the constructor to set a value for the instance fields 
declared in a superclass. First of all, we have to define the 
constructor in both superclass and subclass, as shown below. 
We then pass an argument to super() in the constructor of 
the subclass, and finally call the constructor of the superclass.

Vehicle(String name, String color) {
          this.name = name;
          this.color = color;
}

Car.java
Car(String name, String color) {
          super(name, color)
}


-: run Method
We made a run instance method in the Bicycle and Car classes 
respectively in Dojo II. Let's implement these methods in this 
section. The run instance method is implemented differently 
for each class. So, we'll implement it in each subclass instead 
of defining it in the Vehicle class and having each subclass to 
inherit it.

Access to private Fields (Review)
If we use the run instance method in the program as it is, we'll 
get an error. This is because the run instance method tries to 
access the distance instance field of the Vehicle class. Like 
what we learned in a previous section, the Car subclass can't 
directly access the distance instance field that we set as 
private in the Vehicle superclass.

Summary of Access Rights
Let's review the following three access rights:
· public: content is accessible from anywhere
· protected: content is accessible only from the class in which 
it's created and subclasses (child classes)
· private: content is only accessible from the class in which 
it's created


-: Method Content "To Be Decided"
Not limited to cars and bicycles, all vehicles have the "run" feature.
As a result, all classes that inherit from the Vehicle class should have 
the run instance method. However, since each vehicle runs differently, 
we can't decide the content of the run instance method in the Vehicle 
class and simply have other classes inherit that from the parent class.

Abstract Methods
There is a way to declare a method with content that has not yet been 
decided. By prefixing the method declaration with abstract as shown 
below, we can declare what is called an abstract method. We don't 
mplement anything inside abstract method.

class Vehicle {
          abstract public void run(int distance);
} 

Merits and Points
An abstract method will cause an error if the subclass doesn't override 
it. So you can force subclasses to override the abstract method and 
define what it does. If we want to make sure that a certain method is 
added in all subclasses, it's important to declare an abstract method 
in the subclass.

class Car {
          public void run(int distance) {
                    this.distance += distance;
          }
} 

Abstract Classes
A class with at least one abstract method is called an abstract class.
It's required to put abstract before the class name of abstract classes.
The abstract class is incomplete since it has an unimplemented method
(abstract method) and therefore can't generate any instances.

abstract class Vehicle {
          abstract public void run(int distance);
} 























*/ 

