# Ruby Classes
# This is the second to last lesson of the Ruby course!
# In this lesson, you'll be learning about classes,

# Ruby Classes
# This is the second to last lesson of the Ruby course!
# In this lesson, you'll be learning about classes,

# Creating an Object
# To create an object, you first need to prepare its blueprint. 
# In programming terms, this blueprint is commonly known 
# as the class, and each object is known as an instance.

# Defining a Class
# Let's first prepare the blueprint by defining a class. Classes can 
# be defined with the following syntax: class ClassName. Bear in 
# mind that the class name has to start with a capital letter. Also, 
# don't forget to close the class definition using end like in methods.

# class Menu
          # some code
# end


# Instance Variables 
# attr_accessor
# One of the ways that we can define the data for a class is by using 
# attr_accessor. For example, we can allow the Menu class to have 
# a name by writing attr_accessor :name, as seen in the image below. 
# The information contained within a class are known as instance 
# variables.

# Creating Multiple Instance Variables
# A class can have multiple instance variables. Let's prepare the two 
# instance variables name and price in the Menu class,


# class Menu
#           attr_accessor :name

#           attr_accessor :price
# end

# Creating an Instance of a Class
# To create an instance of a class, we use the new method. In the 
# example below, we've created an instance of the Menu class, 
# and assigned it into the menu1 variable.


# class Menu
          # some code
# end

# menu1 = Menu.new


# Adding Data to an Instance
# Assigning a Value to the Instance Variable
# To add data to an instance, we assign a value to its instance variable.
# For example, menu1.name = "Sushi" will give Sushi as the value of 
# the name instance variable of the menu1 instance.

# class Menu
#           attr_accessor :name

#           attr_accessor :price
# end

# menu1 = Menu.new

# menu1.name = "Sushi"


# Using Instance Variables
# You can use the value of an instance variable simply by calling it 
# using a dot .. To get the value of name of the menu1 instance, 
# use menu1.name.

# puts menu1.name


# Instances with Different Data
# class Menu
#           attr_accessor :name
#           attr_accessor :price
# end

# menu1 = Menu.new

# menu1.name = "Pizza"
# puts menu1.name

# menu1.price = 8
# puts menu1.price


# Assign an instance of Menu to the menu2 variable
# menu2 = Menu.new

# Assign "Sushi" to the name of the menu2 instance
# menu2.name = "Sushi"

# Print the name of the menu2 instance
# puts menu2.name

# Assign 10 to the price of the menu2 instance
# menu2.price = 10

# Print the price of the menu2 instance
# puts menu2.price



# Defining a Method in a Class
# A class can also have its own methods. 

# class Menu
#           attr_accessor :name
#           attr_accessor :price

#           def show
#                     puts "This is menu"
#           end
# end

# Calling a Method of a Class
# A method defined inside a class can be called by its 
# instances using a dot .. In the example below, we've 
# called the show method using the menu1 instance.

# menu1 = Menu.new
# menu1.show          # This is menu

# Instance Methods
# The methods defined inside a class are called instance methods, as they 
# are to be called from an instance.

# Using Instance Methods
# Instance methods can be used just like the methods we learned in the 
# previous lesson. They can take arguments, and have return values. 
# The only difference is that they're called on an instance.

# class Menu
#           attr_accessor :name
#           attr_accessor :price

#           def show(data)
#                     return "This is #{data}"
#           end
# end

# menu1 = Menu.new
# puts menu1.show("menu")


# Using Instance Variables in Instance Methods
# In the instance method, we can access instance variables by using 
# a special keyword self like self.variable_name. The keyword self 
# refers to the instance.

# class Menu
#           attr_accessor :name
#           attr_accessor :price

#           def show_name
#                     return "This is #{self.name}"
#           end
# end

# menu1 = Menu.new

# menu1.name = "Pizza"

# puts menu1.show_name


# --------------------
# Classes and Instances Review
# Let's do a quick review on classes and instances. A class is the 
# blueprint of the object you'd like to create, and an instance is 
# the actual object. Inside a class, we can define instance variables 
# and instance methods to add variables and data to each instance.


# class Menu
#           attr_accessor :name
#           attr_accessor :price
          
#           def info
#                     # Fill in the #{}
#                     return "#{self.name} $#{self.price}"
#           end
# end

# menu1 = Menu.new
# menu1.name = "Pizza"
# menu1.price = 8

# puts menu1.info     # Pizza 8

# Calculating the Total Price
# Let's make use of what we've learned so far to create the get_total_price 
# method, which returns the total price of a menu item. We'll give a 
# $1 discount for purchases of 3 items or more.

# class Menu
#           attr_accessor :name
#           attr_accessor :price
          
#           def info
#                     # sm code
#           end

#           def get_total_price(count)
#                     # sm code
#           end
# end

# class Menu
#           attr_accessor :name
#           attr_accessor :price
          
#           def info
#                     return "#{self.name} $#{self.price}"
#           end
          
#           # Define the get_total_price method
#           def get_total_price(count)
#                     total_price = self.price * count

#                     if count >= 3
#                               total_price -= 1
#                     end
#                               return total_price
#                     end
#           end

# menu1 = Menu.new
# menu1.name = "Pizza"
# menu1.price = 8

# Print the return value of the get_total_price method of the menu1 instance
# puts menu1.get_total_price(3)
          
# Initializing Instance Variables
# There is a way to create an instance and assign value to an instance 
# variable at the same time. It will make the process considerably easier.


