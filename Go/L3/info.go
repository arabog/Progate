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
	fmt.Printf("Please input the following word: %s\n", question)
	fmt.Scan(&input)
	fmt.Printf("%s was input\n", input)
}


Show Question Number (2)
Let's also display the question number along with the question. 
You can pass multiple arguments using commas ,

func ask(number int, question string) {
	
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	
}

Passing Multiple Arguments:
When using multiple arguments, be careful about the order in which 
they're passed.

func main() {
	ask(1, "dog")
	ask(2, "cat")
	ask(3, "fish")
}


pass d questn numbers and questions in order
func ask(number int, question string) {}

Cautionary Point for Arguments
Pay attention also to the data types of the arguments.

Let's add one more argument to the ask function to 
print the question number.

package main

import "fmt"

func main() {
	// Pass 1 as a new argument
	ask(1, "dog")
	
	// Pass 2 as a new argument
	ask(2, "cat")
	
	// Pass 3 as a new argument
	ask(3, "fish")
}

// Edit the method to accept number as an argument
func ask(number int, question string) {
	var input string
	// Remove the 1 line below and paste the given code
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	
	fmt.Scan(&input)
	fmt.Printf("%s was input\n", input)
}

Return Values
You can return a value to the caller by using return values. 

Defining a Function
with a Return Value
The ask function returns 10 at the end of the process. 
You can return a value by using return returnValue.

func functionName (parameterName dataType) returnType {
	// code to be executed
}

func ask(number int, question string) int {
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)

	return 10		//return value of ask fxn
}

Receiving Return Values
A return value can be received by assigning it to a variable.

func main() {
	totalScore := ask(1, "dog")

	fmt.Println("Score", totalScore)
}

func ask(number int, question string) int {
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)

	return 10		//return value of ask fxn
}


Let's add a return value to the ask function so that we can 
print the total of the scores.
First, let's make sure that the ask function can return a 
return value.

package main

import "fmt"

func main() {
	// Assign the return value to totalScore
	totalScore := ask(1, "dog")

	// Paste the given code specified in the instruction
	fmt.Println("Score", totalScore)
	
}

// Set the type of the return value
func ask(number int, question string) int {
	var input string
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	fmt.Scan(&input)
	fmt.Printf("%s was input\n", input)
	// Return 10 as the return value
	return 10
	
}

Calculation of the Score
As you solve the problem, the score should be added and the total 
score should be printed at the end. The score will be calculated 
based on the correct and incorrect answer. 

Calculate the Return Value
You can add the return value of the ask function by using +=

func main() {
	// Assign the return value to totalScore
	totalScore := ask(1, "dog")
	totalScore += ask(2, "cat")
	totalScore += ask(3, "fish")

	fmt.Println("Score", totalScore)
	
}

Let's use the return value to calculate the score.

package main

import "fmt"

func main() {
	totalScore := ask(1, "dog")
	// Add the return value from the ask function to the totalScore
	totalScore += ask(2, "cat")
	totalScore += ask(3, "fish")
	
	fmt.Println("Score", totalScore)
	
}

func ask(number int, question string) int {
	var input string
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	fmt.Scan(&input)
	fmt.Printf("%s was input\n", input)
    
	return 10
	
}

How to Judge Correct or Incorrect Answers
A control flow to determine the correct and incorrect answer is 
shown below. It's judged by whether the input value is the same 
as the question.

func ask(number int, question string) int {
	var input string
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	
	fmt.Scan(&input)
	if question == input {
		fmt.Println("Correct")
	}else {
		fmt.Println("Incorrect")
	}
	
	fmt.Printf("%s was input\n", input)
    
	return 10
	
}


Send Back the Return Value
Let's use a variable to receive the return value. When
 the answer is correct, return 10 and if it's incorrect, 
 return 0. Then we add the returned value to the 
 totalScore variable in the main function

func ask(number int, question string) int {
	var input string
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	
	fmt.Scan(&input)
	if question == input {
		fmt.Println("Correct")
		return 10
	}else {
		fmt.Println("Incorrect")
		return 0
	}
	
	fmt.Printf("%s was input\n", input)
    
	return 10
	
}


Use the control flow to determine the score depending 
on the correct and incorrect answer.

package main

import "fmt"

func main() {
	totalScore := ask(1, "dog")
	totalScore += ask(2, "cat")
	totalScore += ask(3, "fish")

	fmt.Println("Score", totalScore)
}

func ask(number int, question string) int {
	var input string
	fmt.Printf("[Question %d] Please input the following word: %s\n", number, question)
	fmt.Scan(&input)

	if question == input {
		// Add the process where the word in the question matches the input value
		fmt.Println("Correct!")
		
		return 10
	} else {
		// Add the process where the word in the question doesn't match the input value
		fmt.Println("Incorrect!")
		
		return 0
	}
}



Scope:
Calculation of the Score (2)
if you try to use the totalScore variable defined in the main function 
within the ask function without using the return value, it'll cause 
an error.

func main() {
	totalScore := 0

	ask(1, "dog")
	ask(2, "cat")
	ask(3, "fish")

	fmt.Println("Score", totalScore)
}

func ask(number int, question string) {

	if question == input {
		fmt.Println("Correct")
		totalScore += 10 	//ds will return an undefined error
	}else {
		fmt.Println("Incorrect!")
	}
}

Scope of the Variable:
The error occurs because the totalScore variable defined in the 
main function can only be used in the main function. Variables 
have a range of use, and this range is known as the scope of 
the variable.




#Progate @progateEN @dev_careers #dev_careers

*/ 

 