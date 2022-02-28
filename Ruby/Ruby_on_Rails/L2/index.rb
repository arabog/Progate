# In this lesson, we'll create one of the main features of the app, 
# the Posts page. We'll now be using databases instead of just 
# plain HTML.

# Database
# A database is a place to store a collection of data. In this 
# lesson, we'll save the posts that are displayed in the Posts 
# page to a database.

# The Posts Page and the Database
# In the Posts page, we'll display each post by taking it out 
# of the database.


# Creating the Posts Page
# We will display the posts using the database at the end, but 
# for now let us write them directly in the HTML file.


# Creating the Posts Controller
# Can't we use the Home controller?
# Yes we can. But it is better to create a controller that fits the 
# purpose, which in this case is the Posts controller.

# The Posts Controller
# Let's create an index action for the Posts page. Since the 
# Posts controller doesn't exist yet, you can use the command 
# like d one below to create the index action. You can also 
# use an alias g for "generate" like: rails g controller.

rails generate controller posts index

rails g controller posts index

# Creating the View for the Posts Page
# We're going to write the HTML for the Posts page in 
# views/posts/index.html.erb.

# Assigning the Post Content to a Variable
# We can't establish a connection to the database with just HTML.
# Let's assign each post to a variable.We'll gradually modify our 
# code using Ruby to introduce how to use databases.

<div class="post-index-item">
          Learning Rails with Progate
</div>

<div class="post-index-item">
          Trying to display the posts
</div>

# Defining a Variable in a View
# In erb (or Embedded Ruby) file format like index.html.erb, you 
# can embed Ruby code in HTML using the <% %> brackets.

<% post1 = "Learning Rails with Progate" %>
<% post2 = "Trying to display the posts" %>

# Displaying the Value of a Variable
# When you want to display the embedded Ruby code in the browser,
# the <%= %> brackets are used instead of the <% %> brackets.

<% post1 = "Learning Rails with Progate" %>
<%= post1 %>

# <% %> and <%= %>
# We've learned that we can <% %> and <%= %> to embed 
# Ruby code. <% %> is used in cases like defining a variable 
# as it won't be displayed. <%= %>, on the other hand, is used 
# for cases like printing the content of a variable as it will be displayed.

# <% Language = "Ruby" %>

# Learning <%= Language %>       # Learning Ruby

# Learning <% Language %>        # Learning

# Using the each Method in Views

# Preparing an Array
# Let's prepare the posts variable and assign an array containing 
# each post data as shown in the image below. Since it's an array, 
# don't forget to separate the elements with a comma. Also, you 
# can write Ruby code across multiple lines like the image below.

# <%
#           posts = [
#                     "Learning Rails with Progate",
#                     "Trying to display the posts" 
#           ]

# %>

# The each Method
# In the example, each element is assigned to the post variable, 
# then printed. This way, you won't have to write the same HTML 
# code repeatedly to print each post. Make sure to enclose 
# posts.each do |post| and end in <% %>.

          # <%
          #           posts = [
          #                     "Learning Rails with Progate",
          #                     "Trying to display the posts" 
          #           ]
          # %>

          # <% posts.each do |post| %>
                    <div class="post-index-item">
                              # <%= post %>
                    </div>
          # <% end %>

# Defining Variables in Actions
# In Rails variables should be defined in actions, not views.
# Let us define them in an action of the controller from now on.

# Defining a Variable in an Action
# Let's define a variable in an action to use it in views. You can 
# use the variable in index.html.erb by defining it in between def 
# index and end. We'll explain the @ prepended to the variable 
# in the next slide.

# post_controller.rb
def index 
          @posts = [
                    "Learning Rails with Progate",
                    "Trying to display the posts" 
          ]
end

# @ Variables
# In general, a variable defined in an action can't be used in views.
# However, by prepending @ to the variable name, it turns into a 
# special variable which you can use in views.

def index 
          @post1 = "Ken the ninja"

          post2 = "Wooly"
end


post_controller.rb
class PostsController < ApplicationController
          def index
                    # Paste the posts array defined in the view, then rename it to @posts
            
                    @posts = [
                              "Learning Rails with Progate!",
                              "Trying to display the posts!"
                    ]
         
          end
