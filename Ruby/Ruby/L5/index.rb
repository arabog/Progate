# Class Inheritance
# practical uses of classes 

# Let's create the Food and Drink classes, and have them 
# print different strings.

# If the menu item is a food, we will display its calorie, 
# but if it is a drink, we will display its volume!

# Using an Existing Class
# While we can create the classes from scratch, it's also 
# possible to use the Menu class as the base. This way, 
# we won't be repeating the same code in multiple places.


# Class Inheritance
# Creating a class based on another class is known 
# as inheritance. Child class is referring to the new class, 
# while parent class is referring to the class used as a base. 
# You can use inheritance as follows: class ChildClass < ParentClass.

# require "./menu"

# class Food < Menu 
#           # sm code
# end


# How Inheritance Works
# With class inheritance, the child class inherits all the instance 
# variables and methods of the parent.

# Instances of the Child Class
# The child class has access to all the instance variables and 
# methods of the parent class. In the example below, an 
# instance of the Food class is calling the instance variables 
# and methods of the Menu class.


class Menu
          attr_accessor :name

          def info
                    return "#{self.name} $#{self.price}"
          end

end


class Food < Menu 
          # sm code
end

food1 = Food.new(name: "Pizza", price: 8)

food1.name

food1.info

# Adding Instance Variables
# Now that the Food and Drink classes are prepared, 
# let us add the calorie instance variable to Food, 
# and the volume instance variable to Drink.


# Adding an Instance Variable to a Child Class
# To add an instance variable to the child class, we can 
# again use attr_accessor. In the example below, the 
# Food class has the calorie instance variable in addition 
# to the name and price variables defined in the Menu class.


class Food < Menu 
          attr_accessor :calorie
end


# Adding Instance Methods
class Food < Menu 
          attr_accessor :calorie

          def calorie_info

          end
end


# Let's add an instance method to the Food class.
require "./menu"

class Food < Menu
          attr_accessor :calorie
          
          # Define the calorie_info method
          def calorie_info
                    return "#{self.name} is #{self.calorie} kcal"
          end
end


# Customizing the Methods
# We will be overriding the info method in the Food class.

# Method Override
# You can override a method by defining a method with 
# the same name in the child class. If you override a 
# method, the instances of the child class will call the 
# method in the child class, not the one in the parent class.

class Menu
          def info
                    # d info method in parent class
          end
end

class Food < Menu
          def info
                    # overriding d info method in parent class
          end
end

# How Overriding Works
# Let's look at overriding in more depth. When you call 
# a method from a child class instance, it first looks for 
# the method in the child class. If it isn't found there, it 
# then looks for the method in the parent class.


# Overriding the initialize Method
# Let us use the override technique we just learned to override 
# the initialize method as well.

# That way, the Food class can assign the value of the calorie 
# instance variable when we call Food.new.

# Avoiding Duplications
# We were able to override the initialize method in the Food class, 
# but we have repeated the same code for initializing the name 
# nd price instance variables.

class Menu
          attr_accessor :name
          attr_accessor :price

          # Rewrite the initialize method
          def initialize(name:, price:)
                    self.name = name
                    self.price = price
          end

end


class Food < Menu
          attr_accessor :name
          attr_accessor :price

          # Rewrite the initialize method
          def initialize(name:, price:, calorie)
                    self.name = name
                    self.price = price

                    self.calorie = calorie
          end

end

# super
# When overriding a method, you can call the method 
# of the parent class using super. When doing so, you 
# must pass the necessary arguments to it.

class Food < Menu
          attr_accessor :name
          attr_accessor :price

          # Rewrite the initialize method
          def initialize(name:, price:, calorie:)
                    # converting 
                    # initialize(name:, price:) &
                    # self.name = name & self.price = price to ds:
                    super(name: name, price: price) 
                    
                    self.calorie = calorie
          end

end


class Drink < Menu
          attr_accessor :name
          attr_accessor :price

          # Rewrite the initialize method
          def initialize(name:, price:, volume:)
                    # converting 
                    # initialize(name:, price:) &
                    # self.name = name & self.price = price to ds:
                    super(name: name, price: price) 
                    
                    self.volume = volume
          end

end

# Dealing with Dates
# We will be adding one last feature to the app. Let us give 
# a $1 discount on Sundays.

# The Date Class
# To handle dates, you can use the class known as Date class. 
# The Date class is a predefined class in Ruby, so you can use 
# it by importing it using require as shown in the image below. 
# Note that you don't need the ./ to import predefined classes.

require "date"


# An Instance of Date
# Just like all the classes we used before, the Date class uses 
# Date.new to create a new instance. If you run puts on a 
# Date class instance, it'll print the date

require "date"

date1 = Date.new(2014, 07, 31)


puts date1

# Instance Methods of Date
# The Date class has many instance methods that we can use. 
# We'll be using the sunday? instance method in the exercise, 
# which returns true if the date of the Date class instance is 
# Sunday, and false if it isn't.

require "date"

date1 = Date.new(2014, 07, 31)


puts date1.sunday?   #false







#Progate @progateEN @dev_careers #dev_careers