# The initialize Method
# We can use the initialize method to assign values to the instance 
# variables of an instance. The initialize method will automatically 
# be executed right after you create an instance using the new method.


# Using the initialize Method
# The initialize method can be defined just like other instance methods. 
# In the example below, the initialize method is automatically executed 
# when a new instance of Menu is created using Menu.new.

# class Menu
#           def initialize
#                     puts "The menu has been created"
#           end
# end

# menu1 = Menu.new

# Using Instance Variables inside the initialize Method
# Let's give initialize values to the instance variables. We handle 
# instance variables with self.variable_name in the instance method, 
# so let's also do it in the initialize method.

# class Menu
#           attr_accessor :name

#           def initialize
#                     self.name = "Pizza"
#           end

# end

# menu1 = Menu.new

# puts menu1.name

# Passing Arguments to the initialize Method
# We can pass arguments to the initialize method the same way you'd pass 
# arguments to an instance method. Arguments can be passed to the 
# initialize method when we call the new method.

# class Menu
#           attr_accessor :name

#           def initialize(message)
#                     puts message
#           end

# end

# menu1 = Menu.new("Hello")

# Assigning Values to Instance Variables
# By passing the values of instance variables using arguments, you 
# can initialize the instances with different data, as seen below. 
# Keyword arguments are often used for better readability.

# class Menu
#           attr_accessor :name
#           attr_accessor :price

#           def initialize(name:, price:)
#                     self.name = name

#                     self.price = price
#           end

# end

# menu1 = Menu.new(name: "Pizza", price: 8)


# class Menu
#           attr_accessor :name
#           attr_accessor :price

          # Rewrite the initialize method
#           def initialize(name:, price:)
#                     self.name = name
#                     self.price = price
#           end

#           def info
#                     return "#{self.name} $#{self.price}"
#           end

#           def get_total_price(count)
#                     total_price = self.price * count

#                     if count >= 3
#                               total_price -= 1
#                     end

#                     return total_price
#           end
# end

# Add keyword arguments for name and price
# menu1 = Menu.new(name: "Sushi", price: 10)

# puts menu1.info

# Separating Files
# require
# After moving the Menu class to menu.rb, we need to 
# make sure that the code in menu.rb can be used in 
# index.rb. To do so, add require "./menu" to the top line of index.rb.

# Displaying the Menu
# Array of Instances
# Instances created from the Menu class can also be used as 
# elements of an array. As shown in the example below, let's try 
# to display each menu item by assigning the array of instances 
# to the variable menus and use the each statement to iterate 
# through the array.

# menu1 = Menu.new(name: "Pizza", price: 8)
# menu2 = Menu.new(name: "Sushi", price: 10)

# menus = [menu1, menu2]

# menus.each do |menu|
#           puts menu.info
# end

# Next, we have to give numbers to the menu items so that 
# we can select a menu.

# Displaying Index Numbers Using Loops
# In the project overview, we see that there are there are 
# numbers starting from 0 on the left of the menu names. 
# To number them, we need to prepare a variable outside 
# of the each statement to store the numbers, then inside 
# the each statement, we need to increase the value by 
# 1 on every iteration

# fruits = ["apple", "banana", "orange"]

# index = 0

# fruits.each do |fruit|
#           puts "#{index}. #{fruit}"

#           index += 1
# end

# Getting Input
# gets.chomp
# To receive input from the console, we use the gets.chomp 
# method. gets.chomp will stop the execution, then wait for 
# input. By assigning gets.chomp to a variable, 
# like name = gets.chomp, the text input in the console 
# will be assigned to the variable.

# puts "Enter your name"

# name = gets.chomp

# puts "Your name is #{name}"

# Getting Integer Input
# Because the value received from gets.chomp will be a string, 
# even if 3 is entered, it will be treated as string "3". Since 
# strings can't be used for calculation, we'll convert it to an 
# integer. You can use the to_i method to do this, like gets.chomp.to_i.

puts "Enter any number"

number = gets.chomp.to_i

puts "#{number} times 2 is #{number * 2}"

# ------------------

puts "Please enter your name"

# Receive input, then assign it to the name variable
name = gets.chomp

# Print "Hello, ____"
puts "Hello, #{name}"

puts "This cake costs $2"
puts "How many would you like to buy?"

# Receive input, then assign it to the count variable as an integer
count = gets.chomp.to_i

# Assign 2 * count to the total_price variable
total_price = count * 2

# Print "The total price is $____"
puts "The total price is $#{total_price}"

# Selecting a Menu Item
require "../project/menu"

menu1 = Menu.new(name: "Pizza", price: 8)
menu2 = Menu.new(name: "Sushi", price: 10)
menu3 = Menu.new(name: "Cola", price: 3)
menu4 = Menu.new(name: "Tea", price: 2)

menus = [menu1, menu2, menu3, menu4]

index = 0

menus.each do |menu|
          puts "#{index}. #{menu.info}"

          index += 1
end

puts "--------------"
puts "Select an item by its number:"

# Receive input, then assign it to the order variable as an integer
order = gets.chomp.to_i

# Assign the selected menu to the selected_menu variable
selected_menu = menus[order]

# Print "You have selected: ____"
puts "You have selected: #{selected_menu.name}"

puts "How many?(Buy 3 or more for $1 discount):"

# Receive input, then assign it to the count variable as an integer
count = gets.chomp.to_i

# Print "The total price is $____"
puts "The total price is $#{selected_menu.get_total_price(count)}"



#Progate @progateEN @dev_careers #dev_careers
