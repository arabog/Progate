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
	fmt.Println(namePtr)

}


#Progate @progateEN @dev_careers #dev_careers
*/

package main

import "fmt"

func main() {
          name := "john"

         var namePtr * string = &name

          fmt.Println(namePtr)  
}