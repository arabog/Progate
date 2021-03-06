# About Python
# Python is a programming language that's simple and easy 
# to understand. It's used in web development, machine learning, 
# statistic processing, and more.

# -: 
# You can display characters by using print(). Characters inside 
# the parentheses will be displayed in the console.

print("Hello Python");

# Strings
# In Python, a sequence of characters, like "Hello Python", is 
# known as a string. A string needs to be enclosed in single ' 
# or double " quotes. The output will be the same either way. 
# If you don't put the characters in quotes, you'll get an error.

# Comments
# Adding # at the beginning will make the entire line a comment.
# Comments will not be executed when running code, so you can 
# use them to leave notes.


# -: Integers
# You can use numbers like integers in programming. Unlike strings, 
# they don't need to be enclosed in quotes. You can add and subtract 
# integers just like you do in math. 

print(3 + 7);
print(3 - 7);

# Difference between Strings and Integers
# Strings and integers are interpreted differently in programming. 
# Like the images below, 3 + 5 will print 8, which is the result of 
# the addition. However, if you enclose the addition in quotes and 
# make it a string, the output will stay as 3 + 5.

print(3 + 5);
print("3 + 5");


# -: More Calculations
# In Python, you can do other calculations like multiplication and 
# division, but with different symbols from what you would use in 
# math. * is for multiplication and / is for division. You can also 
# calculate the remainder of a division using %.


# -: What is a Variable?
# Next, we'll learn about variables. A variable is like a box with a 
# name in which you can store a value.

# Defining a Variable
# To store a value in a variable, you need to define a variable. 
# You can do this in the following format: variable_name = value. 
# The = operator in Python doesn't mean "equal". This assignment 
# operator means assign the value on the right to the variable on the 
# left. Note that variable names don't need to be enclosed in quotes.

name = 'John';
number = 24;

# Printing a Variable
# Now let's learn how to print the value in the name variable. You 
# can do this by writing print(name). Note that if you enclose the 
# variable in quotes, like print('name'), the name becomes a string 
# instead of a variable. Therefore, the output will be name, not the 
# value of the variable.

print(name);                  #John
print("name");                #name


# How to Name a Variable
# You can pick any name for variables, but there are some rules. 
# For example, you cannot start a variable name with a number. 
# Also, when a variable name contains more than two words, 
# like user_name, you should separate them with _.

# There are other advantages of variables:
# ???They allow you to use the same data repeatedly.
# ???When you want to change the value of a variable, you only 
# need to change it once.


# -: Updating the Value of a Variable
# This time we'll update the value of a variable that's already defined. 
# You can overwrite a variable simply by assigning a new value to it. 

x = 5;
print(x);

x = 11;
print(x);

# In order to add some numbers to a variable, you can assign the sum 
# of the variable and the number to the variable itself. This may seem 
# strange, but remember that = means assign, not equal.

x = 5;
print(x);

x = x + 3;
print(x);

# You can use shorthand operators like in the image below when updating 
# a variable that has an integer value. 

x = x + 3;          # x += 3
#y = y % 10          # y %= 10


# -: String Concatenation
# The + operator that we used for calculations also lets us combine strings. 
# Combining strings is known as string concatenation. String concatenation 
# can be used with strings and variables that have string values.

print('Hello ' + 'Python');

name = "Joshua";
print('My name is ' + name);


# -: Data Types
# So far, we have worked with two kinds of values, strings and 
# integers. These are called data types. There are other data types 
# in Python, but let's cover these two first.

# Differences in Data Types
# Different types have different behaviors. For example, print(5 + 7) 
# calculates the sum while print('5' + '7') concatenates strings.

print(5 + 7)        #12
print('5' + '7')    #57

# Type Conversion: str()
# You can't concatenate strings and integers because they have different 
# data types. In order to concatenate different types of data, you have to 
# perform type conversion. In the example below, you first have to 
# convert the integer to a string, using str().

price = 3;
#print("The apple costs " + price + " dollars"); #error

print("The apple costs " + str(price) + " dollars"); 

# Type Conversion: int()
# You also can't perform calculations with a string and an integer.
# You have to convert the string to an integer using int().

count = '3';
price = 100;

total_pricee = price * int(count);
print(total_pricee);


# -: Control Flow
# We'll learn about control flow from here. In programming, we often 
# want to control what code is run based on the conditions that are 
# satisfied. 

# The if Statement
# By using the if statement, you can write code that gets executed only 
# under a satisfied condition. You can create if statements by writing if, 
# followed by a conditional expression and a colon :. The code on the 
# next line will only run when the condition is true.

score = 100;

if score ==100:
          print('Great job!');

# Conditional Expressions
# There are many operators to create conditional expressions. Let's first 
# take a look at equality operators. We can use == to see if two values
# are equal, and != to see if two values are not equal.

# x == y;
# x != y;


# -: True and False
# Let's try to understand how conditional expressions work. 
# When you print a condition like score == 100, True  will 
# be printed. What is this value True ?

