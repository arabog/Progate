/*
The Standard Library
When writing a program, it's not necessary to write all of your 
code on your own. Go has what is known as the standard 
package, which comes with more than 100 useful functions 
that are ready to use. You can use packages in your own 
program, as shown below, then use the code it contains.

E.g:
fmt		used to print output in d console
math/rand 	used to generate random numbers
time		used for times and date

Importing Packages
To use standard packages in your own program, you need to 
first import them. To import, write import "packageName" 
under package main. For example, to import the fmt 
package that's used to print output in the console, write 
import "fmt". Note that package name is enclosed in 
double quotes ".

package main

import "fmt"	// loads d fmt standard package


Using Packages:
The Println function in the fmt package is used to 
print the value in () to the console. To use a function 
in the standard package, write packageName.functionName. 
It's similar to println from Go Study I, but fmt.Println can 
print more data types. Let's use fmt.Println from now on!


package main

import "fmt"

func main() {
	fmt.Println("Hello, world") //notice d P is capitalized
}


Unused Packages
With Go, it's important that all imported packages are used. 
Let's take a look at the example below. There's an error 
because the imported fmt package isn't used. To avoid 
errors like this, be sure not to import any packages 
without also using them.

package main

import "fmt"

func main() {
	Println("Hello, world") //notice d P is capitalized
}


Output Format
fmt.Printf
Using the Printf function from the fmt package, you can 
specify the format to be output to the console. Think 
of the format as the shape of the output string. As 
shown below, the first one specifies the format and 
the second one specifies the value to be output. 


fmt.Printf(format, outputValue)

Format Strings
If you include %s in the string, like Hello, %s, the 
second argument specified in the fmt.Printf will replace 
the %s and wull be printed out. The value of name 
variable is Ken the Ninja, so the string Hello, Ken 
the Ninja is printed to the console.

package main

import "fmt"

func main() {
	name := "Ken the Ninja"

	fmt.Println("Hello, %s", name) 
}


Embedding Multiple Variables
%s can be embedded multiple times within the format 
string. When %s is embedded twice as shown in the 
example below, you must specify the string to be 
replaced into each %s. Here, the first %s is replaced 
with "Hello" and the next %s is replaced with the 
variable name, whose value is "Ken the Ninja" as 
specified in the fmt.Printf.

package main

import "fmt"

func main() {
	name := "Ken the Ninja"

	fmt.Println("%s, %s", "Hello", name) 
}

E.g:
package main

import "fmt"

func main() {
	weather := "sunny"
	
	fmt.Printf("Today, the weather is %s", weather)

}

Embedding Variables
Strings aren't the only things that can be embedded into 
the format string, but integers can also be embedded using 
%d. Just like how we did with %s, we pass the number as 
the second argument of the fmt.Printf. In the example below, 
%d is replaced with the variable age which the value is 18.

package main

import "fmt"

func main() {
	age := 18
	
	fmt.Printf("%d years old", age)

}


Inconsistent Types
With fmt.Printf, we can replace %s or %d with variables. 
Where %s will be replaced by a string, and %d will be 
replaced by integer. However, if the data type is a string 
but %d is used in the format string, or vice versa, an 
error will occur.

E.g:
func main() {
	age := "18"	//string
	fmt.Printf("%d years old", age)
}

package main

import "fmt"

func main() {
	month := 9
	day := 5
	
	fmt.Printf("The date today is %d/%d", month, day)
}

Difference Between Printf and Println
Unlike fmt.Println,fmt.Printf won't start on a new line after 
the output string. As you can see below, even though a second 
fmt.Printf was used, the second output string continues right 
after the end of the first output with no line-break.

func main() {
	fmt.Printf("Hello, %s\n", "Ken")
	fmt.Printf("Hello, %s\n", "Master Wooly")
}
// Ken, Master Wooly


The \n Character
By putting \n in a string, you can add a line-break. The \n 
character itself won't appear in the text.


The \n Character (2)
The \n character can be used anywhere in a string. For 
example, you can start a new line in the middle of a string 
by including a \n character inside the string. This prints 
all the text after the \n on the next line.


Repeating Code with Loops
Loops are a set of instructions that will automatically repeat 
based on some condition. 

for Loops
In Go, for is used to create loops. In the for statement, you 
can repeat the process in { } by specifying 3 steps: 
initialization of variable, loop condition, and updating 
the variable. Each step is separated by semicolon ; but 
be sure to note that there isn't a semicolon after the 
last variable.

package main

import "fmt"

func main() {
	for i := 1; i < 5; i++ {
		fmt.Printf("Hello \n")
	}
}


Loops Flow
In the example below, the variable i is assigned 1 
as an initial value and will be updated using i++ 
for each iteration until condition i <= 5 is no 
longer valid. When the condition of i <= 5 is not 
met, the loop will end automatically. 

package main

import "fmt"

func main() {
	for i := 1; i <= 5; i++ {
		fmt.Printf("Hello \n")
	}
}

Adding Code in Loops
You can put multiple lines of code inside a for loop. All 
the code written inside the { } of the loop will be repeated 
in the order you put them.


Declaring Variables in for Statements
You can't use var in a for initializer. You can only declare 
a variable with :=. Using var will cause an error.

e.g:
You can practice using loops in this exercise. Use a for 
loop to print every integer from 1 to 100.

package main

import "fmt"

func main() {
	for i := 1; i <= 100; i++ {
		fmt.Printf("%d\n", i)
	}
}

func main() {
	for i := 1; i <= 100; i++ {
		fmt.Println(i)
	}
}


#Progate @progateEN @dev_careers #dev_careers

*/ 

