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







*/

