# Handling Passwords Safely
# In this lesson, we'll learn how to handle passwords safely 
# in web applications.

#Progate @progateEN @dev_careers #dev_careers

# :- Editing the Gemfile
# When encrypting passwords with Rails, something 
# known as a gem is required.

# gem
# A gem is a third-party library you can use with Ruby. 
# There are various gems such as "the search functionality 
# gem", or "the encrypt passwords gem". This time, we'll 
# use bcrypt, which is a gem to encrypt passwords.

# Gemfile
# In Rails, there's a file named Gemfile where you write 
# the gems you want to install, like gem 'gem_name'. 
# Some gems are already written when you run the rails 
# new command. When you install gems, the Gemfile.lock 
# file is automatically updated.

# Gemfile
gem 'rails', '5.0.3'
gem 'puma', '3.6.2'
gem 'sass-rails', '5.0.6'

# Gem Versions
# You can specify the version of the gem, like gem 'rails', '5.0.3'.
# If you don't specify a version, the latest version of the gem will 
# be installed.

gem 'rails', '5.0.3' #specify d version

gem 'puma' #install d latest version if noth is specified

# Installing bcrypt
# This time, we'll add a gem known as bcrypt. You can do this 
# by adding gem 'bcrypt' to the Gemfile, and run the command 
# bundle install in the terminal.

# Gemfile
gem 'bcrypt'

# terminal
bundle install

# :- has_secure_password
has_secure_password
# After installing bcrypt, you can use a method known as 
# has_secure_password. By adding it to the User model, 
# Rails will automatically encrypt the password when 
# saving the user.

# model/user.rb
class User < ApplictaionRecord
          has_secure_password
end


class User < ApplicationRecord
          # Add the has_secure_password method
          has_secure_password
          
          validates :name, {presence: true}
          validates :email, {presence: true, uniqueness: true}
          # Remove the following validation
          validates :password, {presence: true}
          
          def posts
                    return Post.where(user_id: self.id)
          end
          
end

# Next, let's delete the validation of the password column 
# because the has_secure_password method automatically 
# checks whether a password exists or not.

class User < ApplicationRecord
          # Add the has_secure_password method
          has_secure_password
          
          validates :name, {presence: true}
          validates :email, {presence: true, uniqueness: true}
          
          def posts
                    return Post.where(user_id: self.id)
          end
          
end


# :- Adding the password_digest Column
# The password is stored in the password_digest 
# column after being encrypted by the 
# has_secure_password method.

# For safety it is stored in the password_digest 
# column and not in the password column

# We need to add a password_digest column to the 
# users table as it does not yet exist. Also, since the 
# password column is no longer needed, let us remove 
# it from the database. 


# Changing Multiple Columns
# You can change multiple columns in one migration 
# file. For example, you can add the image_name 
# column and the password column at the same time. 
# This time, let's add the password_digest column 
# and remove the password column.

# 20170427023467_add_columns_to_users.rb
class AddColumnsToUsers < ActiveRecord::Migration[5.0]
          def change
                    add_column :users, :image_name, :string

                    add_column :users, :password, :string
          end
end


# Creating the Migration File
# Let's create a migration file using the rails g migration
# command. You can name the file change_users_columns 
# as we'll be changing multiple columns. After creating 
# the file, edit the migration file so that the 
# password_digest column is added.

rails g migration change_users_columns

# 20170427023467_add_columns_to_users.rb
class ChangeUsersColumns < ActiveRecord::Migration[5.0]
          def change
                    add_column :users, :password_digest, :string
          end
end


# Removing the password Column
# We'll also remove the password column. 
# To remove a column, you can use remove_column 
# instead of add_column. After editing the file, let's 
# run rails db:migrate in the terminal and reflect the 
# changes in the database.

# 20170427023467_add_columns_to_users.rb
class ChangeUsersColumns < ActiveRecord::Migration[5.0]
          def change
                    add_column :users, :password_digest, :string

                    remove_column :users, :password, :string
          end
end

rails db:migrate




# :-






# :-






# :-






# :-






# :-






# :-






# :-






# :-







