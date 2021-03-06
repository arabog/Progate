#Classes
# -: Creating Objects
# To make objects for the menu items, we first need to prepare a 
# blueprint. Blueprints are known as classes, and their objects are 
# known as instances.

# Steps to Creating Instances
# The process to creating an instance can be seen below. We'll 
# start from 
# Step 1: Prepare a Class 
# Step 2: Create an Instance of the Class
# Step 3: Add Data to the Instance

# Defining a Class
# Let's first prepare the class (blueprint). A class can be defined 
# using class ClassName:. Class names, by convention, always begin 
# with a capital letter 

# class MenuItem:

# Class Contents
# The contents of the class (or blueprint instructions) are written 
# starting the next line under class MenuItem: and must be indented. 
# Since we still don't need to add anything yet, we'll write pass, 
# which we use when we have no code to execute 

class MenuItem:
          pass


# -: Making Instances from Classes
# Instantiation
# As shown below, if we call ClassName() we can create an instance 
# of that class (blueprint). Also, using variable_name = ClassName(), 
# we can assign the new instance to a variable.

class MenuItem:
          pass

menu_item1 = MenuItem()


# -: Adding Data to Instances
# Instance Variables
# As shown below, we can use menu_item1.name = "Sandwich" to 
# set the name of menu_item1 to "Sandwich". Here, name is referred 
# to as an instance variable.

class MenuItem:
          pass

menu_item1 = MenuItem()

menu_item1.name = 'Sandwich'

# Using Instance Variables
# You can access and use the value of an instance variable by calling 
# instance.instance_variable_name.

print(menu_item1.name)


# -: Instances with Different Data
class MenuItem:
          pass


menu_item1 = MenuItem()

menu_item1.name = 'Sandwich'
print(menu_item1.name)

menu_item1.price = 5
print(menu_item1.price)

# Create an instance of the MenuItem class
menu_item2 = MenuItem()

# Set the name of menu_item2 to 'Chocolate Cake'
menu_item2.name = 'Chocolate Cake'

# Output the name of menu_item2
print(menu_item2.name)

# Set the price of menu_item2 to 4
menu_item2.price = 4

# Output the price of menu_item2
print(menu_item2.price)


# -: Making the Food Ordering App
# Adding Methods to Classes
# We can define functions within a class. Functions that are defined 
# within a class are known as methods. Defining methods is just like 
# defining normal functions, but by convention, the first parameter 
# is to be named self!

class MenuItem:
          def hello(self):
                    print('Hello')


# Calling Methods
# You can call methods that you defined in a class using an instance 
# of that class. The syntax for this is instance.method_name().

menu_item1 = MenuItem()

menu_item1.hello()


# -: Instance Methods
# Displaying Menu Item Information
# The self parameter in an instance method refers to the actual 
# instance that we call on. 

# How to Use self
# The first parameter, self, references the instance being called 
# on. Because of this, you can use self to access the instance 
# and its contents. In the example below, self.name is used to 
# get the value of the name instance variable of menu_item1.

class MenuItem:
          def hello(self):
                    print(self.name)

menu_item1 = MenuItem()
menu_item1.name = 'Sandwich'
menu_item1.info()

# Type Conversion Review
# Now let's use the values of name and price to output 
# "Sandwich: $5". Since the value of price is an integer, before 
# we can combine it with a string we have to convert price to 
# a string itself. Let's review how to convert an integer to a 
# string in the example below.

age = 21
print('Age: ' + str(age))


# -: Using Instance Methods
class MenuItem:
          def info(self):
                    # Return the contents of print() as a return value
                    return self.name + ': $' + str(self.price)


menu_item1 = MenuItem()
menu_item1.name = 'Sandwich'
menu_item1.price = 5

# Output the value of menu_item1.info()
print(menu_item1.info())

menu_item2 = MenuItem()
menu_item2.name = 'Chocolate Cake'
menu_item2.price = 4

# Output the value of menu_item2.info()
print(menu_item2.info())


# -: Classes & Instances Review
# Let's review what we've learned so far about classes and instances.
# A class is like a blueprint and an instance is an object that we create 
# using that blueprint. The properties of an instance are called instance 
# variables and functions are called instance methods.

# Method for the Total Price
# Using what we've learned so far, let's make a method that calculates 
# the total price. When passing arguments to the instance method, don't 
# forget that self is automatically passed. Any arguments you input will 
# go to the definition's second parameter and on.

class MenuItem:
          def get_total_price(self, count):

menu_item1.get_total_price(4)


class MenuItem:
          def info(self):
                    return self.name + ': $' + str(self.price)

          # Define the get_total_price method
          def get_total_price(self, count):
                    total_price = self.price * count
                    return total_price


menu_item1 = MenuItem()
menu_item1.name = 'Sandwich'
menu_item1.price = 5

print(menu_item1.info())

# Call the get_total_price method
result = menu_item1.get_total_price(4)

# Output 'Your total is $____'
print('Your total is $' + str(result))


# -: Special Methods
# We will learn about the special method __init__, which is 
# called every time an instance is created.

