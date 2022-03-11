# Associating Posts with a User
# In this lesson, we will associate posts with a user. 

# On the Posts page, we'll display the name of the 
# ser who created each post. On the User details page, 
# we'll display all the posts created by that user.


# -: How to Create the Like Feature 
# The Like feature will manage "which user liked 
# which post" as data. As a start, we can create a 
# likes table in the database in order to save the data. 

# The Role of the likes Table
# Let's create the likes table with two columns user_id 
# and post_id in the database in order to record 
# "which user" liked "which post". For example, a 
# record with user_id of 1 and post_id of 2 indicates 
# that "id:1 user liked the post with id:2".

# Creating the likes Table
# Let's create the Like model and a migration file using 
# the command below. The likes table will have two 
# columns, user_id and post_id. After the migration 
# file has been created, run rails db:migrate to apply 
# the changes to the database.

rails g model Like user_id:integer post_id:integer

# After checking the migration file, use the rails 
# db:migrate command to apply the changes 
# specified in the migration file to the database.

rails db:migrate

# Adding the Validations
# Since the "like" data is incomplete unless both 
# user_id and post_id exist, let's add the validation 
# presence: true for both user_id and post_id.

class Like < ApplicationRecord
          validates :user_id, {presence: true}
          validates :post_id, {presence: true}
end

# -: Creating the Like Data 
# Creating the Data with rails console
# Let's add data to the likes table on the console.
# By running Like.new (user_id: 1, post_id: 2), 
# you can create data that indicates "id:1 user 
# likes id:2 post".

rails console
like = Like.new(user_id: 1, post_id: 2)
like.save

# -: Displaying Likes on posts
# based on the likes table you have created, 
# let us display whether the current logged 
# in user has liked a certain post or not

# "Liked!" or "Not Liked!"
# On the Post details page, let's display 
# "Liked!" if the current user has liked the 
# post. In other words, we'll check if there's 
# a record in the likes table with the current 
# user's id as user_id and the post's id as post_id. 
# Otherwise, let's display "Not Liked!".

# The Condition for "Liked!"
# We'll use the find_by method to check whether 
# a record with matching user_id and post_id 
# exists in the likes table. find_by will return nil 
# if no such data is found.

# posts/show.html.erb
<% if Like.find_by(user_id: @current_user.id, post_id: @post.id) %>
          Liked
<% else %>!
          Not Liked!
# <% end %>

# -: Creating the "Like!" Button
# From here we will implement the functionality 
# for actually "liking" and "unliking" posts. 
# First we need to create the Likes controller and 
# prepare an action for creating Like data.

# Creating the Likes Controller
# So far, we've generated controllers using the 
# rails g controller. But since we don't need the 
# view files that are also created by this command, 
# let's try making the controller manually. You can 
# create a new file likes_controller.rb 

# likes_controller.rb
def LikesController < ApplicationController
          def create
          end
end

# routes.rb
post "likes/:post_id/create" => "likes#create"

# Let's authenticate access to the Likes controller 
# so that only logged in users have access.

def LikesController < ApplicationController
          before_action :authenticate_user
          
          def create
          end
end

# -: Creating the "Like!" Button
# Completing the create Action
# Let's complete the code of the create action. 
# We'll set the user_id column using 
# @current_user, and the post_id column from 
# the URL using params. Let's redirect to the 
# Post details page after creating the new data.


# likes_controller.rb
def create
          @like = Like.new(
                    user_id: @current_user.id,

                    post_id: params[:post_id]
          )

          @like.save

          redirect_to("/posts/#{params[:post_id]}")
end

# Preparing the Link to the create Action
# Let's add the link to the create action on the Post details page. 
# Like the example below, we'll change the text "Not Liked!" 
# to a link to "Like!" the post.

# posts/show.html.erb
<% if Like.find_by(user_id: @current_user.id, post_id: @post.id) %>
          Liked
<% else %>!
          <%= link_to("Like!", "/likes/#{@post.id}/create", {method: "post"}) %>
# <% end %>

# :- Removing Likes
# We can do this by removing the data that gets created 
# when we like a post.
# The destroy Action
# In order to create a feature to undo a "Like!", let's first 
# create a destroy action in the Likes controller. In the 
# destroy action, we get the "like" data using 
# @current_user.id and params[:post_id], and delete it 
# using the destroy method.


# likes_controller.rb
def destroy
          @like = Like.find_by(
                    user_id: @current_user.id,

                    post_id: params[:post_id]
          )

          @like.destroy

          redirect_to("/posts/#{params[:post_id]}")
end

# routes.rb
post "likes/:post_id/destroy" => "likes#destroy"


# Creating a Link to the destroy Action
# Let's add a link to the destroy action on the Post 
# details page. Like the example below, we'll change 
# the text "Liked!" to a link to undo the "Like!".

# posts/show.html.erb
<% if Like.find_by(user_id: @current_user.id, post_id: @post.id) %>
          <%= link_to("Liked!", "/likes/#{@post.id}/destroy", {method: "post"}) %>
<% else %>!
          <%= link_to("Like!", "/likes/#{@post.id}/create", {method: "post"}) %>
# <% end %>

# :- Creating a Like Button Icon
# Font Awesome
# Font Awesome allows us to use various icons in the views.

# Using Font Awesome
# In order to use Font Awesome, you need to load it in the 
# <head> tag. Since the common HTML like <head> is 
# written in application.html.erb, let's load the Font 
# Awesome using <link> tag there!

# application.html.erb
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

# :-Displaying the Heart Icon
# You can display a heart icon by adding a <span> tag 
# with the fa fa-heart class. But, if you put HTML elements 
# in the link_to method, they will be recognized as a plain 
# string. Let's see how to use an HTML element with the 
# link_to method.

# posts/show.html.erb
# Normal link_to method
# <%= link_to("Text to displat", "URL") %>

# link_to method with HTML
# <%= link_to("URL") do %>
          # HTML to display
# <% end %>

# Displaying the Heart Icon with the link_to Method
# You can make the heart icon a link by putting 
# <span> between <%= link_to(URL) do %> and <% end %>

<%= link_to("/likes/#{@post.id}/create", {method: "post"}) do %>
          <span class="fa fa-heart like-btn"></span>
<% end %>

<%= link_to("/likes/#{@post.id}/destroy", {method: "post"}) do %>
          <span class="fa fa-heart like-btn-unlike"></span>
# <% end %> 


# :- Displaying the Number of Likes
# let us retrieve the number of likes from the likes table.

# The count Method
# To get the number of data from the likes table, 
# we can use the count method. This is a method 
# to obtain the number of elements in an array, and 
# can also get the number of data in a table

rails console
Like.all.count
Like.where(post_id: 1).count

# posts_controllers.rb
def show
          @likes_count = Like.where(post_id: params[:id]).count
end

# posts/show.html.erb
<%= link_to("/likes/#{@post.id}/create", {method: "post"}) do %>
          <span class="fa fa-heart like-btn"></span>
<% end %>

<%= link_to("/likes/#{@post.id}/destroy", {method: "post"}) do %>
          <span class="fa fa-heart like-btn-unlike"></span>
# <% end %> 










# :-


# :-


