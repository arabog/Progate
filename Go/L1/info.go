/*
go run filename


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


Doing Calculations with Go:
Other calculations besides addition and subtraction can be 
done with Go. For example, * is used for multiplication and 
/ for division. Also, % can be used to calculate the remainder 
after division. These symbols are known as operators. 


Combining Strings
In Go, you can perform operations other than numbers as well. 
The + operator is used to add numbers, but when used on strings, 
it combines them into a single string. Combining strings is known 
as string concatenation. In the example below, two strings Hi, and 
Gophers are concatenated by the + operator to form a single string; 
Hi,Gophers.

package main

func main() {
	println("Hi" + "Gophers") 	
	println("2" + "3")	// 23
}


What are Variables?
Now we'll learn about variables. You can think of a variable as a 
box where you can store a value. Also, the box (variable) has a 
name which can be used to retrieve a value from the variable 
anytime.

Variables and Data Types
Variables must be defined before you can use them. To define 
a variable, you can write var variableName dataType as shown 
below. e.g

var number int

var nme string


Using Variables
The code n = 100 means assign the value 100 to the variable n. 
The = operator in Go does not mean "equal". This assignment 
operator means assign the value on the right to the variable 
on the left. 


package main

func main() {
	var n int

	n = 100	// assign 100 to d n variable
		
	println(n)	// d variable n contains 100
}


Declaration and Assignment
By writing var n int = 100, you can declare a variable and assign 
it a value simultaneously.

package main

func main() {
	var n int = 100	// declare & assign 100 to d n variable

	println(n)	// d variable n contains 100
}

Updating Variables
Variables can be updated as well. In order to update variables, 
new values must be assigned using the = operator


package main

func main() {
	var n int = 100	
	println(n)	//100

	n = 200	// update n value to 200
	println(n)	//200
}


Omitting Data Types
In Go, when variable declaration and value assignment are done 
at the same time, like var a int = 100, the data type can be omitted. 
In the example, int is left out so that only var a = 100 is written. 
This is because as 100 is obviously an integer, it can be safely 
assumed that the data type assigned to the variable a is an integer.


package main

func main() {
	var a  = 100	
	println(a)	//100

}

Abbreviating Variable Definitions
Variable definitions can be written without a data type by using a 
shortened syntax. As shown below, var b int = 200 and b := 200 
are the same. Note that there's a colon : before the = symbol (:=). 

package main

func main() {
	b := 200	// d same as var b int = 200
	println(b)	//200

}

Other Ways to Use println
There is another useful way to use println. In the example 
below, the variables a and b used with println are separated 
by a comma , in the (). 

package main

func main() {
	a := 100
	b := 200	

	println(a, b)	//print 2 variables

}

Variable Definitions and Assignment
Generally in programming, the same variable name cannot be 
declared multiple times. In the image on the left, the a variable 
is declared twice, which results in an error. Note the difference 
between := for variable declarations with assignment and = 
for value assignment.

package main

func main() {
	a := 100
	a := 200	 // <--Error!

	println(a)

}

package main

func main() {
	s1 := "Hi, "
	s2 := "world"
	
	s1 = "Hello, "

	println(s1, s2)

}


Where Variables Can Be Used
Variables can only be used after they are defined. In the example 
below, the n variable is used before it is defined.

package main

func main() {
	println(a)	//wrong

	a := 100

	println(a)

}


Unused Variables
In Go, when variables are declared but are left unused, errors 
are displayed. 

package main

func main() {
	println(a)	//wrong

	a := 100
	b := 100

	println(a)

}


Type Mismatch
Values of a different data type than the data type of the 
variable cannot be assigned. As shown in the left image, 
if we assign a value of type string to a variable of type 
int (n := 100), we'll get an error message.

package main

func main() {

	a := 100
	b := "Hello" Not an int type

	println(a)
}

package main

func main() {
	s1 := "Hi, "
	s2 := "world"
	
	s1 = "Hello, "

	println(s1, s2)

}

Calculations with Variables
Since variables can be treated like values, we can also use 
variables to perform operations.

package main

func main() {
	n := 10
	

	println(n + 20)	//30

}


package main

func main() {
	n := 10
	m := 20

	println(n + m)	//30

}

Self-Assignment
Below, on the left, n = n + 20 may seem strange when you 
think of it in a mathematical way. However, that's not a 
problem because in Go, = stands for assign not equal.

package main

func main() {
	n := 10
	n =  n + 20

	// n += 20

	println(n)	//30

}


Shortened Self-Assignment
n += 20
n -= 20
n *= 20
n /= 20
n %= 20

n = n + 1 --> n+= 1 --> n++
n = n - 1 --> n -= 1 --> n--



Using if Statements
The if statements allow you to create a control flow that means 
"if X, do Y". An if statement can be written as shown in the image 
below, where an if is followed by a conditional statement, and 
when the conditional statement is met or true, the items in { } 
will be executed. 

package main

func main() {
	score := 100

	if score > 80 {
		println("Great job!")
	}
}

if Statement Conditions
Symbols used to compare values are known as comparison operators. 
E.g < and >, >= and <= in Go. if statements are written as 
if conditionalStatement { }.


Boolean Values
Let's take a closer look at the conditional statement part of the if 
statement. If we try to print the conditional statement part of the 
if statement, we get true as the output 

package main

func main() {
	score := 100

	println(score > 80)
}

What are Boolean Values?
The data type for boolean values is commonly known as boolean type 
and it has only two possible values, true or false. A conditional 
statement using the comparison operator will have the value true 
if it's true, and false if it's not.

if Statements and Booleans
In an if statement, if the conditional statement is true, the 
process is executed; if it's false, the process isn't executed.

package main

func main() {
	score := 100

	if score > 80 {	//executed
		println("Great job!")
	}
}


package main

func main() {
	score := 50

	if score > 80 { 	//not executed
		println("Great job!")
	}
}


#Progate @progateEN @dev_careers #dev_careers






*/ 
