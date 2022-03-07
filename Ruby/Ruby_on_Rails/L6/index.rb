# Creating Users
# We'll create the User model next.
# TweetApp will have more Social Media like features, like sign up and log in.

# Creating the Model and the Table
# We first need to add the users table to the database, along 
# with the User model to handle it.

# To do this, we can follow the same process we did for the 
# posts table and the Post model.

# We need the name and email columns

# Creating the Model and the Table
# You can create the User model and the users table with
#  the command below. We've added two pieces of data, 
# name and email. The column_name: data_type can be 
# used multiple times in a line to create multiple columns 
# at the same time. string is used for short text like name and email.

rails g model User name:string email:string

rails db:migrate    #applies d changes to d db

# Using the rails db:migrate command, reflect 
# the contents of the migration file to the database. 

# Creating a User
# Now that we have the users table, let us actually save a user to the 
# database. We will try it out using rails console.

# Recall that we needed to do the following to save data to the database:
# 1. Create an instance of the User model using the new method
# 2. Save it to the users table using the save method

rails console
user = User.new(name: "Ken the Ninja", email: "ken@prog.com")

user.save

# Adding Validations
# We have successfully created a user. But right now, users without a 
# name or email can be created. Let us prevent this by adding validations 

# We can also display error messages by adding validations.
# In addition, we should add a validation to prevent users from 
# having the same email.

# Checking the Uniqueness of a Value
# Let's add a validation to check for a "duplicate email" so that 
# new users can't register with an email already stored in the 
# database. You can validate the uniqueness with uniqueness: true

models/user.rb
class User < ApplicationRecord
          validates :email, {uniqueness: true}
end

# Set 2 validations on the email column to prevent the following:
# ・An empty value
# ・A duplicate email
# E.g:
user1 = User.new(name: "Master Wooly", email: "master@prog-8.com")
user1.save

user2 = User.new(name: "Master", email: "master@prog-8.com")
user2.save

class User < ApplicationRecord
          # Validate that the name column is not empty
          validates :name, {presence: true}
          
          # Validate that the email column is unique and not empty
          validates :email, {presence: true, uniqueness: true}
          
end
