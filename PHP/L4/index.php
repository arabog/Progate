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



-->