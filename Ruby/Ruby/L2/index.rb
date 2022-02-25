# Structuring Data
# Let's learn how to manage a group of data with a single variable. 
# For example, when there's a list of user's name, it's not efficient 
# to manage them with separate variables, like name1, name2, 
# name3. It's better to have a names variable to manage the whole list.

# Arrays
# You can use arrays to manage a group of data all at once. 
# You can create an array as follows: [value1, value2, ...]. 
# Each value in an array is known as an element. Using arrays, 
# you can manage a collection of data as one group.


# Assigning Arrays to Variables
# Just like integers and strings, you can assign an array to a variable.
# As a convention, the variable name is pluralized, like names, as it 
# will contain multiple elements. 

# names = ['John', 'Bob', 'Kate']

# puts names

# Index Numbers
# For each element of an array, a number is given like 0, 1, 2, .... 
# These numbers are known as index numbers. Keep in mind 
# that index numbers start from 0.

# Getting an Element of an Array
# You can get each element of an array by writing array_name[index].

# Arrays and String Interpolation
# Just like other variables, you can use string interpolation with an 
# element of an array.

# names = ['John', 'Bob', 'Kate']

# puts "My name is #{names[1]}"


# Loops
# When you want to print all the elements of an array, it's not efficient 
# to repeat the same code. You can use loops to make this easier. 

# The each Method
# The each method allows you to access each element of an array 
# in a temporary variable, and apply the same code to it. You begin 
# a loop by writing array_name.each do |variable_name|, and place 
# the code you want to repeat before end.

# array_name.each do |variable_name|
          #puts variable_name
# end

# names = ['John', 'Bob', 'Kate']

# names.each do |name|
#           puts name
# end

# Scope
# The temporary variable for the each method can only be used in 
# the do...end block. An error will occur if used outside the each 
# statement. The range where a variable can be accessed is 
# called the scope.

# On the other hand, variables defined outside of the each 
# method can be used inside the each method. 

# message = "Hello"

# names = ['John', 'Bob', 'Kate']

# names.each do |name|
#           puts name
# end

# puts name           #impossible

# puts message        #possible

# Hashes  (ds is like obj)
# Like arrays, hashes are used to manage multiple groups of data. 
# The difference is that hashes use keys instead of index numbers. 
# With hashes, a key is paired with a value to form one element.

# Create a Hash
# {key1 => value1, key2 => value2, ...} creates a hash. Hashes are 
# enclosed in {}, while arrays are enclosed in []. Be sure to put => 
# between the key-value pair, and a comma , between the elements.

# {"name" => "john", "age": 21}

# Assigning Hashes to Variables
# Just like an array, a hash can be stored into a variable. puts 
# user will simply print the defined hash

# user = {
#           "name" => "john", 

#           "age" => 21
# }

# puts user

# Getting the Value of an Element
# You can get the value of an element using its key, by writing 
# hash_name[key].

# user = {
#           "name" => "john", 

#           "age" => 21
# }

# puts user["name"]

# Updating an Element of a Hash
# The value of an element in the hash can be updated using 
# hash_name[key] = new_value.

# user = {
#           "name" => "john", 

#           "age" => 21
# }

# user["age"] = 22

# puts user


# Adding an Element to a Hash
# You can add an element to the hash using the same syntax 
# as updating an element: hash_name["key"] = new_value. 
# However, be aware that if you specify a key that already 
# exists in the hash, you're updating the element, not adding it.

# user = {
#           "name" => "john", 

#           "age" => 21
# }

# puts user

# user["gender"] = "male"

# puts user

# Symbols
# The key of a hash can be written by prepending (adding 
# in front) the key with a colon : instead of enclosing them 
# in ' or ". The way of writing :name is known as symbol.

# strings
# user = {
#           "name" => "john", 

#           "age" => 21
# }

# symbols
# user = {
#           :name => "john", 

#           :age => 21
# }

# puts user
# ds is prepending a colon

# Strictly speaking, strings and symbols are different things, 
# but they can be used in the same way.

# Using Symbols for Keys
# Symbols are commonly used for hash keys. If you use 
# symbols for the hash keys, you need to also use 
# symbols to get the value.

# strings
# user = {
#           "name" => "john", 

#           "age" => 21
# }
# puts user["name"]

# symbols
# user = {
#           :name => "john", 

#           :age => 21
# }
# puts user[:name]

# The Shorthand Syntax for Symbol Keys
# You can use the shorthand syntax of writing the hash 
# key when using symbols. :key => can be abbreviated 
# to key:

# user = {
#           :name => "john", 

#           :age => 21
# }


# user = {
#           name: "john", 

#           age: 21
# }

# puts user

# Even with the shorthand syntax, the keys are still symbols. 
# Therefore, when you want to get the value, you must use 
# a symbol as the key.

# puts user[:name]

# Hash Syntax
# Let's review the ways to define hashes. As we've learned 
# so far, there are three ways to define them. The most 
# common way is to use the shorthand form, so make 
# sure you remember its syntax!

# strings as keys
# user = {
#           "name" => "john", 

#           "age" => 21
# }


# symbols as keys
# user = {
#           :name => "john", 

#           :age => 21
# }

# symbols as keys(shorthands)
# user = {
#           name: "john", 

#           age: 21
# }

# exam = {subject: "Math", score: 80}

# puts "#{exam[:subject]} score is #{exam[:score]}"

# When the Symbol Doesn't Exist
# So far, we've gotten the value of the hash using hash_name[symbol]. 
# But what will happen if we specify a symbol that doesn't exist in the hash?

# user = {
#           name: "john", 

#           age: 21
# }

# puts user[:weight]  # ds symbol doesn't exist so noth is printed


# nil
# There is a special value in Ruby known as nil to express that 
# a value doesn't exist. Since nil means "nothing", puts nil 
# will print nothing.

# Avoiding nil
# Let's learn how to use control flow with nil. This will 
# enable you to print different things based on whether 
# n element with the symbol :age exists or not. We'll be 
# learning how to combine the if statement with a nil value.

# if and nil
# We've learned how to use boolean values with if statements. 
# You can actually use values other than booleans as conditions. 
# When you use values that are false or nil, the code won't be 
# executed, but all values other than false and nil are treated 
# as true.

# Using if with nil
# Since nil is treated as false, you can use hash values as conditions. 
# In the example below, the condition of the value user[:age] is 21, 
# which is neither nil nor false, so the if statement is executed. 
# In the anoda example below, the value user[:age] is nil, 
# so the else statement is executed.

user = {
          name: "john", 

          age: 21
}

if user[:age]
          puts "#{user[:name]} is #{user[:age]} years old"
else 
          puts "#{user[:name]}'s age is unknown"
end

# ---------------

user = {
          name: "john", 
}

if user[:age]
          puts "#{user[:name]} is #{user[:age]} years old"
else 
          puts "#{user[:name]}'s age is unknown"
end