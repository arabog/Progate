# to run ds file: ruby index.rb

# console
# puts "Hello World"


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

# puts 2
# puts 2 + 3
# puts 7 - 4

# Difference between Strings and Integers
# Strings and integers are interpreted differently in programming. 
# For instance, "3" is a string, while 3 is an integer. Furthermore, 
# the output of 5 + 2 will become 7, but "5 + 2" will stay as it is 
# since it'll be interpreted as a string.

# puts 5 + 2           # 7
# puts "5 + 2"       # "5 + 2" 

# More Calculations
# Other than + and - operators, there are three more basic operators 
# in Ruby. The operator * is used for multiplication and / is used for 
# division. You can also calculate the remainder of a division 
# (modulus) using %.

# puts 3 * 5
# puts 6 / 2
# puts 9 % 2

# String Concatenation
# The + operator that we used before also lets us combine strings.
# Combining strings is known as string concatenation.

# puts "Hello " + "Ruby"

# Once again, here we can see the difference between integers 
# and strings. Adding the strings "3" and "5" returns the 
# concatenated string "35", while adding 3 and 5 returns 
# the sum 8.

# puts "3" +  "5" # 35
# puts 3 + 5 # 8

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

# name = "john"

# Using Variables
# Using variables is quite simple. For example, if you print out 
# the name variable that has "John" as the value, Ruby replaces 
# the variable with its value, so the output will be John.

# name = "John"
# puts name

# Where Variables Can Be Used
# A variable can only be used after it's been defined. This is because 
# the program runs from the top to the bottom.

# can't access d name variable

# name = "john"

# can access d name variable

# String Variables
# A variable containing a string can be treated exactly the same 
# as a string, because calling the variable replaces the value you 
# assign to it. For example, you can concatenate a string variable 
# and a string, or concatenate two string variables.

# greeting = "Hello "
# puts greeting + "John"

# name = "kate"
# puts greeting + name

# Integer Variables
# Similarly, if a variable contains an integer, you can do calculations 
# with it, just like with plain integers. You can use it with other integers, 
# or other variables containing integers.

# number1 = 10
# puts number1 + 3

# number2 = 5
# puts number1 + number2

# Why Use Variables?
# 1. Easy to tell what d values represent
# 2. Can use d same data in multiple places
# 3. Easy to make changes to data

# Roles of Variables
# Let's take a look at some examples. Variables come in handy when 
# you have a few strings that are similar. In the example below, if 
# you want to change "Ruby" to "Programming", you only need to 
# change it once, not three times

# puts "Let's master Ruby at Progate, John"
# puts "Let's master Ruby at Progate, Kate"
# puts "Let's master Ruby at Progate, Bob"

# text = "Let's master Ruby at Progate, "
# puts text + "John"
# puts text + "Kate"
# puts text + "Bob"

# in order to change "Ruby" to "Programming" u only need to change 
# it once inside text variable

# Variable Names
# Always make sure to choose a variable name that clearly describes 
# what kind of data the variable contains. If you can't tell the content 
# of the variable from its name, the code will be hard to read and you 
# might make mistakes.

# number = "John"     # d variable doesn't correctly describe d value

# name = "John" # use of a descriptive variable name

# Naming Conventions
# There are some conventions you need to follow when naming 
# variables in Ruby. When you use a variable name that has 
# more than two words, you should separate them with an underscore _.

# date      # lowercase
# user_name # separate d words with an underscore

# Updating Variables
# Variables can be updated with another value. This can be done 
# simply by assigning a new value to an already defined variable, using =.

# number = 7
# puts number         #7

# number = 9
# puts number         # 9

# The Flow of Updating Variables
# The number variable is being updated as the program runs 
# from the top to the bottom.

# Self Assignment of Variables
# What if we want to add 3 to the value of the number variable 
# that's already been defined? This can be done by adding 3 
# to the number variable, and assigning it back again to the 
# number variable. This is known as self assignment.

# number = 2
# puts number        

# number = number + 3
# puts number   

# Self Assignment Shorthand
# You can use shorthand like the image below when updating 
# the value of an integer variable. The same syntax applies for 
# all kinds of calculations.
# x = 50

# x = x + 10          # x += 10
# x = x - 10          # x -= 10'
# x = x * 10          # x *= 10
# x = x / 10          # x /= 10
# x = x % 10          # x %= 10

# String Interpolation
# There's a way to include the value of a variable inside a string. 
# You can replace a variable with the value you assigned and 
# include it in the string by inserting #{variable_name}, as 
# shown below. This is known as string interpolation.

# name = "Kate"
# puts "Hello, #{name}"

# age = 21
# puts "I am #{age} years old"

# Rules of String Interpolation
# There's one thing to be careful of with string interpolation. 
# It can only be used in double quotes ". If it's used with single 
# quotes ', the variable won't be replaced with its value.

# age = 21
# puts 'I am #{age} years old'

# Interpolation or Concatenation
# String interpolation and concatenation are similar but different. 
# You can't concatenate an integer and a string with string 
# concatenation, but you can with string interpolation. Therefore, 
# it's preferable to use string interpolation in these cases.

# age = 21
# puts "I am "        + age +   " years old"        #syntax error
          #string   #integer            #string

# age = 21
# puts "I am  #{age} years old"           # correct


# Control Flow
# In programming, we often want to run different code based 
# on certain conditions. For example, you may want to say 
# "Great job!" only if the score is 100%

# if Statement
# The if statement is the most common type of control 
# flow. By putting a condition after if, the code inside the 
# if...end will only be executed if the condition is true.

# if condition 
          #run ds code
# end

# if score is above 80%
#           puts "Great job!"
# end

# Example of if Statement
# Let's take a look at an example of an if statement. 
# score > 80 is a condition for when the score is 
# greater than 80. Since the value of the score variable 
# is 94, the condition of the if is true, so the code inside 
# is executed

score = 94

if score > 80
          puts "Great job!"
end

# When the Condition Is false
# When the condition of the if statement is false, the code 
# inside if...end won't be executed.

score = 38

if score > 80
          puts "Great job!"
end

# Printing a Condition
# Now that we have a grasp of what if statements do,
#  let's look deeper into the conditions. When we print 
# a condition like below, we get true as the output. 
# What exactly is this true value

score = 94
puts score > 80     # true

# Booleans
# The printed true is known as a Boolean. There are 
# only two values for a boolean, which are true and false. 
# Conditions are replaced with one of these values, so the 
# output will either be true or false when we print them.

# if Statements and Booleans
# We learned that conditions are replaced with either true 
# or false.From this we can see that the if statement will be 
# executed if the condition is true, and not if it's false.

score = 94

if score > 80       # returns true i.e (if true)
          puts "Great job!"
end

# Comparison Operators
# Operators like > are known as comparison operators. 
# The condition of the comparison is either true or false. 
# You can also use >= and <= to make them inclusive

# x < y
# x <= y

# x > y
# x >= y``






# #Progate @progateEN @dev_careers #dev_careers
