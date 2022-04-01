# Python Ⅲ
# In this lesson, we'll learn how to use functions and modules.
# To keep things interesting, let's do this while creating a Rock 
# Paper Scissors game.


# -: Functions
# First of all, we'll take a look how functions work in Python. A 
# function is a piece of code that executes a specific task. print 
# is one example of a function. It allows you to print text easily 
# without needing to write a lot of code.

# Defining a Function
# Let's learn how to define a basic function. The syntax for defining 
# a function is as follows: def function_name():. Keep in mind that 
# you need to indent the code inside the function.

# def function_name:
#           sm code 

# def greet():
#           print('Hello')

# Calling Functions
# Since functions aren't executed just by defining them, you need 
# to call them to execute the code in the function. To call a function, 
# simply write function_name(). Keep in mind that a function can 
# only be called after it's been defined.

def greet():
          print('Hello')

greet()


# -: What is an Argument?
# You can pass values to a function when you call it. These values 
# are called arguments and they can be used inside the function. 
# By using arguments, you can make a function return different 
# values depending on the argument passed.

# To pass an argument to a function, the function has to have 
# a variable, called a parameter, to receive it. In the example below, 
# the greet function has the name parameter to receive an argument.

def greet(name):
          print('Hello ' + name)

# Passing an Argument to a Function
# We can pass an argument by calling a function like so: 
# function_name(argument). When the function is called, the 
# passed argument is assigned to the parameter to be used inside 
# the function.

def greet(name):
          print('Hello ' + name)

greet('John')
greet('Kate')

# Scope
# Variables have a scope, which refers to the specific range in 
# which a variable can be accessed. The scope of parameters 
# and variables defined inside a function is limited to the 
# function. Therefore, they cannot be used outside the function.

def greet(name):
          print(name)

# print(name)         #NameError: name 'name' is nt defined


# -: Functions with Multiple Parameters
# You can add multiple parameters to a function by separating 
# them with a comma ,. In the example below, name is the 1st 
# parameter, and message is the 2nd.

def greet(name, message):
          print(name + ', ' + message)

# Passing Multiple Arguments to a Function
# The example below shows how to pass multiple arguments to 
# a function. When passing in arguments like in the example 
# below, they must be in the same order as the parameters.

def greet(name, message):
          print(name + ', ' + message)

greet('John', 'nice to meet you')


# -: Default Parameter Values
# You can set the default value of a parameter. The default 
# will be used when no argument for the parameter is provided.

def greet(name, message = 'nice to meet you'):
          print(name + ', ' + message)

greet('John', 'see you again')
greet('Kate')


# -: Rock Paper Scissors
# So far, we've learned the basics of functions. Now, let's use 
# them to enhance the Rock Paper Scissors game.

Receiving the User Name
Let's first get the user's name, then print it.

def print_hand(hand, name='Guest'):
          print(name + ' picked: ' + hand)

player_name = input('Please enter your name: ')
print_hand('Rock', player_name)

-: Picking a Hand
Let's let the user pick a hand with numbers 0, 1, or 2. We'll 
prepare a list that contains 'Rock', 'Paper', and 'Scissors', 
and when a user picks a number, we'll print the element that
has the corresponding index number.

def print_hand(hand):
          hands = ['Rock', 'Paper', 'Scissors']

          print(name + ' picked: ' + hands[hand])

