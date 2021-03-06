# Python II
# In this lesson, we'll learn how to manage a group of 
# data and work with loops.

# -: Lists: Structuring Data
# Let's learn how to manage a group of data with a single 
# variable. When there's a list of food names, for example, 
# it isn't so efficient to manage them with separate variables, 
# like food1, food2, food3. It's better to have a foods variable 
# to manage the whole list.

# Lists
# The list data type allows you to manage a group of data all 
# at once. You can create a list as follows: [element1, element2, ...]. 
# Each value in the list is called an element. Using lists, you can 
# manage multiple strings and integers as one group.

['apple', 'banana', 200, 300]


# Assigning Lists to Variables
# Just like integers and strings, you can assign a list to a variable. 
# As a convention, the variable name is pluralized, like foods, as 
# it will contain multiple elements.

foods = ['pasta', 'curry', 'sushi']

print(foods)

# Getting an Element of a List
# Each element of a list has a number allocated like 0, 1, 2, .... 
# These are called index numbers. Keep in mind that index 
# numbers start from 0. You can get individual elements by 
# writing list[index].

print('I love ' + foods[2])


# -: Updating an Element of a List
# Let's also try updating an element of a list! This can be done 
# by writing list[index] = value.
foods[1] = 'pizza'

print(foods)

# Adding Elements to a List
# You can also add new elements to a list. Writing list.append(value) 
# allows you to add a new element to the end of a defined list.

foods.append('curry')
print(foods)


# -: Printing All the Elements
# When you want to print all the elements of a list, it isn't efficient 
# to repeat the same code like the example below. You can use 
# a for loop to make it easier.

# print('I love ' + foods[0])
# print('I love ' + foods[1])
# print('I love ' + foods[2])
# print('I love ' + foods[3])


# for Loops
# The for loop allows you to process each element of a list with 
# a temporary variable, and apply the same code to it. In the 
# example below, each element of the foods variable is stored 
# in a temporary variable called food, and printed.

for food in foods:
          print('I love ' + food)


# The Flow of for Loops
# Elements of the list will be assigned to the temporary variable 
# one by one, and the code within the for loop gets executed with 
# each assignment. This is called iteration. It's common to use the 
# list name's singular form for the temporary variable, but it can 
# be anything.


# -: Dictionaries
# Like lists, dictionaries are used to manage groups of data. The 
# difference is that dictionaries use keys instead of index numbers 
# (index). In dictionaries, a key is paired with a value, also known 
# as a key-value pair, to form one element.

# How to Create Dictionaries
# You can create a dictionary as follows: 
# {key1: value1, key2: value2, ..}. In most cases, we use strings 
# as keys. Dictionaries are enclosed with { } while lists are 
# enclosed with [ ]. Be sure to put : between the key value pair, 
# and , between elements.

fruits = { 'apple': 'red', 'banana': 'yellow', 'grape': 'purple' }

# The Order of Elements in Dictionaries
# When you print a dictionary like in the example below, the 
# printed order of the elements can be different from the order 
# you defined them. This is because unlike lists, dictionaries 
# don't have a fixed order prior to Python 3.7.

print(fruits)

# Getting an Element of a Dictionary
# You can get a value from a dictionary using the key, by 
# writing dictionary_name[key].

print('The apple is ' + fruits['apple'])


# -: Adding and Updating Dictionary Elements
# Like lists, you can add or update an element of a dictionary.
# Updating the value of an existing key can be done by writing 
# dictionary_name[key] = value.

fruits['apple'] = 'green'
print('The apple is ' + fruits['apple'])

# Adding an Element to a Dictionary
# Adding an element can be done using the same syntax as updating 
# an element. When the specified key doesn't exist in the dictionary, 
# a new element with the key will be added.

fruits['peach'] = 'pink'
print(fruits)


# -: Getting All the Elements of a Dictionary
# Like lists, you can use a for loop to iterate through a dictionary by 
# writing for variable_name in dictionary_name:. The key of each 
# element is assigned to a temporary variable. Because of that, you 
# can get the corresponding value using the variable, as shown below.

for fruit_key in fruits:
          print('The ' + fruit_key + ' is ' + fruits[fruit_key])


# -: while Loops
# You can also use while loops to repeat blocks of code. With while 
# loops, the code gets repeated until a given condition, like when 
# x <= 100 evaluates False.

x = 1

while x <= 100:
          print(x)
          x += 1

# How to Write While Loops
# The syntax for while loop is as follows:
# while <conditional expression>:         while x <= 100:
# The code in the while loop is repeated while the condition is True.
#           print(x)
#           x += 1

# Flow of While Loops
# Let's learn the flow of while loops. First, a variable is defined 
# before the while loop(x = 1). At each iteration of the while loop, 
# the condition is checked(while x <= 100:) and the variable is 
# updated(x += 1). This same cycle continues until the condition
# evaluates False.

# Infinite Loops
# If you forget to update ( x += 1) the value of the variable(x) used 
# for the condition at the end of a while loop, an infinite loop can 
# happen as the condition will always evaluate True. Infinite loops 
# put a huge load on the computer, so make sure the condition 
# evaluates False at some point in execution.

