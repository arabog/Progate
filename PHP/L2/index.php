<!-- 
Learn Object-Oriented Programming
In this lesson we will be making a website for a food ordering service.
Here we are going to learn about a concept called Object-Oriented 
Programming (OOP) while making the ordering site.

-: What Is OOP?
"Object" means "thing" and "oriented" means "centered on"; 
Object-oriented is a way of thinking that focuses on objects. For 
example, you can think of a real shop or an e-commerce site as 
a combination of objects such as products, users, and carts.

What Are Objects in Programming?
In the programming world, there is a structure for reproducing 
objects in code. By structuring the code this way, the role of the 
code in relation to the objects becomes clearer to follow. Like 
assembly blocks, enabling you to code easily.

Objects
Let's take a look at the food ordering site we're going to create. 
We'll take each menu as an object and create an ordering site 
while assembling them.

-: Classes
To make the ordering site, we will now make objects for all of 
the menus one by one. In object-oriented programming, we 
create a blueprint of an object called "class" and create an 
object (entity) based on the class (blueprint).

How to Write Classes
Now let's take a look at how to create classes (instance blueprint). 
A class is defined as class ClassName and the contents of the 
class are written between the { }. Note that the class name should 
start with a capital letter.

<?php
          class Menu{
                    // sm code
          }
?>

Instances
The specific object made from a class (instance blueprint) is called 
an instance (object). Instances are created by using new ClassName(). 
By writing $variableName = new ClassName(); you can put the 
instance you create into a variable. Also, take note that instances 
are created outside of the class definition.

class Menu{
          // sm code
}

$menu1 = bew Menu();
$menu2 = bew Menu();
$menu3 = bew Menu();

-: Properties and Methods
A property is the data that an instance possesses, and a method 
is a function related to the instance.

How to Write Properties
A property is defined with public $property 

class Menu{
          public $name;
}

How to Access Properties
By writing $instance->property you can access the property of 
an instance. ($ is unnecessary for the property). When accessing 
a property, -> is used.

class Menu{
          public $name;
}

$curry = new Menu();

 set d value 
$curry -> name = 'CURRY';

access d value 
echo $curry -> name;


-->
-: What is a Method?
Next, we will define methods in the class. A method is a function 
that every instance has

How to Use Methods
The method is defined with public function method(). Also, it is 
possible to access (call) a method by writing $instance->method().


class Menu{
          public $name;

          public function hello() {
                    echo "I'm an instance of Menu"
          }
}

$curry = new Menu();
$curry -> hello();

-: $this
When you want to access an instance property or method within 
a method, you can use a special variable called $this. $this can 
only be used within the definition of a method in the class. 
When a method is called, $this is replaced by an instance that 
is calling the method.


class Menu{
          public $name;

          public function hello() {
                    echo 'My name is '.$this -> name.'.';
          }
}

$curry = new Menu();
$curry -> hello();


