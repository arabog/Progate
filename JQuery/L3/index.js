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