# Another possible cause of an infinite loop is forgetting to indent 
# the code to update the variable. Since the code won't be included 
# in the while loop, the condition will always evaluate True and the 
# loop would never stop.

# x = 1

# while x <= 100:
#           print(x)
# x += 1


# -: break
# You can use the break statement to exit loops immediately. Break 
# statements are usually combined with if statements. They can be 
# used the same way in while loops.

numbers = [1, 2, 3, 4, 5, 6]

for number in numbers:
          print(number)

          if number ==3:
                    break     #d loop stops as soon as number bcoms 3

numbers = [765, 921, 777, 256]

for number in numbers:
          print(number)

          # When the number variable is 777, print '777 found, stopping loop' and exit the loop
          if number == 777:
                    print('777 found, stopping loop')
                    break


# -: continue
# Unlike break statements that will terminate a loop, continue statements 
# skip the loop for just that specific iteration. Continue statements can be 
# used in the same way in both for loops and while loops.

numbers = [1, 2, 3, 4, 5, 6]

for number in numbers:

          if number % 2 == 0:
                    continue

          print(number)


# Preparing the Items: The Shopping App
# By using what we've learned so far, let's improve the shopping app 
# that we made in Python I. We'll be printing the results according to 
# the number of fruits entered in the console.

# Preparing the Fruits
# Let's start by preparing a dictionary to represent fruits! This dictionary 
# will have the names of fruit as keys, and their prices as values. We'll 
# also print the price of each fruit using loops.

# Create a dictionary with keys and values, and assign it to the items variable
items = {'apple': 2, 'banana': 4, 'orange': 6}

# Create a for loop that gets the keys of items
for item_name in items:
          # Print '--------------------------------------------------'
          print('--------------------------------------------------')

          # Print 'Each ____ costs ____ dollars'
          print('Each ' + item_name + ' costs ' + str(items[item_name]) + ' dollars')


# -: Buying Fruit
# Next, let's enable the user to input the number of each fruit they want.
# We'll use input(), which we learned in Python I, to get the input.
# We'll then print the details of the purchase.

items = {'apple': 2, 'banana': 4, 'orange': 6}

for item_name in items:
          print('--------------------------------------------------')
          print('Each ' + item_name + ' costs ' + str(items[item_name]) + ' dollars')
          
          # Receive a value by using input(), and assign it to the input_count variable
          input_count = input('How many ' + item_name + 's do you want?: ')
          
          # Print 'You will buy ____ ____s' by using input_count and item_name
          print('You will buy ' + input_count + ' ' + item_name + 's')
          
          # Convert input_count to an integer and assign it to the count variable
          count = int(input_count)
          
          # Multiply the price of each item and the count variable, and assign it to the total_price variable
          total_price = count * items[item_name]
          
          # By using total_price and type conversion, print 'The total price is ____ dollars'
          print('The total price is ' + str(total_price) + ' dollars')


# Control Flows
# You can now purchase the fruits. Next, let's create a control flow to 
# compare the user's remaining money to the total price!

# Assign 20 to the money variable
money = 20

items = {'apple': 2, 'banana': 4, 'orange': 6}

for item_name in items:
          print('--------------------------------------------------')
          
          # Using the money variable, print 'You have ____ dollars in your wallet'
          print('You have ' + str(money) + ' dollars in your wallet')
          
          print('Each ' + item_name + ' costs ' + str(items[item_name]) + ' dollars')
          
          input_count = input('How many ' + item_name + 's do you want?: ')
          print('You will buy ' + input_count + ' ' + item_name + 's')
          
          count = int(input_count)
          total_price = items[item_name] * count
          print('The total price is ' + str(total_price) + ' dollars')
          
          # Add control flow based on the comparison of money and total_price
          if money >= total_price: 
                    print('You have bought ' + input_count + ' ' + item_name + 's')
                    money -= total_price
          else:
                    print('You do not have enough money')
                    print('You cannot buy that many ' + item_name + 's')


# -: Calculating the Remaining Money
# To finish off, we'll print the money left in your wallet after buying 
# some fruit! Also, let's modify the program to exit a loop if your 
# wallet becomes empty while shopping.

money = 20

items = {'apple': 2, 'banana': 4, 'orange': 6}

for item_name in items:
          print('--------------------------------------------------')
          print('You have ' + str(money) + ' dollars in your wallet')
          print('Each ' + item_name + ' costs ' + str(items[item_name]) + ' dollars')
          
          input_count = input('How many ' + item_name + 's do you want?: ')
          print('You will buy ' + input_count + ' ' + item_name + 's')
          
          count = int(input_count)
          total_price = items[item_name] * count
          print('The total price is ' + str(total_price) + ' dollars')
          
          if money >= total_price:
                    print('You have bought ' + input_count + ' ' + item_name + 's')
                    money -= total_price
          
                    # When money is equal to 0, print 'Your wallet is now empty' and stop the loop
                    if money == 0:
                              print('Your wallet is now empty')
                              break
          else:
                    print('You do not have enough money')
                    print('You cannot buy that many ' + item_name + 's')
                    
# Using the money variable and type conversion, print 'You have ____ dollars left'
print('You have ' + str(money) + ' dollars left')
