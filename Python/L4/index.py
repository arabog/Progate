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

