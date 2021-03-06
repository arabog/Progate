/*
-: Mastering jQuery
In this lesson, you will become a master of jQuery through learning new 
and useful techniques.

Making Slides
Structure of jQuery Objects
A jQuery object is similar to an array. Elements that match the 
selector are included in a jQuery object. You can see below how 
the structure is like an array (but the functionality is a little 
different).

eq Method
Using the eq method, you can get an element at an index number 
in a jQuery object by inputting the index as an argument eq(index).

$('li').eq(2).css('color', 'red');

<div class="hide-btn-wrapper">
          <div class="hide-btn" id="hide-btn">Hide the 2nd slide (the rainy season)</div>
</div>

<ul class="slides">
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/spring.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/rainy.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/autumn.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/winter.jpg"></li>
</ul>

$(function() {
          // Create a click event for the #hide-btn element
          $('#hide-btn').click(function() {
                    $('.slide').eq(1).fadeOut();
          });
});


-:  Creating Slides
Here, we will start making slides. Let's first make parts of the buttons. 
When you click a button, the slide corresponding to its number should 
be displayed.

Structure of Slides
Let's see how to implement the slide function.
We will first hide the .slide element using display: none;, and only display 
a .slide element with the active class. We will use jQuery to move around 
this active class and determine which to display.

<li class='slide'><img src='...'></li>
<li class='slide active'><img src='...'></li>
<li class='slide'><img src='...'></li>
<li class='slide'><img src='...'></li>

style.css
.slide {
          display: none;
}

.active {
          display: block;
}

We'll implement the following actions:
???Show the first slide on the initial state. On clicking the button 2,
  <ul class="slides">
          <!-- Add the active class to only the first .slide element -->
          <li class="slide active"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/spring.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/rainy.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/autumn.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/winter.jpg"></li>
</ul>

.slides {
          padding: 0;
}

.slide {
          display: none;
}

.active {
          display: block; 
}

???Hide the slide that's currently displayed (remove the active class from it).
???Show the second slide (add the active class to it).
$(function() {
          $('#second-btn').click(function() {
                    // Remove the active class from the .active element
                    $('.active').removeClass('active');
                    
                    // Add the active class to the 2nd .slide element
                    $('.slide').eq(1).addClass('active');
          });
});


-: index Method (1)
How should we get the index number of the element with active 
class in the figure below? This can be done easily using the index method.
By using the index method as shown on the right, you can get the index number 1 of the li element that has the class active.

<ul>
          <li>HTML</li>
          <li class='active'>CSS</li>
          <li>jQuery</li>
</ul>

$('li').index($('.active'));

Let's get the index number of the clicked element in the click event. 
$(this) contains the element you clicked on. By specifying $(this) 
as an argument of the index method, you can get the index number 
of the clicked element.

$('li').click(function() {
          var index = $('li').index($(this));
})

We'll implement the following: 
??? Get the index of the button that was clicked.
???Display the slide that corresponds with the index.

<ul class="slides">
          <li class="slide active"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/spring.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/rainy.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/autumn.jpg"></li>
          <li class="slide"><img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/winter.jpg"></li>
</ul>

$(function() {
          $('.index-btn').click(function() {
                    $('.active').removeClass('active');
                    
                    // Declare the clickedIndex variable and assign it the value of the button that is clicked
                    var clickedIndex = $('.index-btn').index($(this));
                    
                    // Replace the eq method's argument with the clickedIndex variable
                    $('.slide').eq(clickedIndex).addClass('active');
          });
});


-: Displaying Slides One by One
Let's implement the Previous button and Next button on the slide page 
so that we will be able to display slides one by one.

prev and next
We will implement the buttons using the prev method and the next 
method. The prev and next methods can retrieve the element one 
before or after the sibling element (element of same hierarchy) of 
the jQuery object, respectively.

<ul>
          <li>prev</li>
          <li id='center'>center</li>
          <li>next</li>
</ul>

$('#center').prev().css('color', 'red');
$('#center').next().css('color', 'blue');

  $('.change-btn').click(function() {
          // Declare the $displaySlide variable
          var $displaySlide = $('.active');
          
          // Remove the active class from the $displaySlide variable
          $displaySlide.removeClass('active');
          
          // Use an if-else statement to add the active class to either
          // the element before or after the $displaySlide
          if($(this).hasClass('next-btn')) {
                    $displaySlide.next().addClass('active');
          } else {
                    $displaySlide.prev().addClass('active');
          }
});


-: Hiding Buttons
You may want to hide the "Previous" button when the first slide is 
displayed and the "Next" button when the last slide is displayed.

Conditional Branching
In order to decide whether each button is displayed, let's make c
onditional branching as shown below. We will implement slide 
index numbers and combinations of if... else if

if( d 1st slide is displayed) {
          // hide d 'prev' btn
} else if (d last slide is displayed) {
          // hide d 'next' btn
}

$(function() {
          $('.index-btn').click(function() {
                    $('.active').removeClass('active');
                    var clickedIndex = $('.index-btn').index(this);
                    $('.slide').eq(clickedIndex).addClass('active');

                    // 1. Store the index number of the .active element in the slideIndex variable
                    var slideIndex = $('.slide').index($('.active'));

                    // 3. Display the change-btn element
                    $('.change-btn').show();

                    // 2. Use an if-else statement to hide/show the .change-btn element
                    if(slideIndex == 0) {
                              $('.prev-btn').hide();
                              $('.next-btn').show();
                    } else if (slideIndex == 3) {
                              $('.prev-btn').show();
                              $('.next-btn').hide();
                    }
          });

          $('.change-btn').click(function() {
                    var $displaySlide = $('.active');
                    $displaySlide.removeClass('active');

                    if ($(this).hasClass('next-btn')) {
                              $displaySlide.next().addClass('active');
                    } else {
                              $displaySlide.prev().addClass('active');
                    }

                    // Write the same process as the click event for index-btn
                    var slideIndex = $('.slide').index($('.active'));

                    // 3. Display the change-btn element
                    $('.change-btn').show();

                    // 2. Use an if-else statement to hide/show the .change-btn element
                    if(slideIndex == 0) {
                              $('.prev-btn').hide();
                              $('.next-btn').show();
                    } else if (slideIndex == 3) {
                              $('.prev-btn').show();
                              $('.next-btn').hide();
                    }
          });
});


-: Functions for Duplicate Code
In the previous exercise, we wrote the same code twice (the click events). 
Let's create a function to summarize these events. We will put the 
duplicate code into a function called toggleChangeBtn().

function toggleChangeBtn() {
          var slideIndex = 
}

Calling Functions
The function is called in each click event where the overlapping code 
was used. In order to call a function, you just need to write its name.

toggleChangeBtn()

$(function() {
          // Define the toggleChangeBtn method
          function toggleChangeBtn() {
                    var slideIndex = $('.slide').index($('.active'));
                    $('.change-btn').show();

                    if (slideIndex == 0) {
                              $('.prev-btn').hide();
                    } else if (slideIndex == 3) {
                              $('.next-btn').hide();
                    }
          }
          
          $('.index-btn').click(function() {
                    $('.active').removeClass('active');

                    var clickedIndex = $('.index-btn').index($(this));
                    $('.slide').eq(clickedIndex).addClass('active');
                    
                    // Move the following code inside the toggleChangeBtn method and call it here
                    toggleChangeBtn();
          });
          
          $('.change-btn').click(function() {
                    var $displaySlide = $('.active');
                    $displaySlide.removeClass('active');

                    // Move the following code inside the toggleChangeBtn method and call it here
                    toggleChangeBtn();
          });
});


-: Modifying Slide Features
We have created the basic features of the slides, but there is still 
room for improvement. For instance, if the number of slides changes, 
the function to hide the "Next" button will be broken. Let's modify our 
code to enable the "Next" button regardless of the number of slides.

if (slideIndex == 0) {

}else if (slideIndex == 3) {
          $('.next-btn').hide();
}

length
Using length, you can get the number of elements of a jQuery object.

 function toggleChangeBtn() {
          var slideIndex = $('.slide').index($('.active'));
          $('.change-btn').show();

          if (slideIndex == 0) {
                    $('.prev-btn').hide();
                    // Replace the "3" in the code below using the length method
          } else if (slideIndex == ($('.slide').length - 1)) {
                    $('.next-btn').hide();
          }
}


-: Manipulating the Form
In this exercise you will learn how to retrieve information from HTML 
using jQuery.

text Method
In jQuery I, we learned about the text method, which sets the text of 
an element to the argument you specify. You can also get the text in 
the element with the text method by not inputting any arguments.

setting d text of an element
$('h1').text('Hello');

getting d text of an elemt
var text =$('p').text();

html Method & css Method
In jQuery, methods which set values are usually also available for 
getting values. You can also use the html and css methods 
to get values.

<div id='main'>
          <h1> Ken the Ninja </h1>
</div>
h1 {
          font-size: 28px;
}

getting d HTML of an element
var html = $('#main').html();

getting d css ppty of an elemt
var html = $('h1').css('font-size');

<div class="section-title">
          <h3 id="title">About Ken the Ninja</h3>
</div>

<div class="output-inner">
          <p class="output-item">Title: <span id="title-text"></span></p>
</div>

$(function() {
          var $title = $('#title').text();
          
          $('#title-text').text($title);
});


-: Attributes of HTML
HTML tags can be specified with class, id, src, etc. These are called attributes.


-: attr Method
You can get and set an attribute of HTML by using the attr method. 
For example, you can set an attribute by specifying the attribute 
name for the first argument and its attribute value for the second 
argument like attr('id', 'title'). If you don't specify the second argument, 
you can get the value of that attribute.

<h1> Hello </h1>
<a href='https://progate.com'>Link</a>

setting an attribute
$('h1').attr('id', 'title');

getting an attribute
var url=$('a').attr('href');  //get d href value (https://progate.com)

<div class="section-content">
          <p id="content"></p>
</div>

<div class="output-inner">
          <p class="output-item">Title: <span id="title-text"></span></p>
          <p class="output-item">Content ID: <span id="content-id"></span></p>
          <p class="output-item">Link:<span id="link-href"></span></p>
</div>

$(function() {
          var title = $('#title').text();

          // Declare 2 variables
          var id = $('.section-content p').attr('id');
          var href = $('#link').attr('href');
          
          $('#title-text').text(title);

          // Use the text method to display each of the variables
          $('#content-id').text(id);
          $('#link-href').text(href);
});


-: Getting Input Values
Let's get and display the contents of the form when a user enters in 
values and presses the submit button.

Input Values of Input Tag
Using the input tag, you can create a single line input field. The 
value entered in the input tag can be retrieved using the val method. 

<form>
          <div>Name:</div>
          <input id='name' type='text' >
</form>

var name = $('#name').val();

submit Event
A submit event is an event for the moment someone submits the 
form. Using the submit event, we enable the event to occur not 
only when the submit button is clicked but also when the "Enter" 
key is pressed.

$('form').submit(function() {

});

<form id="form" class="form">
          <div class="form-group">
                    <div>Characters: </div>

                    <select id="select-form" class="select-form">
                              <option value="0">- Select -</option>
                              <option value="1">1. Ken the Ninja</option>
                              <option value="2">2. Master Wooly</option>
                              <option value="3">3. Ben the Baby Ninja</option>
                    </select>  
          </div>

          <div class="form-group">
                    <div>Reason: </div>
                    <textarea id="text-form" class="text-form"></textarea>  
          </div>

          <button type="submit" class="btn btn-submit">Submit</button>
</form>

$(function() {
          // Create a submit event for the #form element
          $('#form').submit(function() {
                    var textValue = $('#text-form').val();
                    $('#output-text').text(textValue);

                    Now, since we aren't actually sending the values put into the form, add 
                    return false;  to the end of the submit event. 
                    return false;
          });
});

-: Input Values of Select Box
<select id="select-form" class="select-form">
          <option value="0">- Select -</option>
          <option value="1">1. Ken the Ninja</option>
          <option value="2">2. Master Wooly</option>
          <option value="3">3. Ben the Baby Ninja</option>
</select>  

var names = $('select-form').val();

<select id="select-form" class="select-form">
          <!-- Set the value attributes for each option from 0 to 3 in order (from the top) -->
          <option value='0'>- Select -</option>
          <option value='1'>1. Ken the Ninja</option>
          <option value='2'>2. Master Wooly</option>
          <option value='3'>3. Ben the Baby Ninja</option>
</select>  

$(function() {
          $('#form').submit(function() {
                    var selectValue = $('#select-form').val();
                    var textValue = $('#text-form').val();
                    
                    $('#output-select').text(selectValue);
                    $('#output-text').text(textValue);

                    return false;
          });
});


-: Check Form Inputs
Now we will implement the feature to check whether or not a form 
is completed when it's submitted. The val method gets the value 
entered into the form and shows an error if the form is empty

Structure of Error Message
In order to display an error message, we will use conditional branching

if (d input value is blank) {
          // show d error msg
} else {
          // hide d error msg
}

Empty String
A string with no content is called an empty string. It can be expressed 
as ' ' (two single quotes). If the val method gets an empty string, you 
know that no value was entered in the form. It's also possible set an 
element's text to an empty string using the text method.

if($('#text-form').val() == '') {
          // show d error msg
}

var textValue = $('#text-form').val();

// Display an error when textValue is empty
if (textValue === '') {
          $('#error-message').text('Please enter a reason!');
} else {
          $('#error-message').text('');
}


-: Auto-filling Form
Next, let's try to automatically set the value of the form. We will 
insert different text in the form based on the clicked button

<form>
          <div>Name:</div>
          <input id='name' type='text' >
</form>

$('#name').val('Ken the Ninja');

<div class="option-wrapper">
          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_baby_wanko.png">
                    <div class="option-btn" data-option="1">1. Ben the Baby</div>
          </div>

          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_wanko.png">
                    <div class="option-btn" data-option="2">2. Ken the Ninja</div>
          </div>

          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_hitsuji.png">
                    <div class="option-btn" data-option="3">3. Master Wooly</div>
          </div>
</div>

 // Create a click event for the .option-btn element
$('.option-btn').click(function() {
          var optionText = $(this).text();
          $('#text-form').val(optionText + ' is my favorite because ...')
});


-: Auto-filling Select Box
Next, let's automate the select box to select an option using the val method. 
Unlike the input tag, the select tag has limited options. We'll specify a value 
that matches the value attribute of an option tag for the argument of the 
val method.

<select id="select-form" class="select-form">
          <!-- Set the value attributes for each option from 0 to 3 in order (from the top) -->
          <option value='0'>- Select -</option>
          <option value='1'>1. Ken the Ninja</option>
          <option value='female'>2. Master Wooly</option>
          <option value='3'>3. Ben the Baby Ninja</option>
</select>  

$('#select-form).val('female')

Custom Data Attributes
You can also create your own attribute. This is called a custom data 
attribute, which you can name starting with data-. This data attribute 
is often used in jQuery because it's convenient for specifying 
information in the HTML.

<img src="image.jpg" >
<div data-option='puppy'>....</div>

get d 'src' attribute value of 'img'
$('img').attr('src');

get d 'data-option' attribute value of 'div'
$('div').attr('data-option');

Using Custom Data Attributes
Here, we'll set the attribute called data-option in the select button. 
Let's specify the values for it based on value attributes of the select 
box option tags. This allows us to specify the value for the select box 
by simply clicking a button.

<div class="option-wrapper">
          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_baby_wanko.png">
                    <div class="option-btn" data-option="1">1. Ben the Baby</div>
          </div>

          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_wanko.png">
                    <div class="option-btn" data-option="2">2. Ken the Ninja</div>
          </div>

          <div class="option-group">
                    <img class="option-image" src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/jquery/advanced/progate_hitsuji.png">
                    <div class="option-btn" data-option="3">3. Master Wooly</div>
          </div>
</div>

$('.option-btn').click(function() {
          var optionText = $(this).text();
          var clickedOption = $(this).attr('data-option');
          
          $('#text-form').val(optionText + ' is my favorite because ...');
          $('#select-form').val(clickedOption);
});


-: animate Method
Let's create an animation which enlarges the icon when you hover 
over it. Animation can be implemented using CSS, but here we'll 
try implementing it using jQuery.

Using animate Method
To animate an image, we'll use the animate method. This can be 
done by writing $('selector').animate ({'property': 'value'}). You 
can specify the duration of the animation in the second argument. 
The duration can be specified in milliseconds or as a string such 
as slow or fast.

$('h1').animate({
          'font-size': '50px'
}, 1000);

Review: hover Event
Unlike the click event, the hover event requires two arguments, 
separated by commas.

$('h1').hover(
          function() {
                    // mouse hovers on
          },

          function() {
                    // mouse hovers off
          }
)

<footer>
          <div class="container">
                    <div class="follow-us">
                              <a href="https://www.facebook.com/Progate-742679992421539" class="social-icon" target='_blank'>
                                        <span class="fa fa-facebook"></span>
                              </a>
                              <a href="https://twitter.com/progateEN" class="social-icon" target='_blank'>
                                        <span class="fa fa-twitter"></span>
                              </a>
                    </div>

                    <div class="copyright">??2016-
                              Progate
                    </div>
          </div>
</footer>

$(function(){
          
          // When the cursor is hovering over the .social-icon element, make the font-size 30px
          // And change the font-size to 24px when cursor stops hovering over the element
          $('.social-icon').hover(
                    function() {
                              $(this).animate({
                                        'font-size': '30px'
                              }, 300);
                    },
                    
                    function() {
                              $(this).animate({
                                        'font-size': '24px'
                              }, 300);
                    }
          )
});


-: Internal Links
A vertically long page such as a blog often has a "return to top" button 
which can move the user back to the top of the page.
Here, we'll be adding internal links to accomplish this.

Internal Links with <a> Tag
We can use <a> tags to create not only links to other pages, but also links 
within the page itself. We specify an id for the destination of the link and 
set the href attribute to #idName (ie, "#contact"). Clicking the <a> tag 
will move the user to the element of that id.

<a href='#contact'>Contact</a>
<div id='contact'></div>

scrollTop Method
You can implement internal links and animate the page transition 
using jQuery. The scrollTop method returns the vertical scrollbar 
position for the selected element by writing: 
$('element').scrollTop(pxValue);. Note that the scrollTop method 
is typically used on $('html, body').

<div class="header-title">
          <div id="top-btn" class="header-logo">Ken the Ninja's Room</div>
</div>

$('#top-btn').click(function() {
          $('html, body').scrollTop(0);

          // same as writing
          // $('html').scrollTop(0);
          // $('body').scrollTop(0);
})


-: Adding Animation
Let's add animation to the scroll. Using the animate method, you can 
change not only a CSS value but also the value for scrollTop.
Animation is implemented as follows: 
$('html, body').animate ({'scrollTop': 0}, duration);.

$('html, body').animate ({
          'scrollTop': 0
}, 'slow');.

$('#top-btn').click(function(){
          // Use the animate method to add a scroll animation
          $('html, body').animate({
                    'scrollTop': 0
          }, 500);

          $('html, body').scrollTop(0);
});


-: Making Navigation Bar
Lastly, let's improve the previous page we made by implementing 
the internal navigation bar.

offset Method
You can get the position of an element using the offset method. 
This returns the distance from the top of the page and the distance 
from the left edge of the page in the form of an associative array. 
You can get the distance from the top of the page with offset().top.


$('h1').offset();                       // {top: 180, left: 100}

$('h1').offset().top;

Getting Destination Using attr Method
Let's make each button an <a> tag and specify the destination's 
id in the href attribute. We can implement the internal links by 
getting the value of the href attribute using the attr method and 
getting the position of that element using the offset method.

<a class = 'scroll-btn' href='#html'>HTML</a>
<div id='html'></div>

$('.scroll-btn').click(function() {
          var id = $(this).attr('href');
          var position = $(id).offset().top;
})

<header>
          <div class="container">
                    <div class="header-title">
                              <div id="top-btn" class="header-logo">Ken the Ninja's Room</div>
                    </div>

                    <div class="header-menu">
                              <ul class="header-menu-right">
                                        <li>
                                                  <a href="#stamps">LINE Stamp</a>
                                        </li>

                                        <li>
                                                  <a href="#interview">Interview</a>
                                        </li>
                                        
                                        <li>
                                                  <a href="#contact">Contact Form</a>
                                        </li>
                              </ul>
                    </div>
          </div>
</header>


 $('header a').click(function() {
          var id = $(this).attr('href');
          
          var position = $(id).offset().top;
          
          $('html, body').animate({
                    'scrollTop': position
          }, 500);
})

*/ 

