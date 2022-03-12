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





# :-






# :-






# :-






# :-






# :-






# :-






# :-






# :-






# :-







