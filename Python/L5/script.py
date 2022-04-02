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

