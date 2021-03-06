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


-: Setting Instance Field Values
Previously, we first created an instance and then set a value to the 
name instance field. However, this process becomes troublesome 
as the number of instance fields increases. There is an easy way 
to set a value to each instance field.


-: Constructors
A class has a constructor. A constructor is a special method that is 
called automatically when we create an instance using new.

Defining the Constructor
Constructor is a special method, therefore it has its own definition: 
(1) the constructor name must be the same as the class name; and 
(2) do not write return or void. If we follow these rules, we can 
successfully define the constructor.

class ClassName {
          ClassName() {}
}

Constructor Example
For example, we can write a program to call the constructor when 
we create an instance using new (see below). 

class Person {
          public String name;

          Person () {
                    System.out.println("Created a new instance");
          }
}

Person person = new Person();           // Created a new instance

class Main {
          public static void main(String[] args) {
                    Person person1 = new Person();
                    Person person2 = new Person();
          }
}


-: Setting Field Values
Let's use the constructor to ease the hassle of setting a value to 
each instance field. We will set values to the instance fields inside 
the constructor that will be executed automatically using new. 
Then, we will set values to the instance fields inside the constructor.

Passing Information to the Constructor
When we create an instance using new, we can pass arguments to 
the () of new ClassName(). Then, the arguments are passed to the 
constructor to be called immediately after. Using this, we can pass 
information to the constructor.

class Person {
          public String name;

          Person (String name) {
                    this.name = name;

                    System.out.println("Created a new instance");
          }
}

class Main {
          public static void main(String[] args) {
                    Person person1 = new Person("Chris");

                    System.out.println(person1.name);
          }
}

class Person {
          public String name;

          Person(String name) {
                    System.out.println("Created an instance of the Person class.");

                    this.name = name;          
          }

          public void hello() {
                    System.out.println("Hello, my name is " + this.name + ".");
          }
}

class Main {
          public static void main(String[] args) {
                    // Create a new Person instance with "Kate Jones" as an argument
                    Person person1 = new Person("Kate Jones");
                    person1.hello();

                    // Create a new Person instance with "John Christopher Smith" as an argument
                    Person person2 = new Person("John Christopher Smith");
                    person2.hello();
          }
}


-: Declaring Instance Fields
Making the Constructor
Let's make a constructor so that the program can set values to instance 
fields when we create a new instance.

class Person {
          public String firstName;
          public String lastName;

          Person(String (firstName, lastName) {
                    this.firstName = firstName;

                    this.lastName = lastName;
          }
}


-: Defining Instance Methods

Changing Other Methods to Instance Methods
Compare the fullName method from Java III with the new method 
we'll make here. In Java III, we passed a value ​​as an argument. 
Now, we enable the instance method to get a value of its own 
instance field using this, so we don't have to use an argument. 
The same is true for the bmi method.

Class Person {
          public static String fullName(String firstName, ...) {
                    return firstName + ...;
          }
}

class Person {
          public String firstName;

          public String fullName() {
                    return this.firstName + ...
          }
}

Calling Other Instance Methods
Let's define an instance method called printData that will allow 
the instance to print its own data to the console. The printData 
instance method will then call other instance methods including 
the fullName and bmi instance methods. We can call the other 
instance methods using this because it points to the specific 
nstance directly.

class Person {
          public String firstName;

          public double bmi() {
                    return this.weight / this.height / this.height;
          }

          public String fullName() {
                    return this.firstName + ...
          }

          public void printData() {
                    double bmi = this.bmi();
                    System.out.println("My BMI is " + Math.round(bmi) + ".");

                    String fullName = this.fullName();
                    System.out.println("My name is " + fullName + ".");
          }

}


-: Declaring Class Fields
We've learned about instance fields that belong to particular instances. 
Now we'll learn about class fields which belong to a class. We declare 
a class field as follows: public static dataType variableName (note 
that we use static here).

class Person {
          public static dataType variableName;
}

Class Field Example
In order to count how many instances we've created so far, we can 
use a field called count, which keeps track of the number of 
instances being created. It's sufficient for just the Person class 
itself to have the count field, but it's not needed for each instance 
separately. So we'll make the count field a class field.

class Person {
          public static int count;

