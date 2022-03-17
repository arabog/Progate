<!-- 
Object-Oriented Programming
In this lesson, we'll carry on learning Object-Oriented 
Programming (OOP) from PHP Study II.

-: Class Properties
For starters, we'll display the number of menus, which 
matches the number of instances generated. The number 
of instances needs to be managed throughout the class, 
not the individual instances. We use class properties to 
do this. Let's learn about class properties!

How to Use Class Properties
While the data of each instance is called a property, the 
data of each class is called a class property; more commonly 
known as a static property. We define class properties using static.
We access a class property using double colon :: as follows: 
className::$classPropertyName. Let's make sure to put $ 
directly after ::.

class Menu {
          public static $count = 4;     //class ppty
}

echo 'item count: '.Menu::$count;     //access d class ppty

Use the Menu class defined in menu.php when accessing 
class properties in index.php.

<h3>Item count: <?php echo Menu::$count ?></h3>

-: Using Constructors
Previously, we set the initial value of the class property 
$count to 4. In this example, let's make the value of 
$count automatically change when the number of 
instances (number of menus) changes. We can count 
the number of instances generated by setting the 
initial value of $count to 0 and adding 1 to $count 
in the constructor.

data.php
$curry = new Menu('Curry', ...);
$pasta = new Menu('Pasta', ...);

menu.php
class Menu {
          private static $count = 0;    

          public function __construct(...) {
                    Add 1 to d value of $count
          }
}

self
When accessing a class property from within a class, we 
use a special variable called self. When used in a class, 
self refers to the class itself. We use self as follows: 
self::$classPropertyName. Let's use self to change the 
value of the class property $count in the constructor.

menu.php
class Menu {
          private static $count = 0;    

          public function __construct(...) {
                    self::$count++;
          }
}

data.php
$menu1 = new Menu('Curry', ...);
$menu2 = new Menu('Pasta', ...);

echo Menu::$count;  //2

Class Methods
Let's set $count access to private, which disables any 
access from outside the class, and define a getter for 
$count. Since the getter for $count is irrelevant to the 
data of individual instances, we'll use a class method. 
We define a class method using static and call it as 
follows: className::classMethodName().

menu.php
class Menu {
          private static $count = 0;    

          public static function getCount(...) {
                    return self::$count++;
          }
}

data.php
$menu1 = new Menu('Curry', ...);
$menu2 = new Menu('Pasta', ...);

echo Menu::getCount();  //2

-: Separating Food and Drinks
From here, we'll display spiciness for food and hot/cold for 
drinks in the menu list. Rather than giving all Menu instances 
both spiciness and hot/cold data, we want to give the spiciness 
data to food and hot/cold data to drinks, so let's put food and 
drinks in different classes: Food and Drink. We'll create instances 
from each class.

Class Inheritance
We're going to make a new Food menu (Food class) and Drink 
menu (Drink class). However, most of the data and functions of 
the Food and Drink classes will be the same as the Menu class 
which we have implemented so far. So let's have the new classes 
inherit the content of the Menu class and then customize them.

What is Inheritance?
We can make a class inherit already defined properties and 
methods of another class by using inheritance. The original 
class to hand over its content is known as a parent class, and 
the new class which inherits the content is called a child class. 
Once the child class has inherited all the content from the 
parent class, we can add new features to the child class.

Inheritance Syntax
When defining a new child class using inheritance, we use extends.

Parent Class
class parentClassName {}

Child Class
class childClassName extends parentClassName {}

menu.php
class Menu {
          public function __construct($name, ...) {
                    $this -> name = $name;
          }

          public function getName() {
                    return $this -> name;
          }
}

drink.php
class Drink extends Menu {}

$coffee = new Drink('Coffee', ...);

echo $coffee -> getName(); // Coffee

-: Independent Properties
Let's start by customizing the Drink class. We want the 
Drink object to have a type; either hot or cold, in the 
Drink object, so we'll add the $type property to manage this. 

class Drink extends Menu {
          private $type;
}

Independent Methods
We can also define our own methods for child classes. Let's 
define the getter and setter of the $type property to the Drink class.

class Drink extends Menu {
          private $type;

          public function getType() {
                    return $this -> type;
          }

          public function setType($type) {
                    $this -> type = $type;
          }
}

data.php
$coffee = new Drink('Coffee', ...);

ds can be called in Drink class 
$coffee -> setType('hot');

$coffee = new Menu('Coffee', ...);

ds cant be called in Menu class 
$curry -> setType('hot');

Calling Child Methods
When calling a method of a child class, the program searches 
for the method. If a method is defined in a child class, that 
method is called right away. If it's not defined there, the 
method of the parent class is called.

-: Separating Code by Class
We defined the getType method for the Drink class in the 
previous exercise. Calling the getType method from an 
instance of the Food class will lead to an error, so we 
deleted Food's data in the previous exercise. Let's display 
the data of Food this time and call the getType method 
only when the instance belongs to the Drink class.

food.php
class Food extends Menu {}

$curry = new Food('Curry', ...);

drink class method can't be called 4rm Food class instances
echo $curry -> getType();

instanceof
Using instanceof, we can determine whether an instance 
belongs to a particular class. By writing $instanceName 
instanceof className, the code will return true if the 
instance belongs to the specified class, and false otherwise.

-->
data.php
$coffee = new Drink('Coffee', ...);

true
if($coffee instanceof Drink) {
          echo $coffee -> getName().' is an instance of the Drink class'; 
}

false
if($coffee instanceof Food) {
          echo $coffee -> getName().' is an instance of the Food class'; 
}

index.php
<?php if($menu instanceof Drink): ?>
          <p class="menu-item-type"><?php echo $menu->getType() ?></p>
<?php endif ?>

-: Overriding
Previously, we used a setter to set the value of $type, but here we 
define our own constructor for the Drink class and set the value of 
$type. The __construct method is already defined in the parent class, 
but if we define a method with the same name in the child class, 
we can override the contents of the method. Such a method is 
known as overriding.

drink.php
class Drink extends Menu {
          private $type;

          public function __construct($name, ..., $type) {
                    $this -> name = $name;

                    $this -> type = $type;
          }

          public function setType($type) {
                    $this -> type = $type;
          }
}

Child Classes & Access Rights
We learned in PHP Study II that if the access of a property is private, 
we cannot directly access the property from outside the class. In fact, 
private properties cannot be accessed from child classes either. So we 
cannot access the private property of the Menu class from the Drink 
class.

Protected Properties
In order to access a property defined in the parent class from the 
child class, we need to set the access right of the property to 
protected. A property whose access is protected can only be 
accessed from its own class and from child classes which inherit 
that class

class Menu {
          protected $name;
}

class Drink extends Menu {
          public function __construct($name, ...) {
                    accessible since d ppty was set as protected in parent class
                    $this -> name = $name;
          }
}

Summary of Access Rights
Let's review the following three access rights:
· public: content is accessible from anywhere
· protected: content is accessible only from the 
class in which it's created and subclasses (child classes)
· private: content is only accessible from the class 
in which it's created

