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






#Progate @progateEN @dev_careers #dev_careers
