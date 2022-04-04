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


-: Making hover Events
You can use the hover event to display the text description 
bout each lesson when the mouse hovers over the lesson icon.

Preparing hover Events
Let's prepare the hover event as follows:
(1) add a class called lesson-hover to each lesson icon
(2) set the hover event for .lesson-hover in script.js.

<div class='lesson lesson-hover'></div>

$('.lesson-hover').hover(
          function() {},

          function() {}
)

<!-- Add a class called "lesson-hover" -->
          <div class="lesson">
                    <div class="lesson-icon">
                              <img src="https://prog-8.com/images/html/advanced/html.png">
                              <p>HTML & CSS</p>
                    </div>

                    <p class="text-contents">Languages used to build and design the appearances of your websites. HTML adds the structure, and CSS styles it.</p>
          </div>

          <!-- Add a class called "lesson-hover" -->
          <div class="lesson">
                    <div class="lesson-icon">
                              <img src="https://prog-8.com/images/html/advanced/jQuery.png">
                              <p>jQuery</p>
                    </div>

                    <p class="text-contents">A fast, feature-rich and easy-to-use JavaScript library that handles animations and Ajax requests.</p>
          </div>

          <!-- Add a class called "lesson-hover" -->
          <div class="lesson">
                    <div class="lesson-icon">
                              <img src="https://prog-8.com/images/html/advanced/ruby.png">
                              <p>Ruby</p>
                    </div>

                    <p class="text-contents">A dynamic, general-purpose language that is simple and productive. It is commonly used to build web applications.</p>
          </div>

          <!-- Add a class called "lesson-hover" -->
          <div class="lesson">
                    <div class="lesson-icon">
                              <img src="https://prog-8.com/images/html/advanced/php.png">
                              <p>PHP</p>
                    </div>

                    <p class="text-contents">An open source scripting language that can be embedded into HTML, and well suited for web development.</p>
          </div>


-: Overview of hover Events
We will use the text-active class shown below to display/hide 
the text when the mouse hovers over a lesson icon. To do this, we will:
(1) add .text-active{display: block;} in the CSS.
(2) add the text-active class on mouse-enter.
(3) remove text-active class on mouse-leave.

.text-contents {
          display: none;
}

.text-active {
          display: block;
}

addClass Method
The addClass() method allows you to add a class to an element. 
Using the addClass() method, you can add the class text-active 
to an element with the text-contents class.

$('.text-contents').addClass('text-active');

removeClass() Method
On the other hand, using the removeClass() method, you can 
remove a class from an element. The example below shows 
how to remove the text-active class from the element with 
the text-contents class.

$('.text-contents').removeClass('text-active');

$('.lesson-hover').hover(
          function() {
                    // Find the "text-contents" elements, then add the "text-active" class
                    $(this).find('.text-contents').addClass('text-active');
          },

          function() {
                    // Find the "text-contents" elements, then remove the "text-active" class
                    $(this).find('.text-contents').removeClass('text-active', '1000');
          }
);

*/ 
