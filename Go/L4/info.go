/*
Understanding Memory Addresses:
By utilizing pointers we shall be able to use variables outside 
it's defined scope

About Memory Addresses
In computers, there exists a workspace named memory. In 
that memory there are locations where the variables are 
stored, known as memory addresses. Variables are held 
in spots like memory address 53 for e.g.

Memory address are often expressed using the Base16, or 
hexadecimal system, which looks like this: 0xc420010230. 
Base16 is a way to positionally count numbers using 
symbols to represent values up to sixteen.


Acquiring a Memory Address
To get a variable's memory address, it has to be identified as 
&variableName. The location of where the memory is recorded 
changes from computer to computer, so there are times when 
a different address is printed each time the program is run.

func main() {
          name := "john"

          fmt.Println(name)   // retrieve d value using name: john

          fmt.Println(&name)  // get d address using &name: 0xc000010210
}

Memory addresses are built in such a fashion that they are able to 
be stored in variables.

Understanding Pointers:
Pointers, help to handle addresses.

About Pointers
A memory address is a value. They can be substituted for variables 
and processed like integers and strings. In Go, memory addresses 
are stored in variables known as pointers.

Defining Pointers
You need to place an asterisk * onto the variable data type to 
declare pointers. This * is also known as an operator. If it's 
placed before a pointer, it's known as a dereferencing operator. 
In the example below, the namePtr pointer is being defined 
and substituted with the address gotten by &name.

func main() {
          name := "john"

          // name is of type string, hence we write *string
         var namePtr * string = &name
          //assign d address of d name variable to pter namePtr

          fmt.Println(namePtr)  
}

Now let's learn about pointers, which is a variable that you 
can assign addresses to.

func main() {
	name := "John"

	fmt.Println(name)
	fmt.Println(&name)
          
	// Declare the namePtr pointer of type string and assign the address of the variable name
	var namePtr * string = &name
	
          // Print the value of namePtr
	fmt.Println(namePtr)          // 0xc0000681e0

}

Accessing Variables through Pointers
By dereferencing a pointer with an asterisk like *variableName, 
you can access the value the pointer points to and return the value. 
In the image below, by using *namePtr, we're accessing the value 
of the variable name.



func main() {
          name := "john"

         var namePtr * string = &name

          fmt.Println(*namePtr)  // d pter value is printed: John
}

Updating Values through Pointers
You can update values directly using pointers also. To do this, 
you describe the value by inputting *variableName = updateName.
E.g:

func main() {
          name := "john"

         var namePtr * string = &name

         *namePtr = "Kate"

          fmt.Println(name)  // Kate
}


A Review of Pointers:
By using & and * you can utilize pointers.

fmt.Println(....)                       Value printed
name                                              John
&name                                          0xc0000681e0
namePtr                                        0xc0000681e0
*namePtr                                      john

Let's update the value of name variable through dereferencing of pointer.

func main() {
	name := "John"

	fmt.Println(name)
	
          // Declare the namePtr pointer and assign the address of variable name
	var namePtr * string = &name 
	
	// Update the value of variable name with "Kate" through dereferencing of namePtr
	*namePtr = "Kate"
	
	// Print the updated value of name variable
	fmt.Println(name)

}

Using Pointers in Other Functions:
If you use pointers, you will be able to define a variable outside 
the scope of a function. 

Passing Address as an Argument
When passing an address as a pointer into an argument, it's necessary 
to prepare a corresponding pointer type parameter for the receiving 
function,


func main() {
          name := "john"

          changeName(&name)
}


func changeName(namePtr * string) {}

Updating Values through Pointers in Another Function
By passing an address as an argument, you can use it to update 
the original variable's value from another function.


func main() {
          name := "john"

          changeName(&name)

          fmt.Println(name)
}


func changeName(namePtr * string) {
          *namePtr = "Kate"
}

Let's set an address as an argument, and update the value 
using the passed address.

func main() {
	name := "John"

	fmt.Println(name)
	
          // Call the changeName function and pass the address of the name variable
	changeName(&name)   //passing address
	
	// Print the name variable
	fmt.Println(name)

}

// Add a parameter pointer of type *string
func changeName(namePtr * string) {
           // Dereference namePtr and update the value of the name variable to "Kate"
	*namePtr = "Kate"
}

Getting to Know How Arguments Work
Passing Variables as Arguments
When passing the totalScore variable as an argument, 
the variable itself isn't being passed. The variable 
totalScore's value is copied, and a new variable is 
being assigned. This is known as pass by values.


Updating Passed Values
The main function and the ask function both have totalScore 
variables, but are separate variables. For this reason, when 
you update the totalScore variable in the ask function, only 
the value of the totalScore variable in the ask function is updated.

Comparing Pointers
If you print the totalScore variable of the main and fn functions, 
you'll notice that the variables are actually stored in different places. 

func main() {
          totalScore := 0

          ask(totalScore)     //passing value, notice dre is no & bf totalScore

          fmt.Println(totalScore)       //0

          fmt.Println(&totalScore)      // 0xc000080010
}


func ask(totalScore int) {
          totalScore := 0

          fmt.Println(totalScore)       // 10
          fmt.Println(&totalScore)      // 0xc0000140b8
}

Let's deepen our understanding of copying values by comparing 
the various variables from before and after passing them to functions.
func main() {
	totalScore := 0
	ask(totalScore)

	// Print the value of the totalScore variable
	fmt.Println(totalScore)
	
          // Print the address of the totalScore variable
	fmt.Println(&totalScore)

}

func ask(totalScore int) {
	totalScore += 10
	
          // Print the value of the fn function's totalScore variable
	fmt.Println(totalScore)
	
          // Print the address of the fn function's totalScore variable
	fmt.Println(&totalScore)
}

Let's look at the difference between a value and an address that 
are set in the calculate function.

func main() {
	x := 10
	y := 10

	// Call the calculate function, and pass x and the address of y variable as the argument
	calculate(x, &y)

	fmt.Println("When setting an integer as an argument:", x)
	fmt.Println("When setting a pointer as an argument:", y)
}

func calculate(x int, yPtr *int) {
	// Describe the process of adding 1 to the x variable and yPtr
	
          x += 1
	
          *yPtr += 1
}



#Progate @progateEN @dev_careers #dev_careers
*/

package main

import "fmt"

func main() {
          totalScore := 0

          ask(totalScore)

          fmt.Println(totalScore)
          fmt.Println(&totalScore)
}


func ask(totalScore int) {
          totalScore += 10

          // fmt.Println(totalScore)       //  10
          
          // fmt.Println(&totalScore)      // 0xc0000140b8
}