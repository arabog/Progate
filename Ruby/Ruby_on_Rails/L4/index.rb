# Editing and Deleting Data
# In order to edit/delete a post, we need to work with the database.
# Before we do so, let us first check the flow of editing and deleting 
# using rails console.

# Editing a Post
# To edit a post, you need to 
# 1. Get the post you want to edit; 
# 2. Overwrite the content value of that post; 
# 3. You can overwrite the value of the post's content 
# by using post.content = "new value"

rails console
post = Post.find_by(id: 1)
post.content = "Rails"
post.save

# updated_at
# The created_at column and the updated_at column 
# contain the date and time of when the post was created. 
# If you edit the post data and save it to the database, the 
# value of the updated_at column will change to the time 
# when the data was most recently updated.

# Deleting a Post
# To delete a post, you retrieve the post and use the 
# destroy method to delete it from the database.

rails console
post = Post.find_by(id: 1)
post.destroy

# Preparing the Edit Post Page
# First, we need to prepare a page for editing posts. 
# Do you remember what you need to create a new page?
# Of course! The route, the action, and the view!


# Creating the Edit Post Page
# To distinguish which post to edit, the URL of the 
# Edit post page should contain the id of the post 
# to be edited. That means you need to include the 
# id in the route like we did in the show action. 
# In addition, let's create the edit action in the 
# Posts controller and create edit.html.erb as the 
# corresponding view.

# routes.rb
get "posts/:id/edit" => "posts#edit"    # include d id of d post to edit

# posts_controller.rb
class PostsController < ApplicationController
          def edit
          end
end

# Adding a Link to the Edit post Page
# Let's add an Edit link in show.html.erb
# For the id used in the link, use the id retrieved 
# using the show action defined in the posts controller.

# view
# posts/show.html.erb
# <%= link_to("Edit", "/posts/#{@post.id}/edit") %>

# posts_controller.rb
class PostsController < ApplicationController
          def edit
          end

          def show
                    @post = Post.find_by(id: params[:id])
          end
end

# Note that the corresponding action should be the edit 
# action of the Posts controller.

# Next, add the action.
# .../controllers/posts_controller.rb

# The next step is adding a link to the Edit post page 
# on the Post details page.

# You've created the Edit post page, but there's no form 
# for editing yet.

# Preparing the Input Form
# On the Edit post page, we want to make sure that the 
# original post content will be the default value 

# Preparing the Initial Value in the Form
# With the <textarea> tag, you can set an initial value 
# by putting it between the opening and closing tags like 
# this: <textarea>initial value</textarea>.

# Set the Post Content as the Initial Value of the Form
# Let's set the content of the post we want to edit as the initial 
# value of the form. In the edit action, retrieve the post data 
# from the database using the same id as the id in the URL, 
# and set the value of the content as the initial value.

# route.rb
get "posts/:id/edit" => "posts#edit"

# posts_controller.rb
def edit
          @post = Post.find_by(id: params[:id])
end

# posts/edit.html.erb: initil value = post.content
<textarea> <%= @post.content%> </textarea>

# Preparing to Save Edits
# The update action is responsible for the following:
# ・Saving the content
# ・Redirecting to the Posts page

# Preparing the update Action
# Since the update action receives the value from 
# the form, we need to change the routing to post 
# instead of get. It also updates the post with a 
# specific id, so make sure to include id in the URL. 
# We'll redirect to the Posts page after editing, so 
# we don't need a view.

# routes.rb
post "posts/:id/update" => "posts#update"

# posts_controller.rb
def update
          redirect_to("/posts/index") #redirect to d posts pg
end

# Specifying the Destination of the Form
# The data of the form needs to be sent to the update action 
# in order to be saved to the database. Just like with the 
# New post page, you can specify the destination using the 
# form_tag method.

posts/edit.html.erb
# <%= form_tag("/posts/#{@post.id}/update") do %>
          <textarea> <%= @post.content%> </textarea>

          <input type="submit" value="Save" >
# <% end %>

# Adding Code to the update Action
# Hw to update d content of a post
          # 1. use d id in d URL to get d post data 4rm d db
          # 2. update d content of d post with d data received 4rm d form

# Updating a Post
# Let's first get the post that you want to update 
# from the database. You can get it using the id 
# contained in the URL of the update action.

posts/edit.html.erb
# <%= form_tag("/posts/#{@post.id}/update") do %> # #{@post.id}

# routes.rb
post "posts/:id/update" => "posts#update"         # :id

# posts_controller.rb
def update
          @post = Post.find_by(id: params[:id])   #get d id in d URL

          redirect_to("/posts/index") 
end

# Next, let's set the name attribute of the <textarea> tag so that 
# the content entered will be assigned to the params variable 
# and sent to the update action. The update action receives 
# values submitted from the form in params[:content] and 
# updates the content of the submitted data with 
# @post.content = params[:content].


posts/edit.html.erb
# <%= form_tag("/posts/#{@post.id}/update") do %>
          <textarea name="content"> 
                    <%= @post.content%> 
          </textarea>

          <input type="submit" value="Save" >
# <% end %>

# posts_controller.rb
def update
          # 1. Get post data 4rm database! using the id from the URL
          @post = Post.find_by(id: params[:id])   #get d id in d URL

          # 2. Overwrite the content of the post
          @post.content = params[:content]

          # 3. Save the overwritten data
          @post.save

          redirect_to("/posts/index") 
end

# Creating the Delete Feature
# The destroy action is responsible for the following:
# ・Deleting the post
# ・Redirecting to the Posts page

# Route for the destroy Action
# the route for the destroy action should be post instead 
# of get. Be sure to also include the id of the post data 
# in the URL like posts/:id/destroy so that you can 
# identify the post you want to delete.

post "posts/:id/destroy" => "posts#destroy"

# get & post
# Why should we use post for the destroy action even 
# though it's not dealing with forms?

# get: doesn't change d db(it only retrieves)

# post: may change d db(depending on hw posted data is used)

# We had used post for forms since they are often used 
# to update the database.

# posts_controller.rb
def destory
          redirect_to("/posts/index") 
end

# Link to the destroy Action
# Let us use the link_to method to add a link to the destroy action.

# Let us learn how to do a post request using the link_to method.


# Creating a Link for post
# You can send a post request with the link_to method by adding 
# {method: "post"} as the third argument.

# posts/show.html.erb
# <%= link_to("Delete", "/posts/#{@post.id}/destroy", {method: "post"}) %>

# routes.rb
post "posts/:id/destroy" => "post#destroy"