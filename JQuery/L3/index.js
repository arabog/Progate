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
①Show the first slide on the initial state. On clicking the button 2,
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

②Hide the slide that's currently displayed (remove the active class from it).
③Show the second slide (add the active class to it).
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
① Get the index of the button that was clicked.
②Display the slide that corresponds with the index.

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








*/ 

// Making Navigation Bar
// Lastly, let's improve the previous page we made by implementing 
// the internal navigation bar.

// offset Method
// You can get the position of an element using the offset method. 
// This returns the distance from the top of the page and the distance 
// from the left edge of the page in the form of an associative array. 
// You can get the distance from the top of the page with offset().top.


// $('h1').offset();                       // {top: 180, left: 100}

// $('h1').offset().top;

