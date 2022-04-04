/*
jQuery Implementation
Adding jQuery to Your Page
To use jQuery, you need to load the jQuery library. You can do 
this by loading the URL in the <head> tag (see the example below).
It's common for libraries to be loaded via the Internet like this.

<script src='https://...jquery.min.js'></script>

You will be writing jQuery in a .js file. To load that file in your HTML 
file, you can use the following syntax: <script src="filename.js"></script>.
The <script> tag should be placed directly above the closing </body> tag.

<script src='script.js'></script>

Document Ready Event
Since jQuery changes HTML elements, you need to make sure 
that the HTML document is loaded before running any jQuery 
code. You can do this by writing your jQuery code inside the 
ready event. The syntax for the ready event is $(document).ready(), 
or you can use the shorthand syntax $(function(){});

Basic setup:
<!DOCTYPE html>
<html>
          <head>
                    <meta charset="utf-8">
                    <title>Progate</title>
                    <link rel="stylesheet" type="text/css" href="stylesheet.css">
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
                    <!-- Use the <script> tag to load jQuery -->
                    <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>
          </head>
          <body>

                    <!-- Use the <script> tag to load script.js -->
                    <script src='script.js'></script>
          
          </body>
</html>


-; Creating Modals
Let's create a modal that you can display or hide by clicking a 
button. A modal is an element that is displayed/hidden based 
on actions like click events.

Displaying Modals
The steps will be: 
(1) hide the modal by default using CSS 
(2) set a click event on the login button, and 
(3) display the modal in the click event.

.login-modal-wrapper {
          display: none;
}

script.js
$('#login-show').click(function() {
          $('#login-modal').fadeIn();
})

<div class="modal">
          <div id="login-form">
                    <h2>Log in with email</h2>

                    <form action="#">
                              <input class="form-control" type="text" placeholder="Email">
                              <input class="form-control" type="password" placeholder="password">
                              
                              <div id="submit-btn">Log in</div>
                    </form>
          </div>
</div>


-: Modal Signup Form
Let's also create a modal for the signup form. Unlike the login modal, 
we have two buttons to open the signup modal. Since we want to set 
the same click event in two places, we will use a class instead of an 
id for these buttons.

Displaying Modal Signup Form
The following three steps are required to display the signup modal:
(1) add the same class to each signup button.
(2) add a click event for the class.
(3) use the fadeIn() method to display the signup modal.


-; Closing the Modals
We should also to add a button to close the modals. We'll 
set the click event on the close button and hide the modal 
using the fadeOut method.

$('.close-modal').click(function() {
          $('#login-modal').fadeOut();
});

Hiding Two Modals
Although there are two modals, login, and signup, you can use 
the same "close-modal" class to close them. We will:
(1) add the same class to the close buttons in login and signup modals.
(2) use the fadeOut() method to hide both modals.

$('.close-modal').click(function() {
          $('#login-modal').fadeOut();

          $('#signup-modal').fadeOut();
});

<!-- Add a class called "close-modal" -->
<div>
          <i class="fa fa-2x fa-times"></i>
</div>











*/ 


