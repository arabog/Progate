/*
What is Go?
Go is a programming language produced by Google. With a 
simple grammar, it's easy to learn and well-suited for team 
development. Another characteristic is its speed. It's also 
a language that's growing in popularity; used by everyone 
from startups, where development speed is important, to 
large scale system development.




*/ 
package main

func main() {

	println("Hello, world")

	// println()
}

/* Basics of Go:
What are Strings?
Strings need to be enclosed in double quotes ", 
or there will be an error.


Program Structure
In the main.go file below, other code exists in addition 
to the print statements. Files written in Go code like 
main.go are made up of parts, such as package 
definitions and function definitions. For now, 
just remember the code written inside the braces { } 
of the main function in package.main will be executed 
in sequence.


package main  	//package defn


//function defn
func main() {

	println("Hello, world")

	println("Hello, Go")
}


How to Write Comments
You can write comments in code too. Since they won't affect 
the result, they're useful for writing notes about the program. 
There are two ways to write comments: block comments and 
line comments. Anything between  /* and */  /*will become a 
block comment and using // at the start of a line with make 
a single-line comment.


Using Integers
Integers are another fundamental part of Go. Unlike strings, 
integers do not have to be put in double quotes. You can also 
use them to do calculations such as addition and subtraction 
as shown below. You can use + for addition and - for subtraction.

package main

func main() {
	println(2)
	println(2 + 3)
	println(4 - 7)
	println(8 * 5)
}


The Difference Between Integers and Strings:
In programming, integers and strings are completely different 
things. Take a look at the example below. It looks like we are 
printing 1 + 3 twice, but the first println will print 4. Whereas 
if you look closely, the second one is enclosed with double 
quotes, making it a string. So it'll be printed as is. Even 
when values are printed as strings, the double quotes will 
not be printed in the console.

package main

func main() {
	println(2 + 3) 	//5
	println("2 + 3")	// 2 + 3
}






#Progate @progateEN @dev_careers #dev_careers

*/ 