# The __init__ Method
# Let's learn about the __init__ method (also known as a class 
# constructor in Python), which is executed right after an instance 
# is created. When ClassName() is called and an instance is created, 
# the __init__ method will be called immediately after. 

# Using __init__
# The __init__ method can be defined like any other instance method.
# In the example below, executing menu_item1 = MenuItem() will 
# create a MenuItem instance and automatically call 
# the __init__ method and run the code within it.

class MenuItem:
          def __init__(self):
                    print('A menu item was created')

menu_item1 = MenuItem()


# -: Setting Instance Variables
# So what exactly do we use the __init__ method for?  
# With this method we can set the instance variables right when 
# we create an instance. So, we can basically combine steps 2 and 3.

Instance Variables in __init__
Let's set the instance variables within the __init__ method.
Within an instance method, since we can access instance variables 
using self.variable_name, we can set an instance variable with 
self.variable_name = value.

class MenuItem:
          def __init__(self):
                    self.name = 'Sandwich'

menu_item1 = MenuItem()
print(menu_item1.name)

class MenuItem:
          def __init__(self):
                    # Set self.name to 'Sandwich'
                    self.name = 'Sandwich'
          
                    # Set self.price to 5
                    self.price = 5

          def info(self):
                    return self.name + ': $' + str(self.price)

          def get_total_price(self, count):
                    total_price = self.price * count
                    return total_price


menu_item1 = MenuItem()


# -: Passing Arguments to __init__
# The __init__ method can also take arguments just like regular 
# instance methods. To pass arguments to __init__, we put the 
# arguments in ClassName() when we call it.

class MenuItem:
          def __init__(self, name:
                    # Set self.name to 'Sandwich'
                    self.name = name

menu_item1 = MenuItem('Chocolate Cake')
print(menu_item1.name)

class MenuItem:
          # Add the parameters name and price
          def __init__(self, name, price):
                    # Set this to the name argument instead of 'Sandwich'
                    self.name = name

                    # Set this to the price argument instead of 5
                    self.price = price

          def info(self):
                    eturn self.name + ': $' + str(self.price)

          def get_total_price(self, count):
                    total_price = self.price * count
                    return total_price


# Add 'Sandwich' and 5 as arguments
menu_item1 = MenuItem('Sandwich', 5)

print(menu_item1.info())

result = menu_item1.get_total_price(4)
print('Your total is $' + str(result))


# -: Moving Towards the End Product
# Reviewing import
# In Python Study III we learned how to separate Python code 
# into different files and import outside files as modules. 
# Remember that in order to import a module from module_name.py 
# we use import module_name.

# script.py
import menu_item

menu_item1 = menu_item.MenuItem(.....)

# menu_item.py
class MenuItem:
          def __init__(self, name, price):
                    self.name = name
                    self.price = price

# Directly Importing Classes
# There's actually a more convenient way to use import. As shown 
# below, you can directly import a class from a module by writing 
# from module_name import ClassName. By doing this, you can 
# use the MenuItem class just as before even within script.py.

from menu_item import MenuItem

menu_item1 = MenuItem('Sandwich', 5)

# menu_item.py
class MenuItem:
          def __init__(self, name, price):
                    self.name = name
                    self.price = price


# -: Displaying the Menu
# List of Instances
# We can also display each instance we've created from the MenuItem 
# class. As shown below, we can add every instance to a list called
# menu_items and use a for loop to output the information of each instance.

from menu_item import MenuItem

menu_item1 = MenuItem('Sandwich', 500)
menu_item2 = MenuItem('Chocolate Cake', 400)

menu_items =[menu_item1, menu_item2]

for menu_item in menu_items:
          print(menu_item.info())


# -: Displaying the Menu Item Numbers
# Numbering Items
# In our final product, we number each menu item starting from 0. 
# To add the numbers, we can make a variable (ie, index) and 
# increment it by 1 using a for loop.

lessons = ['Python', 'Ruby', 'Java']

index = 0

for lesson in lessons:
          print(str(index) + '. ' + lesson)
          index += 1


# -: Getting Input
# Getting Input as Integers
# Since the input we receive is treated as a string, we need to use int() 
# to convert it to an integer.

menu_items =[menu_item1, menu_item2]

order = int(input('Pls enter a menu item number'))

selected_menu = menu_items[order]


# -: Outputting the Total Price
# Adding a 10% Discount
# In the get_total_price method that we defined in the MenuItem class, 
# let's take off 10% (charge 90% of the price) if count is greater than 3. 
# Decimals can also be used in arithmetic with numeric types. Let's 
# multiply the value of the total_price variable by 0.9

result = selected_menu.get_total_price(4)

print(result)

# menu_item.py
class MenuItem:
          def get_total_price(self, count):
                    total_price = self.price * count

                    if count is more than 3:
                              total_price *= 0.9

                    return total_price

# Rounding
# When multiplying an integer and a decimal together, the output 
# will be decima. We actually only want our app to charge in whole 
# numbers since dealing with change is annoying. We can use 
# ound(decimal) so that we don't have to worry about change!

number = 7 * 0.9
print(round(number))                    #6

