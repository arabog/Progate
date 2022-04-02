#Dividing Food and Drinks
# We will prepare both a Food class and a Drink class

# Using Existing Classes
# Next, let's make new Food and Drink classes. Although we could 
# make new classes from scratch, we can also base the Food and 
# Drink classes on the MenuItem class. By doing this, we can write 
# code more efficiently because we avoid writing the same code 
# more than once.

# What is Inheritance?
Making a new class based on another class is called inheritance. 
Here, the new class is called a child class and the class it is based 
on is called the parent class. By writing 
class ChildClassName(ParentClassName): we can inherit the 
ParentClass blueprint to the newly defined ChildClass.

from menu_item import MenuItem

class Food(MenuItem):
          pass


# -: What is Inheritance?
#  Now the child class inherits the instance methods of the parent class.

# Instances of the Child Class
# The child class inherits the instance methods of the parent class.
# As shown below, the Food class instance can use the __init__ and 
# info methods that were defined within the MenuItem class.

script.py
from food import Food

food1 = Food('Sandwich', 5)

print(food1.info()) # Sandwich: $5


# -: Adding Instance Methods
# The Instance Method of the Child Class
# Now, let's add a calorie_info method inside the Food class. 
# Keep in mind that the child class can use both the methods 
# defined in the parent class and the methods that are defined 
# within itself. However, parent classes cannot use methods 
# defined in the child class.

# food.py
class Food(MenuItem):
          def calorie_info(self):
                    print('kcal: ' + str(self.calorie_count))

# script.py
from food import Food
from drink import Drink

food1 = Food('Sandwich', 5)

# Set the calorie_count variable of food1 to 330
food1.calorie_count = 330
# Call the calorie_info method from food1
food1.calorie_info()


# -: Overriding Methods
# Now, since we have added the calorie information, let us improve 
# the info method to enable us to display the calories as well.

# Overriding
# When you define a method in the child class with the same name 
# as the parent class, you can override the existing methods. When 
# you override, the instances of the child class will call the method 
# defined in the child class instead of the method from the parent class.

# How Overriding Works
# The child class instance will call the method defined in the child class 
# if it exists. Therefore, in the case that there's a method with the same 
# name in both the child and parent classes, the parent's method is 
# overridden.

class Food(MenuItem):
          # Define the info method
          def info(self):
                    return self.name + ': $' + str(self.price) + ' (' + str(self.calorie_count) + 'kcal)'

# script.py
food1 = Food('Sandwich', 5)
food1.calorie_count = 330
print(food1.info())


# -: Defining the info Method in the Drink Class
class Drink(MenuItem):
          # Define the info method
          def info(self):
                    return self.name + ': $' + str(self.price) + ' (' + str(self.volume) + 'mL)'
    

# script.py
drink1 = Drink('Coffee', 3)
drink1.volume = 180
print(drink1.info())


# -: Let's Override the __init__ Method
# Let us apply the technique of overriding to the __init__ method as well.
# By doing this, in the Food class, we will be able to insert the value of the 
# calorie_count instance variable when we create the instance.

# Here, we'll override the __init__ method in the MenuItem class 
# within the Food class. As you can see below, you can change the 
# umber of parameters when overriding.

class Food(MenuItem):
          def __init__(self, name, price, calorie_count):
                    self.name = name
          self.price = price
          self.calorie_count = calorie_count

# script.py
from food import Food

food1 = Food('Sandwich', 5, 330)


# -: Overlap Inside Methods
# In the Food class, we overrode the __init__ method, but now there 
# is duplicate code with name and price of the __init__ method in 
# the MenuItem class.

super()
Using super() in the method that you overrode allows you to call 
methods of the parent class. Also, as shown below, by writing 
super().methodName(), you can use instance methods defined in 
the parent class.

# food.py
class Food(MenuItem):
          def __init__(self, name, price, calorie_count):
                    super().__init__(name, price)
                    self.calorie_count = calorie_count


# -: The __init__ Method for the Drink Class
#  Now, in the same way, let us try to override the __init__ method in the Drink class.



