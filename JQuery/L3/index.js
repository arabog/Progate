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

