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


-: Directly Declaring the Callback Function
Declaring the Function Within the Argument
Earlier, we passed a callback function that was already defined, 
but functions can also be defined directly within arguments.

const call = (callback) => {                      (2)
          console.log('Calling the callback function');

          callback();                   (3)
}

call(() => {
          console.log('Ken the Ninja');
})

Flow When Declaring Functions Within Arguments
The flow is the same as when the function is pre-declared.


-: Arguments of Callback Functions
Passing Arguments
Just like ordinary functions, callback functions can take arguments.

const call = (callback) => {                      (2)
          callback('Ken the Ninja');                   (3)
}

call((name) => {
          console.log(name);
})

Passing Multiple Arguments
More than two arguments can be passed.

const call = (callback) => {                      (2)
          callback('Ken the Ninja', 14);                   (3)
}

call((name, age) => {
          console.log(`${name} is ${age} years old.` );
})


*/ 