# Booleans
# True is a value of the boolean data type. The boolean data type 
# has only two values, True or False. The value True is returned 
# if a condition is satisfied, and False if not. Keep in mind that 
# you must capitalize the first letter of True and False.

print(3 == 3);
print(3 == 5);

# if Statements and Boolean Values
# Let's jump back to the if statement to see how it interacts with 
# boolean values. The code below the if statement is executed 
# when the condition returns True, and not executed when it 
# returns False

score = 100;

if score ==100:     #True
          print('Great job!');

score = 50;

if score ==100:     #False
          print('Great job!');


# -: Comparison Operators (<, <=, >, >=)
# There are other operators you can use to compare values. Just 
# like math, you can use < and > to compare numbers. You can 
# also use >= and <= if you want to make the comparisons inclusive.


# -: What Happens When the Condition is False
# By using if statements, you can now choose to run selected code only 
# when the condition is True. Next, let's learn how to create control flow 
# statements that can run different code when the condition is False.

score = 50;

if score == 100:
          print('Great job!');
else:
          print('You can do better!');


# -: elif
# You can use elif to add alternative conditions to the control flow.
# Check the example of elif below!

score = 70;

if score == 100:
          print('Great job!');
elif score == 70:
          print('Not bad...');
else:
          print('You can do better!');

# You can add elif as many times as you want. However, keep in 
# mind that only the code in the first condition that's satisfied will 
# be executed.


# -: and
# You can use the and operator to combine conditions. For example, 
# Condition1 and Condition2 will return True only when both 
# Condition1 and Condition2 are true.

hour = 7;

if hour > 6 and hour < 8:
          print('Good morning!');

# or
# You can use the or operator in a similar way. Condition1 or Condition2 
# will return True if either Condition1 or Condition2 is true. This means 
# that the combined condition will be True if at least one of the conditional 
# expressions is True

hour = 7;

if hour == 11 and hour == 12:
          print('Lunchtime!');

# not
# By using not, you can negate a condition. This means that it'll be False 
# if the conditional expression is true and it'll be True if it is false.

hour = 9;

if not hour == 12:
          print('Not noon');

#-: Chaining comparison operators
# It's possible for you to rewrite and conditions that use the same variable 
# in the way shown below! This is called chaining comparison operators.

hour = 7;

if hour > 6 and hour < 8:
          print('Good morning!');

hour = 7;

if 6 < hour < 8:
          print('Good morning!');

# ---------------------------------------------
x = 20
# if x ranges from 10 to 30 inclusive, print 'x ranges from 10 to 30'
if 10 <= x <= 30:
          print('x ranges from 10 to 30')


y = 60
# if y is less than 10 or greater than 30, print 'y is less than 10 or greater than 30'
if y < 10 or y > 30:
          print('y is less than 10 or greater than 30')


z = 55
# if z is not equal to 77, print 'z is not 77'
if not z == 77: 
          print('z is not 77')


# -: Calculating Shopping Prices
# Combining what we've learned so far, we'll create a simple program 
# that calculates shopping prices. 

# Printing the Payment Amount
# First, let's print the money required to buy some apples!

apple_price = 2

count = 10

total_price = apple_price * count

print('You will buy ' + str(count) + ' apples')
print('The total price is ' + str(total_price) + ' dollars')


# -: Changing the Number of Apples
# In the last lesson, the number of apples had already been decided.
# Let's change it so that you can input the amount of apples you'll buy.

# Getting Input
# input() allows you to enter letters in the console when running the 
# code, and receive the value entered. By writing 
# variable = input('the string you want to show in console'), the 
# entered value will be assigned to the variable.

input_count = input('How many apples do you want?: ')
print('You will buy ' + input_count + 'apples')

# Type Conversion of Input Values
# The value you receive from input() will be a string, even if you enter 
# a number. If you want to use it as an integer to do some calculation, 
# you have to convert it to an integer,

apple_price = 2

# Receive the number of apples by using input(), and assign it to the input_count variable 
input_count = input('How many apples do you want?: ')

# Convert the input_count variable to an integer, and assign it to the count variable
count = int(input_count)
total_price = apple_price * count

print('You will buy ' + str(count) + ' apples')
print('The total price is ' + str(total_price) + ' dollars')

# -: More Conditions!
# Finally, let's use control flow to tell whether you have enough 
# money to buy the specified number of apples.

apple_price = 2
# Assign 10 to the money variable
money = 10

input_count = input('How many apples do you want?: ')
count = int(input_count)
total_price = apple_price * count

print('You will buy ' + str(count) + ' apples')
print('The total price is ' + str(total_price) + ' dollars')

# Add control flow based on the comparison of money and total_price
money_left = str(money - total_price)

if money > total_price:
          print('You have bought ' + input_count + ' apples')
          print('You have ' + money_left  + ' dollars left')
elif money == total_price:
          print('You have bought ' + input_count + ' apples')
          print('Your wallet is now empty')
else: 
          print('You do not have enough money')
          print('You cannot buy that many apples')
