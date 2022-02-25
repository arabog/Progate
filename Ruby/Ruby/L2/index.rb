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
user = {
          "name" => "john", 

          "age" => 21
}
puts user["name"]

# symbols
user = {
          :name => "john", 

          :age => 21
}
puts user[:name]