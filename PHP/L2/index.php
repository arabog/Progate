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

-: Constructors
If you define a special method named __construct(), this method 
will be called automatically when you create an instance using new. 
This kind of method that is called when a new instance is created 
is called a constructor.

class Menu{
          public function __construct() {

                    echo 'A menu was created';
          }
}

$curry = new Menu();          d constructor is automatically called

-: Constructors and Arguments
The __construct() method can take arguments. When you create 
an instance using new and enter arguments, those arguments 
will be passed to the constructor.

class Menu{
          $name;

          public function __construct($name) {

                    echo $name;
          }
}


$curry = new Menu('Curry'); 

Constructors and Properties
As seen below, it is possible to use $this to set a value for an instance 
property inside the __construct() method. This is useful because it 
enables you to set properties when you create an instance.

class Menu{
          $name;

          public function __construct($name) {

                    $this -> name = $name;
          }
}


$curry = new Menu('Curry'); 

$curry -> name;               Curry


-: Embedding PHP in HTML
In order to put the layout together, let's embed the PHP code in 
the HTML. When embedding PHP code, separating the PHP 
and HTML makes the code easier to read.

php
<?php 
          class Menu{
                    public $name;
          }

          $curry = new Menu('Curry');
?>

html
a semicolon isn't needed 4 only one line of code
<p><?php echo $curry -> name ?> </p>    


php
<?php 
          class Menu{
                    public $name;
          }

          $curry = new Menu('Curry');

          // html
          echo '<p> '.$curry -> name.' </p>';     
?>

Omitting Semi-Colons in Statements
So you've learned up until this point that with PHP code, 
you need to close the statement by placing a semi-colon ; 
at the end. But, when the code is a single statement there 
isn't a need to close the statement. In these cases, you can 
omit the semi-colon.

<p><?php echo $curry -> name ?> </p>    


-: Let's Make the Menu!
We will display the 4 menus. To do this, we'll make an array 
of the 4 menus and display each menu as we iterate through 
the array.

Embedding foreach Loops in HTML
When you embed a foreach loop in HTML, it can be written as 
shown below. Embedded foreach loops are very useful as you 
can use HTML tags within them. When embedding:
・Use : instead of {.
・Use endforeach instead of }.

<?php
          $words = array('apple', 'banana', 'orange');

          foreach ($words as $word) {
                    echo '<p> '.$word.' </p>';
          }
?>

<?php
          $words = array('apple', 'banana', 'orange');
?>

<?php foreach ($words as $word): ?>
          <p> <?php echo $word ?> </p>
<?php endforeach ?>

// Closing Sequences
// As with the foreach loop, the if, for,while and switch 
// sequences can be closed with endif, endfor, endwhile 
// and endswitch respectively.

-->

<?php
          $age = 24;
?>


<?php if($age <= 18): ?>
          <p> <?php echo 'You re an adult' ?> </p>
<?php endif ?>

<?php for($i = 0; $i < 100; $i++): ?>
          <p> <?php echo $i ?> </p>
<?php endfor ?>


$juice = new Menu('JUICE');
$coffee = new Menu('COFFEE');
$curry = new Menu('CURRY');
$pasta = new Menu('PASTA');

// Declare the $menus array
$menus = array($juice, $coffee, $curry, $pasta);

<div class="menu-items">
          <!-- Write the foreach loop -->
          <?php foreach($menus as $menu): ?>
                    <h3> <?php echo $menu -> name ?> </h3> 
          <?php endforeach ?>

</div>

-: require_once
Since the code is getting long, let's divide it into 3 files: 
one for displaying (index.php), one for defining classes
(menu.php), and one for defining data (data.php). To 
access all the classes and variables in the other files, 
you can use require_once. This loads an outside file 
into the current file.

menu.php
<?php


?>


data.php
<?php
          require_once('menu.php');

          $curry = new Menu('Curry');

?>

index.php
<?php require_once('data.php') ?>

<p>
          <?php echo $curry -> name ?>
</p>


Let's separate the files as follows:
・Code for defining a class.
・Code for declaring variables.

Since the Menu class is used in the data.php file, import 
the menu.php file using require_once in data.php.

-: Showing Images and Prices
We will display the image and price for each one of the 
elements. Let's define the image property and price 
property of the Menu class.

Showing Images and Prices
We will display the image and price for each one of the 
elements. Let's define the image property and price 
property of the Menu class.

<img src="<?php echo $curry -> image ?>" >

<!-- soln -->
menu.pjp
<?php
          class Menu {
                    public $name;
                    // Declare the $price property
                    public $price;
                    // Declare the $image property
                    public $image;
                    
                    // Add the $price and $image parameters to the constructor
                    public function __construct($name, $price, $image) {
                              $this -> name = $name;
                              // Assign $price to the price property 
                              $this -> price = $price;
                              // Assign $image to the image property
                              $this -> image = $image;
                    }
  
}
?>

