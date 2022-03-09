# Creating the Login Feature
# In this lesson, we will create the login/logout feature.
# Let's master this essential mechanism to improve TweetApp!

# What is Login?
# Login is the process of letting the application know who 
# is using the site. This will allow the application to display 
# different content for each user.

# Our Goal for This Lesson
# 1. Login
# 2. Logout
# 3. Show name of d current user
# 4. Limit access for users who r not logged In
# 5. Prevent editing accounts of other users

# Creating the Login Feature
# The Flow of Logging in
# To log in, we send information such as a user's email 
# and password from the Login page to Rails(database). 
# It identifies the current user based on the information 
# received and makes the user status "logged in". 

# Creating the Login Page
# Let's add the routes, actions, and views to create the Login page.

get "login" => "users#login_form"

def login_form
end

# login_form.html.erb

# Adding a Form for Password
# Let's add an input field for password in login_form.html.erb. If 
# you set the type attribute of the <input> tag to password, it 
# becomes an input specifically for passwords in which the text is hidden

<input type="password" >

# Adding the Password Column
# we have to add a password column to the users table in the database.

# Adding the Password Column
# First, let's create a migration file with the name add_password_to_users 
# using rails g migration. Change the content of  the migration file  
# by running rails db:migrate

rails g migration add_password_to_users

# add_password_to_users.rb
class AddPasswordToUsers < ActiveRecord::Migration[5.0]
          def change
                    add_column :users, :password, :string
          end
end

# apply changes to db
rails db:migrate

# Setting the Validation
# Let's set the validation on the password column because the password 
# value should always exist in the user's information. Validation that 
# checks existence can be added using presence.

validates :password, {presence: true}

# model/user.rb
class User < ApplicationRecord
          validates :name, {presence: true}

          validates :email, {presence: true, uniqueness: true}

          validates :password, {presence: true}
          
end

# Lastly, let's set a password for a user currently registered in the database.
user = User.find_by(id: 1)
user.password = "Ibadan"
user.save