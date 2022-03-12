# Associating Posts with a User
# In this lesson, we will associate posts with a user. 

# On the Posts page, we'll display the name of the 
# user who created each post. On the User details page, 
# we'll display all the posts created by that user.


# :-Associating Posts with Users
# First in the Post details page, let us display which user 
# created the post. To do this, we need every post to contain 
# information about the author.

# Associating Posts and Users with user_id
# We'll make a column named user_id in the posts table to 
# clarify who created each post". 

# Adding the user_id Column in the posts Table
# To start, let's create a migration file with the filename 
# "add_user_id_to_posts" using the rails g migration command

rails g migration add_user_id_to_posts

# migrate folder
class AddUserIdToPosts < ActiveRecord::Migration[5.0]
          def change
                    add_column :posts, :user_id, :integer
          end
end

# then run 
rails db:migrate


# Validation for user_id
# After confirming that the user_id column has been added to the 
# posts table, let's set a validation on it. You should specify 
# presence: true because we always want to know who created 
# the post.

# models/post.rb
class Post < ApplicationRecord
          validates :content, {presence: true, length: {maximum: 140}}

          # Validate that the user_id column is not empty
          validates :user_id, {presence: true}
end


# :- Associating New Posts with a User
# Next let us add that data whenever a user creates a new post.

# Saving the id of the User Who Created the Post
# When creating a new post, let's be sure to save it with the value 
# of the user_id. We'll use @current_user.id as the value because 
# the user who posted is the user currently logged in.

# posts_controller.rb
def create
          @post = Post.new(
                    content: params[:content]
                    
                    user_id: @current_user.id
          )
end

# :- Displaying User's Name for Each Post
# On the Post details page let us try to display 
# the name and profile image of the user who 
# created the post.

# Getting the User's Information from user_id
# In order to display the name and image of a user, 
# you need to find the user from the database. Since 
# @post.user_id has the id of the user who created 
# the post, let's use that to find the user.

# posts_controller.rb
def show
          @post = Post.find_by(id: params[:id])

          @user = User.find_by(id: @post.user_id)
end

# Displaying User's Name and Images
# You can display the name and image of a user 
# with the @user variable, which we have already 
# defined in the action. Also, let's make the user's 
# name a link to the user's User details page.

# posts/show.html.erb
<div>
          <img src="<%= "/user_images/#{@user.image_name}" %>" >

          <%= link_to(@user.name, "/users/#{@user.id}") %>
</div>

# :- Defining an Instance Method
# Defining Instance Methods in Models
# In Rails, you can define an instance method in a model. 
# The instance method defined in the Post model can be used 
# for the post instance

# models/post.rb
def post
          puts "Hello"
end

post.hello          #Hello


rails console

post = Post.new(content: "I love coding", user_id: 1)
post.save

post = Post.find_by(id: 1)

post.user

# models/post.rb
class Post < ApplicationRecord
          validates :content, {presence: true, length: {maximum: 140}}
          validates :user_id, {presence: true}
          
          # Define the "user" instance method
          def user 
                    return User.find_by(id: self.user_id)
          end
          
end

# :- Using Instance Methods
# Let's rewrite the @user variable defined in the 
# show action using the user instance method.

# controllers/posts_controller.rb
# Rewrite the following line using the "user" method
@user = User.find_by(id: @post.user_id)
to
@user = @post.user(id: self.user_id)

# :- Displaying the User's Name on the Posts Page
# Next we should display the user's name and image associated 
# with each post on the Posts page. For this, as with the Post 
# details page, we will utilize the user instance method.

# posts/index.html.erb
<img src="<%= "/user_images/#{post.user.image_name}" %>">

<%= link_to(post.user.name, "/users/#{post.user.id}") %>

<div class="container">
          <% @posts.each do |post| %>
                    <div class="posts-index-item">
                              <div class="post-left">
                                        # <!-- Fill in the src attribute to display the user's profile image -->
                                        <img src="<%= "/user_images/#{post.user.image_name}" %>">
                              </div>
                              
                              <div class="post-right">
                                        <div class="post-user-name">
                                        # <!-- Add a link to the "User details" page using the link_to method -->
                                                  <%= link_to(post.user.name, "/users/#{post.user.id}") %>
                                        </div>
                                        # <!--<%= link_to(post.content, "/posts/#{post.id}") %>-->
                              </div>
                    </div>
          <% end %>
</div>


# :- Displaying Posts on the User Details Page
# Getting Multiple User-Associated Posts
# We can get them with Post.find_by(user_id: @user.id) right?
# Correct. However, the find_by method will only allow 
# us to get a single result that matches the given condition.

# The where Method
# You can use the where method to retrieve multiple records 
# of data that meet a certain condition. Each piece of data 
# comes in an array when acquired by the where method. 

rails console
posts = Post.where(user_id: 1)

posts[0].content

# Using this, we can define the posts instance method in the 
# User model that will collect all posts associated with a user. 

# models/user.rb
def posts
          return Post.where(user_id: self.id)
end

rails console
user = User.where(user_id: 1)

user.posts


# :- Displaying the Posts
# Let's display each post using @user.posts. 
# Since the records acquired by the where method 
# are contained in an array, let's display the posts 
# one by one with the each method in the view.

# users/show.html.erb
# <% @user.posts.each do |post| %>
          # code
# <% end %>

<% @user.posts.each do |post| %>
          <div class="posts-index-item">
                    <div class="post-left">
                              <img src="<%= "/user_images/#{post.user.image_name}" %>">
                    </div>

                    <div class="post-right">
                              <div class="post-user-name">
                                        <%= link_to(post.user.name, "/users/#{post.user.id}") %>
                              </div>

                              <%= link_to(post.content, "/posts/#{post.id}") %>
                    </div>
          </div>
# <% end %>

# posts/index.html.erb
contains sm similar code to users/show.html.erb


# :-






# :-






# :-







#Progate @progateEN @dev_careers #dev_careers