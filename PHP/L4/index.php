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









-:





-:






-:




-:






-:




-:






-:




-:






-:




-:






-:




