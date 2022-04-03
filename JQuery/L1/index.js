/*
Getting Started with jQuery!
Welcome to the world of jQuery!
The purpose of jQuery is to make it much easier to use JavaScript 
for building websites. You can create animations and design interactive 
web pages using jQuery.

jQuery, the JS Library
jQuery is a JavaScript library. It allows you to create various 
animation effects that HTML and CSS cannot accomplish alone. 
For example, jQuery can respond to events like clicks by hiding 
and showing HTML elements.

jQuery Structure
It's very simple and intuitive to work with jQuery: (1) creating a 
jQuery object and (2) calling a method (function) on that jQuery 
object.
Since jQuery is written in JavaScript, you need ; at the end of 
the sentence and use // for comments.

$('selector').method(argument);

create a jquery obj:        $('selector')                         //What
call a method:                method(argument)              //How

jQuery hide() Method
Methods are convenient functions that are available to jQuery 
objects. They allow you to change the HTML elements contained 
in jQuery objects. You can call a method like: $('selector').method().
Let's first try hiding an element using the hide() method.

$('h1').hide();


-: Hiding Elements with Animation (1)
The fadeOut() method is similar to the hide() method. The fadeOut() 
method allows you to animate elements to be hidden and specify the 
animation's speed as an argument inside (). You can specify the speed 
in milliseconds or with a character string (for example, "slow").

$('selector').fadeOut();

$('selector').fadeOut(1500);

You can also use the slideUp() method to hide elements with different 
effects. Like the fadeOut() method, you can specify the speed of the 
animation as an argument inside ().

$('selector').slideUp();

$('selector').slideUp(1500);

$(function() {
          // Use the fadeOut() method to hide <img> elements
          $('img').fadeOut();
          
          // Use the slideUp() method to hide <p> elements
          $('p').slideUp();
});


-: 

















*/ 
