/*
Object-Oriented Programming
In this lesson we'll learn one of the most important programming paradigms, 
Object-Oriented Programming (OOP). Object-orientation is more than just 
syntax — it's a way of thinking about how to create applications.

Why Object-Oriented Programming?
Object-oriented programming makes our lives much easier. The 
larger a program becomes, the harder it gets to keep track of 
everything. Object-oriented programming makes it easy to build 
and modify even very large programs. So, it's essential for making 
applications.


-: Properties and Actions
Real-world objects all have properties and actions. For example, 
people have properties (e.g., name, age) and actions (e.g, walking, 
greeting). Software objects are modeled after real-world objects 
in that they also have properties and actions.

Classes and Instances
Classes and instances are two important object-oriented programming 
concepts. In fact, "instance" is another name for an object; and a "class" 
is a blueprint of an instance. 

Instance Properties and Actions
An instance has properties and actions and we define them in a class 
(instance's blueprint). Let's say we want to make a person instance 
with the properties name and age, and the actions greeting and 
walking. To do this, we'll define those in a Person class.

Summary of Classes and Instances
An instance is like an entity. The reason why an object is also 
called an instance is because it is an actual entity created from 
the blueprint (class).

class Main {
          public static void main(String[] args) {
                    Person person = new Person();
                    
                    person.hello();
          }
}

class Person {
          public void hello() {
                    System.out.println("Hello");
          }
}


-: Class Definitions
class ClassName {

}

Creating Instances
We create an instance from a class as follows: new ClassName(). 
As shown below, the instance is created based on an empty class, 
so it doesn't have any properties or actions yet.

class Main {
          public static void main(String[] args) {
                    new Person();
          }
}

class Person {

}

Assigning Instances to Variables
To use an instance, we assign it to a variable as follows: 
ClassType variableName = new ClassName(). Previously, we 
specified the data type in front of the variable name. Now we 
specify the class type in front of the instance instead.

class Main {
          public static void main(String[] args) {
                    class     variable
                    type      name
                    Person person = new Person();
          }
}

class Person {

}

Creating Multiple Instances
We can create as many instances as we want from one class. In 
other words, we can easily mass-produce similar objects based 
on a design. Instances based on the same class all have the same 
type of properties (with varying values) and actions. 

class Main {
          public static void main(String[] args) {
                    Person person1 = new Person();
                    Person person2 = new Person();
                    Person person3 = new Person();
          }
}




*/ 









class Main {
          public static void main(String[] args) {
                    Person person = new Person();

                    person.hello();
          }
}