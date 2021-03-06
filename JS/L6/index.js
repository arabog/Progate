/*
Array Methods
Let's learn about methods for working with arrays! With these methods, 
you'll be able to easily handle data with JavaScript.
The methods we'll cover in this lesson are very useful and essential knowledge 
for practical JavaScript development.

push
The push method is used to add a new value to an array.
Put the new value you want to add to an array in () right after the word 
push. The example below adds the value 4 to the end of the numbers array 
by passing it as an argument to the push method.

const numbers = [1, 2, 3];
numbers.push(4);


-: The forEach Method
The forEach method is used to repeat the same code for every value in 
an array, one at a time. Below is an example of how to print each value 
in the numbers array in order. 

numbers.forEach(number => console.log(number));

How forEach works
The argument of the forEach method is an arrow function which 
we introduced in the ES6 Study III. Each array value is assigned 
to the argument of the arrow function, one at a time, in order, and 
the code in the arrow function gets applied to each value.

How to Use forEach
Below is an example of how to use the forEach method.
Each value in the numbers array is assigned to the number 
argument in the arrow function one-by-one. Then, the code 
inside the arrow function (console.log(number)) will be 
repeated for each value.

const numbers = [1, 2, 3];
numbers.forEach((number) => console.log(number));

Callback functions
Functions that are written as an arguments in another function 
call are also called callback functions. 

                                        callback fxn
numbers.forEach(  (number) => console.log(number)  );

Multi-line Callback Functions
When a callback function is put in an argument like in the forEach 
method, the code can become too long. In this case, it's better to 
write your code as shown below. Using multiple lines after { will 
make the code easier to read and understand.

numbers.forEach( (number) => { 
          console.log(number)
});


-: The find Method
The find method gets the first value from the array that matches the 
given conditional expression. Below, the first value that is bigger 
than 3, in this case 5, is assigned to foundNumber, and then printed 
in the console

const numbers = [1, 3, 5, 7];

const foundNum = numbers.find((number) > {
          return number > 3;
})

console.log(foundNum);        //5

You can also use the find method with arrays of objects. As shown 
below, an object property can be used in the condition. In this case, 
find returns the entire object that contains the matching property.

const characters = [
          {id: 1, name: 'Ken the Ninja'},
          {id: 2, name: 'Master Wooly'},
]

const foundChar = characters.find((character) => {
          return character.id === 1;
})

console.log(foundChar);

======================

const numbers = [1, 3, 5, 7, 9];

// Find the multiples of 3 from the numbers array by using the find method, and assign them to the foundNumber constant
const foundNumber = numbers.find((number) => {
          return number % 3 === 0;
});

// Print foundNumber
console.log(foundNumber);


const characters = [
          {id: 1, name: "Ken the Ninja", age: 6},
          {id: 2, name: "Ben the Baby Ninja", age: 2},
          {id: 3, name: "Master Wooly", age: 100},
          {id: 4, name: "Birdie", age: 21}
];

// Find the object which id is 3 from the characters constant, and assign it to the foundCharacter constant
const foundCharacter = characters.find((character) => {
          return character.id === 3;
});

// Print foundCharacter
console.log(foundCharacter);


-: The filter Method
The find method allows you to get the first value that matches 
a certain condition. So, to get all values that match,  you will 
need the filter method. It allows you to get all values that match 
a condition.

The filter Method
To get all values that match a certain condition, use the filter method. 
It creates and returns a new array with all of the matching values. 
The example below shows how to get all values from the numbers array 
that are "greater than 3".

const numbers = [1, 3, 5, 7, 9];

// Find the multiples of 3 from the numbers array by using the find method, and assign them to the foundNumber constant
const filteredNumber = numbers.filter((number) => {
          return number > 3;
});

// Print filteredNumber
console.log(filteredNumber);

In the example, a value from the numbers array is assigned to 
the number argument. Next, the value is checked with the condition 
"number greater than 3" inside the filter method. Then, the values 
that matched are assigned to the filteredNumber constant as an array.

You can also use the filter method for arrays containing objects, 
just like find method. In the example below, an object property 
is used in the condition. In this case, the objects themselves are 
collected whenever the condition is true.

const characters = [
          {id: 1, name: "Ken the Ninja", age: 6},
          {id: 2, name: "Ben the Baby Ninja", age: 2},
          {id: 3, name: "Master Wooly", age: 100},
          {id: 4, name: "Birdie", age: 21}
];

const filteredCharacter = characters.filter((character) => {
          return character.age > 10;
})

console.log(filteredCharacter);

const numbers = [1, 2, 3, 4];

// Get all even numbers from numbers with the filter method, and assign them to the evenNumbers constant
const evenNumbers = numbers.filter((number) =>   { return number % 2 === 0 });
// // Print the value of evenNumbers
console.log(evenNumbers);


-: The map Method
How map Works
The map method applies the same code to every value in an array 
and returns a new array with the resulting values. As you can see 
below, the code creates a new array containing all values in the 
numbers array multipled by 2.

const numbers = [1, 2, 3];
const doubleNumbers = numbers.map((number) => {
          return number * 2;
});

console.log(doubleNumbers);

Below, each value in the numbers array is assigned to number 
in turn. After that, the code in the map method, "number times 2", 
is applied to each value and put in a new array, which is returned 
and assigned to the doubleNumber constant (array). Inside the 
callback function, write something like { return value }.

Just like with other methods, you can use map with an array 
of objects too. In the example below, the code in the map 
combines the firstName and lastName properties (string values) 
sing the map method.

const names = [
          {firstName: 'Kate', lastName: 'Jones'},
          {firstName: 'Brian', lastName: 'Smith'},
]

const fullNames = names.map((name) => {
          return name.firstName + name.lastName;
})

console.log(fullNames);






*/ 
