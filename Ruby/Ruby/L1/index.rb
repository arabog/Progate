# to run ds file: ruby index.rb

# console
puts "Hello World"


#Strings
# A sequence of characters like "Hello World", is known as a string. 
# A string needs to be enclosed in single quote ' or double quotes ", 
# or else there will be an error. 

# puts
# puts is one of the many commands Ruby has to offer. It tells the 
# computer to print some text to the console. Note that a space is 
# required between puts and the string.

# Comments
# Adding # at the beginning of a line will make the entire line a comment. 

# Integers
# You can use numbers like integers in programming. Unlike strings, 
# they don't need to be enclosed in quotes. You can do additions and 
# subtractions with them just like you do in math.

puts 2
puts 2 + 3
puts 7 - 4

# Difference between Strings and Integers
# Strings and integers are interpreted differently in programming. 
# For instance, "3" is a string, while 3 is an integer. Furthermore, 
# the output of 5 + 2 will become 7, but "5 + 2" will stay as it is 
# since it'll be interpreted as a string.

puts 5 + 2           # 7
puts "5 + 2"       # "5 + 2" 

# More Calculations
# Other than + and - operators, there are three more basic operators 
# in Ruby. The operator * is used for multiplication and / is used for 
# division. You can also calculate the remainder of a division 
# (modulus) using %.

puts 3 * 5
puts 6 / 2
puts 9 % 2

# String Concatenation
# The + operator that we used before also lets us combine strings.
# Combining strings is known as string concatenation.

puts "Hello " + "Ruby"

# Once again, here we can see the difference between integers 
# and strings. Adding the strings "3" and "5" returns the 
# concatenated string "35", while adding 3 and 5 returns 
# the sum 8.

puts "3" +  "5" # 35
puts 3 + 5 # 8

# What is a Variable?
# Now, we'll learn about variables. You can think of a variable as 
# a box where you can store a value. Also, the box (variable) has 
# a name which can be used to retrieve a value from the variable 
# anytime. 

# Defining a Variable
# To use a variable, we must define it first. Variables are defined 
# like variable_name = value. In Ruby, = does not mean that the 
# values are equal. It means to assign the value on the right to 
# the variable on the left. Note that variable names are not 
# enclosed in double quotes.

name = "john"

# Using Variables
# Using variables is quite simple. For example, if you print out 
# the name variable that has "John" as the value, Ruby replaces 
# the variable with its value, so the output will be John.

name = "John"
puts name

# Where Variables Can Be Used
# A variable can only be used after it's been defined. This is because 
# the program runs from the top to the bottom.

# can't access d name variable

name = "john"

# can access d name variable

# String Variables
# A variable containing a string can be treated exactly the same 
# as a string, because calling the variable replaces the value you 
# assign to it. For example, you can concatenate a string variable 
# and a string, or concatenate two string variables.

greeting = "Hello "
puts greeting + "John"

name = "kate"
puts greeting + name

# Integer Variables
# Similarly, if a variable contains an integer, you can do calculations 
# with it, just like with plain integers. You can use it with other integers, 
# or other variables containing integers.

number1 = 10
puts number1 + 3

number2 = 5
puts number1 + number2

# Why Use Variables?
# 1. Easy to tell what d values represent
# 2. Can use d same data in multiple places
# 3. Easy to make changes to data

# Roles of Variables
# Let's take a look at some examples. Variables come in handy when 
# you have a few strings that are similar. In the example below, if 
# you want to change "Ruby" to "Programming", you only need to 
# change it once, not three times

puts "Let's master Ruby at Progate, John"
puts "Let's master Ruby at Progate, Kate"
puts "Let's master Ruby at Progate, Bob"

text = "Let's master Ruby at Progate, John"
puts text + "John"
puts text + "Kate"
puts text + "Bob"

# in order to change "Ruby" to "Programming" u only need to change 
# it once inside text variable

# Variable Names
# Always make sure to choose a variable name that clearly describes 
# what kind of data the variable contains. If you can't tell the content 
# of the variable from its name, the code will be hard to read and you 
# might make mistakes.

number = "John"     # d variable doesn't correctly describe d value

name = "John" # use of a descriptive variable name

# Naming Conventions
# There are some conventions you need to follow when naming 
# variables in Ruby. When you use a variable name that has 
# more than two words, you should separate them with an underscore _.

date      # lowercase
user_name # separate d words with an underscore

