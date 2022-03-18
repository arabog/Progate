<!-- 
Object-Oriented Programming
In this lesson, we'll continue to look at Object-Oriented 
Programming (OOP). While making new classes and 
learning how to combine them, we'll add a function 
to display reviews for the food ordering service that 
we created in PHP Study III.


-->

-: Making a Details Page
From here, we'll be making a detail page (show.php) for 
each of the menus. In each detail page, we want to display 
the reviews for the item.

Making Links
To jump to the details page, we'll create a link with an <a> tag. 
We're going to link it to the page show.php.

index.php
<a href="show.php">
          <p> <?php echo $menu -> getName() ?> </p>
</a>


-: Giving Information to Link Destinations
We created a link to go to the show.php page. Clicking any 
menu will take you to the show.php page. However, the site 
will not know which menu you clicked, making it impossible 
to determine which menu details to display. We need to give 
show.php information on which menu was clicked.

Query Strings
It's possible to put in simple information by typing 
key=value after the ? at the end of the URL. This is 
called a query string, and using this enables us to give 
information to the link destination. By using query 
strings, show.php will know which menu's details 
page it should display.

index.php
<a href="show.php?name=<?php echo $curry -> getName() ?>" >
          <?php echo $menu -> getName() ?>
</a>

$_GET
In order to receive query strings, $_GET is used. The query 
string is included inside $_GET as an associative array. 
This means that a value can be taken out using $_GET['key'].

index.php
                                 key         value
<a href="show.php?name=CURRY" >
          CURRY
</a>

show.php
echo $_GET['name']; //name specify d key to retrieve d value

soln
<?php
          // Receive the query data using $_GET, and assign it to the $menuName variable
          $menuName = $_GET['name'];
?>

<!-- Print the $menuName variable -->
<h1><?php echo $menuName ?> details page</h1>


-: Making Content for the Details Page
Here, we'll display the details of the menu (name, price, etc.) that 
is clicked. Therefore, it's necessary to retrieve the Menu instances. 
Presently, show.php knows the name of the menu that must be 
displayed from $_GET. So let's make a method that will get the 
instance from the name property.

Obtaining Menu Instances
Using the value of the name property, we're going to create a class 
method findByName that will get a particular Menu instance from 
the $menus array. Let's look at how to create the findByName method.

show.php
$menus = array($juice, $coffee, $curry, $pasta);

$menu = Menu.findByName($menus, 'CURRY');

echo $menu -> getName(); // CURRY

menu.php
class Menu {
          public static function findByName($menus, $name) {}
}

return
In order to implement the findByName method, it's necessary 
to gain new knowledge about return. We learned that return 
returns values in PHP Study I. As a matter of fact, return not 
only returns a value but also ends functions and methods at 
the point where it's called.

function getLargeNum($num1, $num2) {
          if($num1 > $num2) {
                    echo '$num1 is greater than $num2';

                    return $num1;
          }

          if return in d if statement is called, ds code wont be executed
          echo '$num2 is greater than or equal to $num1';
          return $num2;
}

$result = getLargeNum(5, 1);
echo $result;       //5

Implementing findByName
If the findByName method was called, If there is an instance 
that matches the name during the iteration, it returns that 
instance as the return value and ends the process, so there 
will be no further iteration.

menu.php
class Menu {
          public static function findByName($menus, $name) {
                    foreach($menus as menu) {

                              if d name ppty of d instance matches $name, 
                              return dt instance
                              if($menu -> getName() == $name) {
                                        return $menu;
                              }

                    }
          }
}

show.php
// Call the findByName method of the Menu class
$menu = Menu:: findByName($menus, $menuName);


-: Making a Review Class
From here, we'll display reviews on the detail page. We 
want each review to be considered an instance of the 
Review class, so let's create a Review class! In the 
Review class, we'll define the $menuName property 
which refers to what menu's review it is and the $body 
property which is the content of the review.

review.php
class Review {
          private $menuName;

          private $body;
}

-: Review Instances
Since we created a Review class, we'll create instances based on 
the Review class.

Let's import the review.php file to use the Review class in data.php.

// Assign an instance of the Review class to the $review1 variable
$review1 = new Review($juice -> getName(), 'Yummy');

// Assign an instance of the Review class to the $review2 variable
$review2 = new Review($curry -> getName(), 'Very hearty');

-: Displaying the Reviews
Let's display the reviews on the details page. For now, we will 
display the reviews of all of the menus on all of the detail pages.

show.php
Write a foreach statement to iterate through $reviews, and use 
review  as the variable to assign value of the element.
(Don't forget the endforeach!)

   <!-- Write the foreach loop below -->
<?php foreach($reviews as $review): ?>
          <h3><?php echo $review->getMenuName() ?></h3>

          <p><?php echo $review->getBody() ?></p>
<?php endforeach ?>


-:Getting the Reviews
Let's only display the reviews that are related to each detail page. 
Using the name property of Menu class and the menuName property 
of Review class, we'll create a method named getReviews to get the 
related Review instances.

show.php
$curry = new Food('Curry', ...);
$reviews = array ($review1, $review2, $review2);

$curryReviews = $curry -> getReviews($reviews);

Implementing getReviews
The getReviews method is written as shown below. First, 
we prepare a blank array named $reviewsForMenu and start 
adding Review instances with names that match the Menu 
instance's name. Then, we'll return the array of $reviewsForMenu. 
Look back at PHP Study I if you forget how to add elements to an 
array.

menu.php
public function getReviews($reviews) {
          $reviewsForMenu = array();
          
          foreach($reviews as $review) {
                    if($review -> getMenuName() == $this ->name) {
                              $reviewsForMenu[] = $review;
                    }
          }

          return $reviewsForMenu;
}

Let's make it possible for a Menu instance to get a Review 
instance that is related to it.

$review1 = new Review($juice->getName(), 'Yummy');
$review2 = new Review($curry->getName(), 'Very hearty');
$review3 = new Review($coffee->getName(), 'Smelled so nice');
$review4 = new Review($pasta->getName(), 'The sauce was really good :)');
$review5 = new Review($juice->getName(), 'Just a plain old orange juice');
$review6 = new Review($curry->getName(), 'Tasted good for its price');
$review7 = new Review($coffee->getName(), 'The bitterness was just right.');
$review8 = new Review($pasta->getName(), 'Finely selected ingredients.');

show.php
<?php $menuReviews = $menu -> getReviews($reviews) ?>
          <!-- Change $reviews to $menuReviews in the foreach loop -->
          <?php foreach($menuReviews as $review): ?>

          <div class="review-list-item">
                    <p><?php echo $review->getBody() ?></p>
          </div>
<?php endforeach ?>

-: Displaying User Names
From here, we'll make each review display the information about 
the user who wrote that review.

Making the User Class
Since we want to regard each user as an object and make an instance 
for each person, we first need to create a User class. In the User class, 
we will define the property for the name of a user as name and the 
property for their gender as gender.

user.php
class User {
          private $name;

          private $gender;
}














-:




-:






-:




-:






-:




