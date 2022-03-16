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