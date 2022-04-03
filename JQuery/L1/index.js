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


-: class and id
Let's learn about the id attribute. It's very similar to classes 
that we learned in HTML, but unlike classes, the same id 
cannot be used more than once.

Making class and id Selectors
You can add . in front of the class name, and # in front of 
the id name to turn attributes into selectors.
Since ids can't be duplicated, jQuery can process them faster 
than classes. So, let's use them when we only want to change one element.

<ul id='list'>
          <li class='list-item'>List 1</li>
          <li class='list-item'>List 2</li>
</ul>

$('#list').css('margin', '20px');

$('.list-item').css('color', 'red')

$(function() {
          // Use the slideUp() method to hide the element with the id "title"
          $('#title').slideUp();
          
          // Use the fadeOut() method to hide the element with the class "lesson-item"
          $(".lesson-item").fadeOut();
});


-: The display Property
CSS has what is called the display property. You can use this property 
to hide elements by default, like: display: none;.

Displaying Hidden Elements
The show() method allows you to display hidden elements, like 
$('selector').show();. It's a good idea to remember the show() 
and hide() methods as a pair since they are often used in 
combination.

img {
          display: none;
}

$('img').show();

Showing Elements with Animations
As the counterpart of the fadeOut() method, there is the fadeIn() 
method. And as the counterpart of the slideUp() method, there 
is the slideDown() method. Both methods can display hidden 
elements with animations.

$('selector').fadeIn();

$('selector').fadeIn('slow');


-: Events
With events, you can set the specific timing to perform a certain action. 
For example, you can specify an event to be executed whenever someone 
clicks a button on the web page.
The syntax for events is as follows: $('selector').event(function(){ });

click Event
Using the click event, you can specify an event to occur when 
the selector is clicked. For example, you can add an event to 
hide some text when a button is clicked.

<div id='hide-text'> Hide text </div>
<p id='text'> Click the button to hide the text. </p>

$('#hide-text').click(function() {
          $('#text').hide();
});


-: css() Method
The css() method allows you to modify CSS using jQuery.
To use this method, set the CSS property to the first argument, 
and the value of the property to the second argument.

$('selector').css('property', 'value');

Changing Color with css() Method
Let's take a look at an example. You can change the color of 
text to red using the css() method, like $('p').css('color', 'red');.
You can also change any other css properties like width or font-size.

$('p').css('color', 'red');

Hiding Elements with the css() Method
You can change the value of the display property using the css() 
method. $('selector').css('display', 'none'); works exactly the same 
as the hide() method. Remember that both the hide() method and 
show() method only change the value of the display property.

$('h1').css('display', 'none');

$('img').css('display', 'block');

$(function() {
          // Add click() method for #change-css
          $("#change-css").click(function() {
                    $('#text').css('color', 'red');
                    $('#text').css('font-size', '50px');
          })
});


-: Changing HTML 
 text Method
With jQuery, you can also change the text inside an HTML element 
using the text() method. You use the text() method as follows: 
$('selector').text('new text');.

<p>Hello</p>

$('p').text('Goodbye');

html Method
The html() method can change the content inside an HTML element 
with another HTML element. Unlike the text() method, the html() 
method recognizes its argument as HTML. Therefore, you can add 
arguments like: <span>Goodbye</span>,

$('p').html('<span>Goodbye</span>');

$(function() {
          // Add a click() method for #change-text
          $('#change-text').click(() => {
                    $('#text').text('Hello, Progate!');
          })
          
          // Add a click() method for #change-html
          $('#change-html').click(() => {
                    $('#text').html('<a href="https://progate.com/">Hello, Progate!</a>')
          })
});

*Make sure to enclose the <a> tag in single quotes. If you 
enclose it in double quotes, the URL wont be recognized.






*/ 