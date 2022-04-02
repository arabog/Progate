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

