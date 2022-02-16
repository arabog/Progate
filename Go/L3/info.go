/*
Typing Game and String Input
fmt.Scan:
We can use fmt.Scan(&variableName) to input and read 
the input values. The input value is assigned to the 
variable input 

var input string
fmt.Scan(&input)

E.g:
package main

import "fmt"

func main() {
	// Declare the input variable of type string
	var input string
	
	// Print "Please input the following word: dog"
	fmt.Println("Please input the following word: dog")
	
	// Use Scan to read the input value
	fmt.Scan(&input)
	
	// Print the input value
	fmt.Printf("%s was input", input)
}

Functions:
A function is a collection of processes. If we put the processes together 
in a function, we can use it as many times as we want later on.

Creating Functions:
You can create function by writing: func functionName(). The process 
of the function will be written inside the { } after the function definition.

func functionName() {
	// code to be executed
}

Calling a Function:
Just defining a method doesn't execute the process inside it. As shown 
in the image below, we execute the process of the function by writing 
functionName().

func main() {
	ask()	// call d ask fxn
}

func ask() {
	var input string
	
	fmt.Println("Please input the following word: dog")
	
	fmt.Scan(&input)
	
	fmt.Printf("%s was input", input)
}

The Basics of Functions
main Function:
In fact, the part of func main() {...} that we've been writing up 
until now is known as a main function. The main function is a 
special function that's called first when the program is executed.

Order in Writing Functions
There is no particular order in which the functions are defined. 

func ask() {
	var input string
	
	fmt.Println("Please input the following word: dog")
	
	fmt.Scan(&input)
	
	fmt.Printf("%s was input", input)
}

func main() {
	ask()	// call d ask fxn
}


Calling a Function
Multiple Times:
The advantage of functions is that you can define them once, 
and perform the same operation as many times as you like. 

func main() {
	ask()	// call d ask fxn
	ask()
	ask()
}

Passing Arguments
When you call a function, you can pass a value to the () of 
the function. The value passed is also known as an argument.

func main() {
	ask("dog")
	ask("cat")
}

Receiving Arguments:
In order to use the passed value, the function needs to prepare 
a variable to receive it. The variable used to receive the value 
is commonly known as a parameter.

func main() {
	ask("cat")
}

Using Arguments
The passed value can be used by making use of the received variable 
(parameter). 

//question = parameter name, string = data type
func ask(question string) {	
	fmt.Printf("Please input the following: %s\n", question)
}

Pass Variable as an Argument
You can also pass a value of a variable to a function as an argument.

func main() {
	text := "cat"
	ask(text)
}

func ask(question string) {	
	fmt.Printf("Please input the following: %s\n", question)
}


E.g:
We'll be asking the question 3 times. Let's add a parameter 
to the ask function and actually change the question.

package main

import "fmt"

func main() {
	// Call the ask function 3 times with an argument
	ask("dog")
	ask("cat")
	ask("fish")
	
}

// Edit the method to accept an argument
func ask(question string) {
	var input string
	// Change the following code to use fmt.Printf
	fmt.Printf("Please input the following word: %s\n", question)
	fmt.Scan(&input)
	fmt.Printf("%s was input\n", input)
}




#Progate @progateEN @dev_careers #dev_careers

*/ 