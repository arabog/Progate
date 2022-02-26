# Ruby Methods
# We'll be working with methods in this lesson.

# Methods
# A method lets you combine multiple lines of code into a single unit.

# Defining a Method
# Let's take a look at how to write methods. By writing def method_name 
# and end, and placing code in between them, 

# def introduce
#           puts "Hello"
#           puts "I am Ken the Ninja"
# end


# Calling a Method
# Methods are not executed just by defining them. You need to call them 
# when you want to use them. You can call a method simply by writing 
# the method name. 

# introduce

# Defining a Method
# Let's learn how to define a method from scratch. All you have to 
# know is that you must write the code you want to execute between 
# def method_name and end.

# def method_name 
          # some code
# end

# Arguments
# You can pass values to a method when you call it. These values 
# are known as arguments, and can be used inside methods. For 
# example, you can make the introduce method print different 
# names based on the argument provided.

# def method_name(parameter)
          # some code
# end

# Calling a Method with a Parameter
# When you want to call a method that has a parameter, you can pass an 
# argument as follows: method_name(argument). The method will receive 
# the argument, and pass it into the parameter. 

# def method_name(parameter)
          # some code
# end

# method_name(argument)

# Using Parameters
# Parameters can be used inside a method just like other variables. 

# def introduce(name)
#           puts "Hello"
#           puts "I am #{name}"
# end

# introduce("Ken the Ninja")
# introduce("Master Wooly")

# Value Types of Arguments
# We can also pass in values of other types, such as integers.

# def introduce(age)
#           puts "Hello"
#           puts "I am #{age} years old"
# end

# introduce(14)

# ArgumentError
# The number of parameters and arguments must match. 
# If your method has a parameter but you try to call it 
# without an argument, you'll get an ArgumentError.

# def introduce(age)
#           puts "Hello"
#           puts "I am #{age} years old"
# end

# introduce

# The Scope of Parameters
# In the previous lesson, we learned that a variable has 
# its own scope, the specific range where the variable 
# can be accessed. A parameter is a variable, and its 
# scope is restricted to the boundary of the method. 
# Therefore, it cannot be accessed outside of the method.

# def method_name(parameter)
          # scope of d parameter
# end

# can't access d parameter from here

# The Scope of Variables inside Methods
# Just like parameters, they can only be used inside the method.

# Multiple Parameters
# You can add multiple parameters to a method by separating them 
# with a comma ,.

# def introduce(name, age)
#           puts "I am #{name}"
#           puts "I am #{age} years old"
# end

# introduce("Ken", 12)

# the order of the arguments must correspond to the order of the parameters.

# Return Values
# The result we receive from calling the method is also known as the 
# return value. 

# def method_name(parameter)
          # return value
# end

# Receiving the Return Value
# When you call a method that has a return value, the caller 
# will be replaced by the value. In the example below, add(1,3) 
# will be replaced by 4, then assigned to a variable.

# def add(a, b)
#           return a + b
# end

# sum = add(2, 3)

# puts sum

# Types of Return Values
# We can use return with all kinds of values, like strings and booleans. 
# For example, you can return a boolean value. As a convention, we 
# add a question mark ? at the end of the method name if it returns 
# a boolean value.

# def negative? (number)
#           return number < 0
# end

# puts negative? (5)

# Call the shipping_free? method with 30  as the argument, 
# then use the return value as the condition for the if statement.

# Define the shipping_free? method
# def shipping_free? (price)
#           return price >= 50
# end


# Add control flow based on the return value of the shipping_free? function
# if shipping_free?(30)
#           puts "Shipping is free for purchases above $50"
# else
#           puts "The shipping fee will be $5"
# end

# How return Works
# Let's look deeper into how return works. Not only does return 
# send back the return value to the caller, but it also terminates 
# the execution of a method. This means that anything that 
# comes after return won't be executed.

# Multiple Returns
# By adding control flow, you can use return multiple times. 

# def judge(score)
#           if score > 80
#                     return "Great Job!"
#           end

#           return "You can do better"
# end

# puts judge(70)


# Keyword Arguments
# When we have a lot of parameters, it gets difficult to see 
# which argument corresponds to which parameter. This 
# can be solved by using keyword arguments. With 
# keyword arguments, we can explicitly specify the 
# parameter name.

# def introduce(name, age, food)
#           puts "I am #{name}"
#           puts "I am #{age} years old"
#           puts "I like #{food}"
# end

# introduce("Ken", 12, "noodles")


# def introduce(name:, age:, food:)
#           puts "I am #{name}"
#           puts "I am #{age} years old"
#           puts "I like #{food}"
# end

# with keyword
# introduce(name: "Ken", age: 12, food: "noodles")

# Methods with Keyword Arguments
# We can define a method with keyword arguments by:
# 1. On the method definition, put a colon : after the parameter.
# 2. On the method caller, prepending the parameter name with 
# a colon : to each argument.

# def introduce(name:, age:, food:)
#           puts "I am #{name}"
#           puts "I am #{age} years old"
#           puts "I like #{food}"
# end

# introduce(name: "Ken", age: 12, food: "noodles")








#Progate @progateEN @dev_careers #dev_careers
