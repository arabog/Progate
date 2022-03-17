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



-->
menu.php
class Menu {
          private static $count = 0;    

          public function __construct(...) {
                    <!-- Add 1 to d value of $count -->
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

