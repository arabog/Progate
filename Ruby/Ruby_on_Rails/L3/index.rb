# Auto-Generated Columns
# id, created_at, updated_at are automatically added when a 
# table is created


# The id Column
# Let's look at the id column first. In the id column, a number 
# is automatically assigned when the data is saved to the database. 
# All ids are unique as they are incremented by 1 for each new 
# record/row.

# The created_at and updated_at Columns
# When a new record gets saved, the created_at and the 
# updated_at columns are automatically set to the current 
# date and time. The updated_at column will also be updated 
# each time you make changes to the data.

# Getting a Post with the find_by Method
# ids are important since we will be using them to display 
# a specific post in the Post details page.


# The find_by Method
# You can get a post with a specific id using the find_by method. 
# The find_by method gets the data that meets certain conditions. 
# You can get the data that matches the id value from the database 
# using Model.find_by(column_name: value).

Model.find_by(column_name: value)

# Let's confirm that you can get a specific post from the 
# database using the find_by method.

rails console

post = Post.find_by(id: 3)

# After getting the data using the find_by method, let's get the 
# content of the post and the time that it was posted.

# Run post.content and get the post content.
post.content 

# Run post.created_at and get the post time.
post.created_at

# Creating the Post Details Page
# emember that when generating a new page, 
# we need the route, the action and the view

# We will pass the id of the post you want to display in the 
# URL of the Post details page.
# Then, we will find and display the post with the id.

# Routes of the Post Details Page
# Adding an id to the URL
# By writing posts/:id with a colon : in the URL of the route, 
# you can map URLs like /posts/1 and /posts/2 to the show action. 
# This applies to every URL written as /posts/..

# routes.rb
get "posts/:id" => "posts#show"

# posts_controller.rb
def show
end

# The Post Details Page Important Note in posts/:id
# You need to write the route posts/:id below posts/index. This is 
# because the routing looks for URLs from the top. Writing it 
# above posts/index would cause the URL 
# localhost:3000/posts/index to match the route posts/:id.

# routes.rb
get "posts/index" => "posts#index"
get "posts/:id" => "posts#show"

# show.html.erb
<div class="main posts-show">
          <div class="container">
                    <div class="posts-show-item">
                              <p>This page shows the details of a post</p>
                    </div>
          </div>
</div>

# Getting the id from the URL
# In the show action, we need to show the post details that has 
# the same id as the id in the URL.

# To do that, let us first learn how to get the id part, or more 
# specifically the 1 or 2 part from each URL.

# The params Variable
# In the show action, the value of the :id is stored in a hash 
# variable known as params. You can get that value using 
# params[:id].

# posts_controller.rb
def show
          @id = params[:id]
end

# posts.show.html.erb
# <=% @id %>

# "This page shows the details of a post with id: #{@id}"
# Note: In Ruby, you can display a value of a variable in a 
# string by using #{}.

# Displaying a Post in the Post Details Page
# Lastly, let us combine params[:id] and the find_by 
# method to display the requested post.

# Displaying a Post in the Post Details Page 
# To display the post, we declare the variable @post in the 
# show action and assign it the posts whose id is equal to 
# params[:id] by retrieving them from the database. 
# Then we'll display the details of the @post in show.html.erb.

# posts_controller.rb
def show
          @post = Post.find_by(id: params[:id])
end

# posts/show.html.erb
<div class="main posts-show">
          <div class="container">
                    <div class="posts-show-item">
                              <%= @post.content %>

                              <div class="post-time" >
                                        <%= @post.created_at %>
                              </div>
                    </div>
          </div>
</div>

# Adding Links to the Post Details Page
# let us add a link that redirects the Post details page to the Posts page.

# Adding a Link to the Post Details Page
# In the Posts page, let's create a link to the Post details page for each 
# post. You can make each post a link to the Post details page by 
# changing it to link_to (post.content, "/posts/#{post.id}") so 
# that clicking on the content part of each post will redirect 
# us to the Post details page.


# Let's make each post in the Posts page a link to the Post details  page.

# posts/index.html.erb
# <% @posts.each do |post| %>
          <div class = "posts-index-item">
                    <%= link_to(post.content, "/posts/#{post.id}") %>
          </div>
# <% end %>

