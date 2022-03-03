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