          public String firstName;
          public String lastName;
}

Accessing Class Fields
We can access a class field as follows: ClassName.classFieldName. 

class Person {
          public static int count = 0;

          public String firstName;
          public String lastName;

          Person(String firstName, ...) {
                    Person.count++;
          }
}

=========================
class Person {
          // Declare the count class field as an int type and assign it the value 0
          public static int count = 0;
          
          public String firstName;
          public String lastName;
          public int age;
          public double height, weight;

          Person(String firstName, String lastName, int age, double height, double weight) {
                    // Increment the count variable by 1
                    Person.count++;
                    
                    this.firstName = firstName;
                    this.lastName = lastName;
                    this.age = age;
                    this.height = height;
                    this.weight = weight;
          }

          public String fullName() {
                    return this.firstName + " " + this.lastName;
          }

          public double bmi() {
                    return this.weight / this.height / this.height;
          }
          
          public void printData() {
                    System.out.println("My name is " + this.fullName() + ".");
                    System.out.println("I am " + this.age + " years old.");
                    System.out.println("My BMI is " + Math.round(this.bmi()) + ".");
          }
}


class Main {
          public static void main(String[] args) {
                    Person person1 = new Person("Kate", "Jones", 27, 1.6, 50.0);
                    person1.printData();
                    
                    Person person2 = new Person("John", "Smith", 65, 1.75, 80.0);
                    person2.printData();
                    
                    // Print "Total: ____ people."
                    System.out.println("Total: " + Person.count + " people.");
          
          }
}


-: Methods that Belong to a Class
Just as a class field is a field that belongs to a class, there are also methods 
that belong to a class. That kind of method is called a class method. We 
define class methods like so: public static returnType methodName().

class Person {
          public static returnType methodName() {}
}

Calling Class Methods
All the methods we learned in Java III began with static. Those were 
all class methods. To call a class method write: ClassName.methodName(). 
We use this syntax because class methods belong to a class. So, we can call 
class methods without creating an instance.

class Person {
          // Declare the count class field as an int type and assign it the value 0
          public static int count = 0;

          public static void printCount() {
                    System.out.println("Total: " + Person.count + "people.");
          }
}

class Main {
          public static void main(String[] args) {
                    Person.printCount();          
          }
}


-: Adding a Middle Name
Let's take another look at instance fields. Now we want the instance to 
have a field called middleName. Though it's easy to declare the 
middleName instance field, we need to be careful. If we just add 
middleName to the constructor arguments, there will be an error when 
an instance (person) is created without a value for middleName.

Overloading Constructors
To solve this issue, we can overload the constructors. Overloading 
allows you to define methods with the same name if they have a 
unique list of arguments (Java III). If we make two constructors—
one accepts the middleName as an argument and the other doesn't—
Java will be able to call the appropriate constructor for the arguments 
passed.

class Person {
          public String middleName;

          Person(String firstName, String lastName, ...) {
                    his.firstName = firstName;
                    this.middleName = middleName;
          }

          Person(String firstName, String middleName, String lastName, ...) {
                    this.firstName = firstName;
                    this.middleName = middleName;
                    this.lastName = lastName;
          }
}


-: Duplicate Code in Constructors
In the previous section, we successfully overloaded the constructor. 
It's perfectly fine to overload, however the contents of two constructors 
are mostly duplicated. Duplicate code is bad because it makes it difficult 
for us to correct and modify. 

Calling Other Constructors
To tackle this issue, we can use this() to call one constructor from 
another. this() is a special method for calling constructors. You 
can pass arguments between the () of this(). Note that we can 
only call this() at the beginning of the constructor.

class Person {
          public String middleName;

          Person(String firstName, String lastName, ...) {
                    his.firstName = firstName;
                    this.middleName = middleName;
          }