end


index.html.erb
<div class="main posts-index">
          <div class="container">
                    <% @posts.each do |post| %>
                              <div class="posts-index-item">
                                        <%= post %>
                              </div>
                    <% end %>
          </div>
</div>

# <%= post1 %>  will be rendered
# <%= post2 %> will nt be rendered

# Preparing a Database
# Let us learn how to use a database to store and get data!
#  Let us take a look at how a database works

# How a Database Works
# A database consists of tables. Each table has rows and 
# columns. Each row also known as a record, represents 
# a post while each column represents a specific type of data.

# Creating the posts Table
# To store data in a database, we need to create a table.
# Let us create the posts table for storing posts.

# Creating a Migration File
# We need to create a migration file to make changes to the 
# database. With the rails g model Post content:text command, 
# you can create a migration file which adds the posts table 
# with the content column. The text describes the type of data 
# that will be stored in the column.

rails g model Post content:text

content: column name
text: long string e.g Learning Rails

# The Migration Folder
# After you run the rails g model command, you'll find a 
# migration file created in the db/migrate folder. The file 
# has the code to make changes to the database. This code 
# is generated automatically, so don't worry too much about it.

class CreatePosts < ActiveRecord::Migration[5.0]
          def change
                    create_table :posts do |t|
                              t.text :content

                              t.timestamps
                    end
          end
end


# Creating a Table
# We will apply the changes to the database using the migration 
# file you have created. To apply the changes in the database, 
# simply execute the command 

rails db:migrate

# By executing the command, it will create a table according 
# to the code in the migration file.

# id is automatically added when a table is created. created_at 
# and updated_at are automatically added when a migration 
# file is created while content is created by u

# Migration Error
# When you try to access a page before applying the changes 
# in a migration file, Rails will throw you a migration error. 
# You always need to run the rails db:migrate command after 
# you've created a migration file.

# Models
# Let us take a look at the Post model which was generated by 
# the rails g model command.

rails g model

# The Post Model
# With the rails g model command, the post.rb file is created 
# in the app/models folder. In this file, a Post class, which 
# inherits from the ApplicationRecord class is defined. 
# Such a class is also known as a model.

# Summary of rails g model: rails g model Post content:text
# Let's look into the rails g model command once again. The Post 
# in rails g model Post ... represents a model name. With this 
# command, the following files are generated:
# 1) a file in app/models where a model is defined
# 2) a migration file in db/migrate

# post.rb was generated by the rails g model command
class Post < ApplicationRecord
end

# we can handle the posts table through the Post model,


# Using rails console
# We will use rails console to learn how to save data to the database.

# rails console
# You can launch the console by inputting rails console followed 
# by the Enter key in the terminal. Inside the console, you can run 
# ruby commands like 1 + 1. Also, you can exit the console by 
# executing the quit command.


# In the console, you can define a variable, too. You can keep 
# using the variable until you exit from the console with quit.

# Saving Data to a Table
# Follow these steps to save a post to the database:
# 1. Create an instance of the Post model using the new method.
# 2. Save it to the posts table.


# The new Method
# Let's create an instance of Post from the Post model (Post 
# class) in the rails console. To create an instance, we're 
# going to use the new method. For example, you can create 
# a Post instance with the content, "Hello world".


rails console

post = Post.new(content: "Hello world")
# creates a Post instance with d content, Hello world

# The save Method
# To save a Post instance to the posts table, you need 
# to run the save method. Because the Post model 
# inherits from ApplicationRecord, it can use the methods 
# defined in ApplicationRecord, like the save method.

rails console

post = Post.new(content: "Hello world")

post.save # saves a Post instance to d table

post1 = Post.new(content: "Learning Rails with Progate!")
post1.save

post2 = Post.new(content: "Trying to display the posts!")
post2.save

# Getting Data from a Table
# You can get the first record(/row) in the posts table using Post.first.

rails console
post = Post.first

# Getting the Value of the content Column
# with post.content, you can get the content of the first post!
rails console
post = Post.first
post.content





#Progate @progateEN @dev_careers #dev_careers
