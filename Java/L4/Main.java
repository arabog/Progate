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


-: Instance Fields and Instance Methods
In the programming world, we call the properties of the instance 
as instance fields and actions of the instance as instance methods. 

Defining Methods
The behavior of an instance is expressed programmatically in 
terms of method. The method of this instance is called an instance 
method, which we define as follows: public returnType methodName(). 
The instance method has no static. 

class Person {
          public void hello() {
                    System.out.println("Hello");
          }
}

Calling Instance Methods
An instance method belongs to each instance although we define it i
nside a class. Hence, instance method is invoked on the instance (the 
variable to which they are assigned). Like what we learned in Java III, 
we use . to call an instance method. The syntax to call an instance 
method is as follows: instanceName.methodName().

Person person1 = new Person();
Person person2 = new Person();

person1.hello();
person2.hello();


-: Instance Fields
We first think of properties that we want an instance to have, and 
then declare them inside the class. Since the instance is a person, 
let's give it a property named name.

Declaring Instance Fields
An instance field is simply a variable that stores information. 
We declare these variables at the very top of the class body.
Let's make sure to add public in front of the variable type as 
follows: public dataType variableName

class Person {
          public String name;
}

Accessing Instance Fields
We use . to access the instance field as follows: instanceName.fieldName(). 
Outside the usage of ., instance fields can be treated just like variables. 
As shown below, we can assign and access the value of an instance field.

Person person1 = new Person();
person1.name = "Chris";

System.out.println(person1.name);


-: Using Instances inside Classes
Let's print, "Hey, I am ____", using the name instance field. To do 
this, we need to access the value of the name instance field in the 
hello instance method.

this
To access an instance field inside a method, we use a special 
variable called this. You can only use this inside the method 
of your class. When an instance calls the method, this is 
replaced by the instance.

class Person {
          public String name;

          public void hello() {
                    System.out.println("Hey, I'm " + this.name + ".");
          }
}

Person person1 = new Person();
person1.name = "Chris";

person1.hello();



*/ 









class Main {
          public static void main(String[] args) {
                    Person person = new Person();

                    person.hello();
          }
}