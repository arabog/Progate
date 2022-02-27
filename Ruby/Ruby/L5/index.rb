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

#Progate @progateEN @dev_careers #dev_careers
