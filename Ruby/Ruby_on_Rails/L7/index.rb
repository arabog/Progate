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

# Displaying the Profile Images
# At the moment we can only display the default image in d db, 
# but let us go ahead and display it on the Users page and the User 
# details page.

# Displaying the Image on the User Details Page
# You can use the HTML <img> tag to display the profile images. 
# Since the image will be saved in the public/user_images folder, 
# the value of the src attribute should be /user_images/file_name. 
# Notice that we need to enclose Ruby code in <%= %>.

# users/show.html.erb
<img src="<%= "/user_images/#{@user.image_name}" %>" >

# Displaying the Users Page
# To display all the profile images on the Users page, the each 
# method can be used. By using each, we can assign each user 
# data in @users to the user variable one by one and display 
# each user's profile image.

# users/index.html.erb
# <% @users.each do |user| %>
          <img src="<%= "/user_images/#{user.image_name}" %>" >

# Uploading Images

Sending Images
# Select Image Button
# By adding type="file" to the <input> tag, you can display a 
# button for selecting an image file. Also, let's set the name 
# attribute with the value "image".

<p> Image </p>
<input name="image" type="file" >

# multipart : true
# You need to add {multipart: true} to the form_tag because 
# sending an image is a special case. You don't need to understand 
# he details now. Just remember that {multipart: true} is necessary 
# when sending an image.

# <%= form_tag("......", {multipart: true}) do %>
          
# edit.html.erb
<%= form_tag("/users/#{@user.id}/update", {multipart: true}) do %>
          <p>Name</p>
          <input name="name" value="<%= @user.name %>">

          <p>Image</p>
          <input name="image" type="file" >

          <p>Email</p>
          <input name="email" value="<%= @user.email %>">

          <input type="submit" value="Save">
# <% end %>


# Creating a File
# We have now finished setting up the form to send the 
# uploaded image. Next, in the update action, we will 
# save the image in the public folder, and save the name 
# of the file in the database.

# In order to create images in the public folder, we must 
# learn how to create a file.

# Images are just files containing a series of characters.
# So, they can be treated the same way as other text files.
# We will start by learning how to use Ruby code to 
# create and save a simple text file.

# Creating a File using Ruby Code
# To handle files with Ruby code, you can use the File class 
# which is provided by Ruby by default. The write method of 
# the File class creates a file. You can use it like: 
# File.write(file_location, file_content)

rails console
File.write("public/sample.txt", "Hello World")

# sample.txt
Hello World

# Saving the Sent Image
# Using the way to create files you learned earlier, 
# let us save the image sent from the form.
# The update action should:
# ・Save the file in the database
# ・Create the image in the public folder

# Saving the Filename to the Database
# First, let's see how to save the filename to the database.
# You can overwrite the value of @user.image_name in the 
# same way as updating the name or the email. Let's set the 
# filename to the user's id like 1.jpg

# users_controller.rb
def update
          @user = User.find_by(id: params[:id])
          @user.name = params[:name]
          @user.email = params[:email]
          @user.image_name = "#{@user.id}.jpg"

          if user.save
          end
end


# Receiving the Image
# Next, let's see how to save the image in the public 
# folder. Just like other data, you can get the image 
# with params[:image]. params[:image] contains 
# he information of the image file. Let's use that to 
# create an image in the public folder.

<input name="image" >

# users_controller.rb
def update
          @user.image_name = "#{@user.id}.jpg"

          image = params[:image]
end

# Saving the Image
# To save an image, you need to create an image 
# file using the sent data. We'll use File.binwrite 
# instead of File.write because image data is a 
# special type of text. Also, the image data can be 
# retrieved by using read method for the variable image

def update
          @user.image_name = "#{@user.id}.jpg"
          
          image = params[:image]

          File.binwrite("public/user_images/#{@user.image_name}", image.read)
end

# Checking If an Image Exists
# Let's execute the process of saving images only when the 
# image data has been sent. You can do this by adding an 
# if statement to validate

def update
          if params[:image]   #checks if an img has been sent

          @user.image_name = "#{@user.id}.jpg"
          
          image = params[:image]

          File.binwrite("public/user_images/#{@user.image_name}", image.read)
end

# In the update action, overwrite the value of the image_name column 
# of the User instance. We'll name the file using the user's id, like 1.jpg.

