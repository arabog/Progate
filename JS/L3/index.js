/* What’s a Function?
A function is a set of instructions.

Defining a Function
To make a function, you need to define it. To define a function, 
writefunction() and then write what you want the function to do 
inside the braces {}

const functionName = function() {}

Calling Functions
Function definitions are necessary, but you have to call a function 
to actually use it. To call the function in the example below, just 
write introduce();.

const introduce = function() {
          console.log('Hello');
          console.log('I am Ken the Ninja');
}

introduce(
          

-: Assigning Functions
Let's take a closer look at functions. In the function definition above, 
we define functions by assigning them to a constant. 

const hello = function() {
          console.log('Hello!');
          console.log(' I am babs');
}

hello();


-: Arrow Functions
As shown below, it's also possible to define a function with () => 
instead of function(). This is an easier way of defining a function, 
which is a new feature of ES6. Functions defined this way are known 
as arrow functions.

const hello = () => {
          console.log('Hello!');
          console.log(' I am babs');
}

Arrow functions don't require any other changes to the definition 
besides replacing function with () =>. There's also no difference 
when you call functions defined this way. 


-: What are Arguments?
Data values passed to functions are known as arguments. You can use 
these values inside the function by passing the value when you call the 
function.

Defining Function with Arguments
Let's define a function that can receive parameters. The values passed 
when you call a function are known as arguments, but the variables 
written in the definition are known as parameters. 

const fxnName = (parameters) => {}
fxnName(argumts);

To call a function and pass arguments, write functionName(arguments). 
Functions accept the designated value and the value will be assigned to 
arguments

You can use arguments within functions just like constants and variables.


-: Functions with Multiple Arguments
Functions can receive multiple parameters. You can pass multiple 
arguments by writing them together in the parentheses and separating 
them with commas ,

const fxnName = (parameter1, parameter2, ...) => {}

Just like when you define multiple parameters, use a comma , to separate 
multiple arguments when you call a function. The arguments must be in 
the same order as the parameters because the function definition is used 
for the function call.

What are Return Values?
Next, we'll learn about using the results of a function at the place where 
it was called. The resulting value after a function is known as a return 
value. Most functions are used to send a return value back to where it 
was called.

Functions with Return Values
You can return a value by putting a return statement in a function by writing 
return value;. This will allow the function to return the output as a return value.

const add = (a, b) => {
          return a + b;
}

If a function has a return value, the function call will be replaced by the 
return value after the function finishes running. You can also assign a 
function call to a constant

const sum = add(1, 3);
console.log(sum);


-: Return Value Types
Just like arguments, you can use different value types for return values.
For example, a boolean (true or false) value will be returned if you use 
a conditional statement like the conditions used in if statements.

const check = (number) => {
          return number % 2 === 0;
}

console.log(check(6));
console.log(check(7));

Ending a Function with Return
Let's learn about return statements in more detail. You can also use 
return to exit a function. However, it's important to note that the code 
after return won't run.

const add = (a, b) => {
          return a + b;

          console.log('Calculated');              //doesn't run
}

const check = (number) => {
          return number % 3 === 0;
};


// Call the check function in the condition of the if statement
if ( check(123) ) {
          console.log("Multiple of 3");
} else {
          console.log("Not a multiple of 3");
}




*/

