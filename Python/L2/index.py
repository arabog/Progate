# Python II
# In this lesson, we'll learn how to manage a group of 
# data and work with loops.

# -: Lists: Structuring Data
# Let's learn how to manage a group of data with a single 
# variable. When there's a list of food names, for example, 
# it isn't so efficient to manage them with separate variables, 
# like food1, food2, food3. It's better to have a foods variable 
# to manage the whole list.

# Lists
# The list data type allows you to manage a group of data all 
# at once. You can create a list as follows: [element1, element2, ...]. 
# Each value in the list is called an element. Using lists, you can 
# manage multiple strings and integers as one group.

['apple', 'banana', 200, 300]


# Assigning Lists to Variables
# Just like integers and strings, you can assign a list to a variable. 
# As a convention, the variable name is pluralized, like foods, as 
# it will contain multiple elements.

foods = ['pasta', 'curry', 'sushi']

print(foods)

# Getting an Element of a List
# Each element of a list has a number allocated like 0, 1, 2, .... 
# These are called index numbers. Keep in mind that index 
# numbers start from 0. You can get individual elements by 
# writing list[index].

print('I love ' + foods[2])


# -: Updating an Element of a List
# Let's also try updating an element of a list! This can be done 
# by writing list[index] = value.
foods[1] = 'pizza'

print(foods)

# Adding Elements to a List
# You can also add new elements to a list. Writing list.append(value) 
# allows you to add a new element to the end of a defined list.

foods.append('curry')
print(foods)


# -: Printing All the Elements
# When you want to print all the elements of a list, it isn't efficient 
# to repeat the same code like the example below. You can use 
# a for loop to make it easier.

# print('I love ' + foods[0])
# print('I love ' + foods[1])
# print('I love ' + foods[2])
# print('I love ' + foods[3])


# for Loops
# The for loop allows you to process each element of a list with 
# a temporary variable, and apply the same code to it. In the 
# example below, each element of the foods variable is stored 
# in a temporary variable called food, and printed.

for food in foods:
          print('I love ' + food)
