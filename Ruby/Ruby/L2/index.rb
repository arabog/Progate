# Structuring Data
# Let's learn how to manage a group of data with a single variable. 
# For example, when there's a list of user's name, it's not efficient 
# to manage them with separate variables, like name1, name2, 
# name3. It's better to have a names variable to manage the whole list.

# Arrays
# You can use arrays to manage a group of data all at once. 
# You can create an array as follows: [value1, value2, ...]. 
# Each value in an array is known as an element. Using arrays, 
# you can manage a collection of data as one group.


# Assigning Arrays to Variables
# Just like integers and strings, you can assign an array to a variable.
# As a convention, the variable name is pluralized, like names, as it 
# will contain multiple elements. 

names = ['John', 'Bob', 'Kate']

puts names

# Index Numbers
# For each element of an array, a number is given like 0, 1, 2, .... 
# These numbers are known as index numbers. Keep in mind 
# that index numbers start from 0.

# Getting an Element of an Array
# You can get each element of an array by writing array_name[index].

# Arrays and String Interpolation
# Just like other variables, you can use string interpolation with an 
# element of an array.

names = ['John', 'Bob', 'Kate']

puts "My name is #{names[1]}"


# Loops
# When you want to print all the elements of an array, it's not efficient 
# to repeat the same code. You can use loops to make this easier. 