data.php
<?php
          require_once('menu.php');

          // Pass prices and images to each new Menu()
          $juice = new Menu('JUICE', 6, 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/juice.png');

          $coffee = new Menu('COFFEE', 5, 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/coffee.png');

          $curry = new Menu('CURRY', 9, 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/curry.png');

          $pasta = new Menu('PASTA', 12, 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/pasta.png');

          $menus = array($juice, $coffee, $curry, $pasta);
?>

index.php
<?php require_once('data.php') ?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Café Progate</title>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <link href='https://fonts.googleapis.com/css?family=Pacifico|Lato' rel='stylesheet' type='text/css'>
</head>
          <body>
                    <div class="menu-wrapper container">
                              <h1 class="logo">Café Progate</h1>
                              
                              <div class="menu-items">
                                        <?php foreach ($menus as $menu): ?>
                                                  <div class="menu-item">
                                                            <!-- Print the image property of $menu -->
                                                            <img src="<?php echo $menu -> image ?>">

                                                            <h3 class="menu-item-name"><?php echo $menu->name ?></h3>
                                                            
                                                            <!-- Print the price property of $menu -->
                                                            <p class="price">$<?php echo $menu -> price ?></p>
                                                  </div>
                                        <?php endforeach ?>
                              </div>
                    </div>
          </body>
</html>

-: Showing Prices
Using the price property for each element, we'll display 
the prices including tax. Let's define the method to return
the price including tax using the price property of the Menu 
instance.

menu.php
// Define the getTaxIncludedPrice method
public function getTaxIncludedPrice() {
          $price = $this -> price * 1.0725;

          return $price = round($price, 2);

}


call d method in index.php
<p class="price">$<?php echo $menu -> getTaxIncludedPrice()  ?> (tax included)</p>

-: Encapsulation
From here, we'll learn encapsulation. This is one of the important 
functions of object-oriented programming which hides information 
that is unnecessary to the user.

What is Encapsulation?
First, let's imagine encapsulation with a real-life example. A 
computer's circuitry is hidden so that the user can only operate 
limited parts such as the keyboard. Hiding the circuitry 
(encapsulation) avoids the risk of touching the circuitry and 
damaging the computer. Even in programming, there is such 
an "encapsulation" fundamental.

Encapsulating within Classes
In order to make classes easier for other people to use, you 
should public the functions you want them to use and hide 
the functions you don't want them to use outside of a class. 
Limiting the usage of functions makes it easier for other people 
to understand which functions to use and makes it safer for 
them to use classes.

public and private
Encapsulation is the act of restricting access to class properties 
and methods. public is used to allow access from outside the 
class, and private is used to limit that access. In general, class 
properties are made private.


class Menu{
          private $name;

          public function __construct($name) {

                    $this -> name = $name;
          }
}

$curry = new Menu('Curry');
echo $curry -> name           gives error

-: Getter
If you set a property to private, you won't be able to 
retrieve the value of the property from outside the class. 
Here, we will define a method that will return only the 
value of the property. This kind of method exists only 
to return the value of a property and is known as a getter. 
Getters are commonly named like getPropertyName().

class Menu{
          private $name;

          public function __construct($name) {

                    $this -> name = $name;
          }

          public function getName() {
                    return $this -> name;
          }
}

$curry = new Menu('Curry');

echo $curry -> getName();

-: Let's Order Food!
Let's enable users to actually order food. Add a property 
called orderCount to manage the quantity of the order.

Setter
When you make the access to a property private, you can't 
change the value of the property from outside the class. 
Here, we will define a method that will change the property 
value. This kind of method which exists only to change the 
value of a property is known as a setter. Setters are commonly 
named like setPropertyName()

class Menu{
          private $orderCount;

          public function setOrderCount($orderCount) {

                    $this -> orderCount = $orderCount;
          }
}

$curry = new Menu('Curry', ...);
$curry -> setOrderCount(3);

echo $curry -> getOrderCount(); //3

Initial Values of Properties
Let's make the initial value of the orderCount property 0. 
When defining a property, you can set the initial value as 
shown below.

class Menu{
          private $orderCount = 0; 

          public function getOrderCount() {
                    return $this -> orderCount;
          }

          public function setOrderCount($orderCount) {

                    $this -> orderCount = $orderCount;
          }
}

-: Let's Order Food!
We will specify the quantity per menu and enable the user to order the food.

Let's Create the Form!
Let's use HTML <form> and <input> tags to allow the user to order 
each menu with a specific number of items. Here, we will specify the 
value of the name property of the Menu instance in the <input> tag 
name attribute.
The name attribute of the <input> tag is used to receive the value

index.php
<form method="post" action="confirm.php">
          <span>Qty:</span>

          <input name="<?php echo $curry -> getName() ?>">

          <input type = "submit" value="Order">
</form>

Initial Values for <input>
You can set the initial value using a value attribute in the <input> tag. 
The initial value that you specify will be displayed inside the textbox 
at the beginning.

index.php
<form method="post" action="confirm.php">
          <span>Qty:</span>

          <input type='text' value='0' name="<?php echo $curry -> getName() ?>">

          <input type = "submit" value="Order">
</form>

-: Let's Make an Order Confirmation Page!
From here, we will make an order confirmation page. First, 
we will receive the quantity from each of the orders and 
display them.

Receive the Values
You learned that you can receive the values submitted by 
the form with $_POST in PHP Study I. The name attribute
in the <input> tag refers to the name property of each Menu 
instance, so let's receive the value that was submitted using 
the name property.

confirm.php
<?php require_once('data.php') ?>

<p> <?php echo $_POST[$curry -> getName()] ?> </p>

<p> <?php echo $curry -> getName() ?> </p>

<!-- ------------------------------- -->

$orderCount = $_POST[$menu->getName()];

<?php echo $menu->getName() ?>

<?php echo $orderCount ?>

-: Calculate the Subtotals
First, calculate the subtotal of the orders using $orderCount 
(number of order) and the price including tax, then display it.

Calling Methods with $this
Let's access a method using $this. Below, we can see how the 
method is called when $curry is assigned to $menu.

confirm.php
<?php foreach($menus as $menu); ?>
          <p class= "order-price"> 
                    // Set the orderCount property of $menu to $orderCount using the setOrderCount method
                    $menu -> setOrderCount($orderCount);
                    
                    $<?php echo $menu -> getTotalPrice() ?> </p>

<?php endforeach ?>

Menu.php
class Menu{
          public fundtion getTaxIncludedPrice() {

          }

          public function getTotalPrice() {
                    return $this -> getTaxIncludedPrice() * $this -> orderCount;
          }
}



