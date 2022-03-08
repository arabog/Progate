# Displaying User Profile Images
# This time, let's allow users to upload their own profile images.

#How to Display a Profile Image
# Let's see how a profile image is displayed. First we'll save the 
# image file in the public folder. Then, we'll add the image_name 
# column in the users table and store the name of the image file 
# in the database. We can use that data to display the image in the view

# Adding a Column that Stores File Names
# Let us start adding an image for each user.
# We will need to add the image_name column to the users table.
# Do you remember how to make changes to the database?

1. Create a migration file
2. Apply d contents of d migration file in the db

# Creating Only the Migration File
# rails g model User image_name:string is the command for STEP 1, right?
# Not this time.
# With the rails g model command, a model will be created along with the 
# migration file.

# Since we only want the migration file this time, we will be using the 
# rails g migration command.

# rails g migration
# To only create the migration file, enter rails g migration file_name.
# A migration file is created with a timestamp prepended to the file name. 
# The file name can be anything, but it's better to use a descriptive name, 
# like add_image_name_to_users.

rails g migration add_image_name_to_users

# Editing the Migration File
# I created the migration file! So, now I just need to run rails db:migrate 
# to apply the changes to the database, right?

# Actually, this time, there are not yet any instructions to alter the 
# database written in the migration file we created. So, the migration 
# file is not yet complete.

# Structure of a Migration File
# The code below shows the content of the migration file generated 
# this time. In order to make changes to the table, you need to write 
# them in the change method of the migration file. The rails db:migrate 
# command, which we've been using, executes the code written in the 
# change method.

class AddImageNameToUsers < ActiveRecord::Migration[5.0]
          def change
          end
end

# "rails g model" and the Migration File
# In the migration files created with rails g model so far, the code inside 
# the change method has been automatically generated. Therefore, by 
# running rails db:migrate command, we could apply changes to the 
# database without manually editing the migration file.

# Migration File that Adds a Column
# This time, you need to write the change method by yourself. 
# The following command will add a column to the table:
# add_column :table, :column_name, :data type. After adding the 
# instructions to the change method, you can update the database 
# with rails db:migrate.

class AddImageNameToUsers < ActiveRecord::Migration[5.0]
          def change
                    # add_column :table_name, :column_name, :data_type
                    add_column :users, :image_name, :string
          end
end

# Setting the Default Image
# We've prepared default_user.jpg in the public/user_images folder to 
# use as the default image. Let's save the name of this image file to the 
# image_name column when a new user signs up.

# Saving the Default Image When a User Signs Up
# When a user signs up, we'll set the value of the image_name column to
# default_user.jpg. You can add image_name as an argument of the new 
# method where in the create action.

# users_controller.rb
def create
          @user = User.new(
                    name: params[:name],
                    email: params[:email],
                    image_name: "default_user.jpg"
          )

          if @user.save
          end
end

# users_controllers.rb
def create
          @user = User.new(
                    name: params[:name],
                    email: params[:email],
                    # Add an argument to set the "image_name"
                    image_name: "default_user.jpg"
          )

          if @user.save
                    flash[:notice] = "You have signed up successfully"
                    redirect_to("/users/#{@user.id}")
          else
                    render("users/new")
          end
end