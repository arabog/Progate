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
# ・They allow you to use the same data repeatedly.
# ・When you want to change the value of a variable, you only 
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

You can use shorthand operators like in the image below when updating 
a variable that has an integer value. 

x = x + 3;          # x += 3
y = y % 10          # y %= 10


-: String Concatenation
The + operator that we used for calculations also lets us combine strings. 
Combining strings is known as string concatenation. String concatenation 
can be used with strings and variables that have string values.

print('Hello ' + 'Python');

name = "Joshua";
print('My name is ' + name);








