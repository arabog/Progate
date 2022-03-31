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