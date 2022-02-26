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




#Progate @progateEN @dev_careers #dev_careers
