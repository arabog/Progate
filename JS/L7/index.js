/*
Learning About Callbacks
In this lesson, you will learn about callback functions.

Why Callback Functions Are Important
const printKen = () => {
          console.log("Ken the Ninja");
};

const printMaster = () => {
          console.log("Master Wooly");
};

const call = (callback) => {
          console.log("Calling the callback function.");
          callback();
};

// Rewrite the argument as printMaster and confirm the output
call(printKen);
call(printMaster);


-: What Is a Callback Function?
Functions that are passed to other functions as arguments are 
called callback functions.

Argument Types
In JavaScript, functions can be passed as arguments.
Functions that are passed as arguments are called callback functions.
Just like strings, integers and booleans can be passed as argument
of a function.

function(argument);

Passing Callback Functions
As you can see in the figure below, the function printKen is passed 
as an argument when the function call is called.

const call = (parameterName) => {}

call(functionName);

const printKen = () => {}

const call = (callback) => {}
call(printKen);

Calling and Passing Functions
Functions are called by putting () after the function. Without (), 
the function simply points to its definition. Therefore, calling 
and passing functions are written differently.

const printKen = () => {
          console.log('Ken the Ninja')
}

const call = (callback) => {
          console.log('Calling the callback function');

          callback();         //calling d callback
}

call(printKen);     //don't add () wn passing d callback fxn

Flow of Callback Functions
Let us take a look at the process of calling the function printKen, 
which is passed as an argument to call.

const printKen = () => {
          console.log('Ken the Ninja')
}

const call = (callback) => {                      (2)
          console.log('Calling the callback function');

          callback();                   (3)
}

call(printKen);     (1)



*/ 