          Person(String firstName, String middleName, String lastName, ...) {
                    this(firstName, lastName, ...);

                    this.middleName = middleName;
          }
}


-: Updating the fullName Method
Now we know how to add the middleName instance field. As seen 
in the example below however, middleName is currently not 
displayed in the fullName method. Since some people don't 
have a middle name, we can't just combine the middleName 
value with the others. What should we do?

null
What is in the middleName instance field when the value is not 
set in the first place? Actually, the middleName instance field 
has a default value called null. null is a special value that means 
"nothing" (note that null is not a string). Although it's an unfamiliar 
term, keep in mind that null is an important concept in programming.

Initial Values of Variables
If we don't assign an initial value to a variable or a field when 
declaring it, Java assigns it a fixed default value. The default 
value depends on the data type of the variable. The middleName 
field has null because it is a String.

initial values of variable
Data Type                     Default Value
String                                  null
int                                        0
double                                  0.0
boolean                                 false

Rewriting the fullName Method
Let's make our program return different values in the fullName 
instance method depending on whether the middleName is null 
or not. Using if statements, we can allow the program to return 
a full name with a middle name only if the middleName instance 
field has a value.

class Person {
           public String fullName() {
                    if (this.middleName == null) {
                              return this.firstName + " " + this.lastName;
                    } else {
                              return this.firstName + this.middleName + this.lastName;
                    }

          }
}

Encapsulation
Encapsulation, one of the most important concepts in object-oriented 
programming. Here, encapsulation means hiding information of the 
class that is unneeded by the user.

Class Encapsulation
When creating a class, in order to let others feel safe when using it, 
we make public the features we want others to use and hide the 
features we don't want them to use outside of a class. Limiting the 
features available makes it easier and safer for others to know which 
features to use in a class.

Access Restriction to Fields and Methods
To be more precise, encapsulation restricts access to fields and methods. 
We use public to allow access from outside the class, and private to 
prevent access. 

          private static int count = 0;
          
          private String firstName;
          private String lastName;
          private int age;
          private double height, weight;


-: Access from Outside the Class
If you set the permission of a field to private, the field cannot be 
accessed from outside the class. On the other hand, it is possible 
to access it from within the class even if it's private.

class Person {
          private String middleName;

          public String fullName() {
                    if (this.middleName == null) {}
          }
}


-: Getter
Once we make a field private, in order to get the field value 
safely from outside the class, we have to define an instance 
method that only returns the value of the field. This instance 
method is called a getter. It's common to name a getter as 
follows: getFieldName().

Person.java
public String getMiddleName() {
          return this.middleName;
}

Main.java
Person person = new Person();
person.getMiddleName();

System.out.println("The middle name of person2 is " + person2.getMiddleName() + ".");


-: Updating Field Values
If you set the permission of a field to private, you can no longer 
update the value of the field from outside the class.

Setter
So, we need to define an instance method to change the value 
of the field. Such an instance method is called a setter. It's 
common to give a setter a name that includes the name of 
the field it provides access to, like so: setFieldName().

Person.java
private String middleName;

public void setMiddleName(String middleName) {
          this.middleName = middleName;
}

Main.java
Person person = new Person();
person.setMiddleName("John");

System.out.println("The middle name of person2 is " + person2.getMiddleName() + ".");

Encapsulation Standard
It may seem hard to tell which parts to make private or public, 
but there is a standard. Basically, we will be fine if we make 
(1) fields private and 
(2) methods public. 
Until we get to more complex programs, let's stick with 
these conventions.


-: Let's Add a Job!
Finally, let's add an instance field called job to store a job title 
for each Person instance. Let's try to complete the following 
steps all in one exercise: 
(1) declare an instance field; 
(2) change the constructors; 
(3) define getter and setter; and 
(4) modify a method.


*/ 

class Main {
          public static void main(String[] args) {
                    // Pass "doctor" as the job
                    Person person1 = new Person("Kate", "Jones", 27, 1.6, 50.0, "doctor");
                    person1.printData();

                    // Pass "teacher" as the job
                    Person person2 = new Person("John", "Christopher", "Smith", 65, 1.75, 80.0, "teacher");
                    person2.printData();
                    
                    System.out.println("----------------------");

                    // Change the job of person1 to "veterinarian"
                    person1.setJob("veterinarian");
                    
                    // Print "Changed the job of person1 to ____."
                    System.out.println("Changed the job of person1 to " + person1.getJob() + ".");
                    
                    person1.printData();
          }
}