# Creating the New Post Page
# Preparing for the New Post Page
# Let's make the New post page accessible from the URL 
# localhost:3000/posts/new. Let's add a route, an action 
# and a view. For the action, let's use new action.

# routes.rb
get "posts/index" => "posts#index"

# The route should be added above get "posts/:id" => "...".
get "posts/new" => "posts#new"

get "posts/:id" => "posts#show"

# posts_controller.rb
def show
          @post = Post.find_by(id: params[:id])
end

def new
end

# posts/new.html.erb

# .../layouts/application.html.erb
# Add a link to the New post page

# Adding Input Fields to Form
# you can create input fields using the <textarea> 
# tag or the <input> tag. Remember that you need 
# to specify the type="submit" attribute for the submit 
# button to submit the form. Since we're going to name 
# the button as Post, let's also add the value="Post" attribute.

# Sending the Input Data
# How Posts Are Saved
# Generally, when you press the submit button, the post 
# data will be sent to the server-side (Rails). Let's prepare 
# a create action to save the received post data to the 
# database. The URL of the create action should be "/posts/create".


# The Route for the create Action
# Let's set the route for the create action. We've been using 
# get for routes, but we need to use post when receiving 
# data from a form. (Note that this "post" has nothing to 
# do with the "Post" model.)

# routes.rb
get "posts/index" => "posts#index"

get "posts/new" => "posts#new"

get "posts/:id" => "posts#show"

post "posts/create" => "posts#create"

# The route should be defined as follows: post URL => controller#action.

# Specifying the Destination to Send the Form Data
# You can send the data entered in the form using the form_tag 
# method. The destination URL is specified like : 
# <%= form_tag (destination URL) do%>. This allows 
# <input type="submit" ...>, also known as the submit button in 
# the form, when clicked, for the data to be sent to the specified URL.

<%= form_tag("/posts/create")  do %>
          <textarea></textarea>

          <input type="submit" value = "Post" >
# <% end %>

# Adding the Content of the create Action
# We have specified where to send the form data, but there are 2 
# problems as shown below, so the form cannot be used as it is now.

# 1. No matching view for d create action
# 2. Can't save any posts

# Redirect
# For our create action, let us redirect the request to the Posts page.

# redirect_to
# To redirect from one URL to another URL, use the redirect_to 
# method. By setting it as redirect_to(URL), the redirect_to 
# method redirects to the given URL.

# posts_controller.rb
def create
          redirect_to("/posts/index")
end

# Saving the Post
# To save a post, we need to follow the steps:
# 1. Send post data to d create action
# 2. Receive d sent data in create action and save it

# The name Attribute
# At the moment, our form can't send the input data 
# to the create action after you press the submit button. 
# To fix this, you need to specify the name attribute of the 
# <textarea> tag. This way, the data in the <textarea> tag 
# will be sent to the Rails side as a hash with the name 
# attribute as the key.

<textarea name="content"></textarea>

# Getting the Form Input Data
# Once you specify the name attribute of a form element, 
# the action of the controller can receive the form data. 
# Since the params variable is a hash with the name attribute 
# as the key, we can get the content with params[:content].

def create
          params[:content]
          
          redirect_to("/posts/index")
 end

#  Saving the Post
#  Saving Posts to the Database
#  Like we did before using the rails console, we can save 
# a post by creating an instance of the Post model, then 
# saving it. As shown in the image below, we can create 
# a post with the data received from the form by using 
# params[:content] as the argument.

def create
          @post = Post.new(content: params[:content])

          @post.save
          
          redirect_to("/posts/index")
 end

#  Summary of the params Variables
#  We've used params when receiving the input data and 
# also to get the id value from the URL.

#  Remember there are two ways of using params:
#  1. Get the value from the URL of the route.
# get "posts/:id" => .....

#  2. Get the form input data with the name attribute.
# <textarea name="content"></textarea>

# Sorting Posts
# Sorting the Posts The order Method
# You can sort the list of posts using the order method 
# as follows: order(column_name: sorting_order). 
# By sorting posts in the descending order :desc of 
# created_at, you can display the posts from the 
# newest to the oldest.

# posts_controller.rb
def index
          @posts = Post.all.order(created_at: :desc)
 end

# N.B: Action is inside d controller



#Progate @progateEN @dev_careers #dev_careers