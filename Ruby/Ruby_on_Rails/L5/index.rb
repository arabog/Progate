# Validating a Post
# In this lesson, we'll create a feature that validates posts.
# We'll prevent empty posts and posts that exceed 140 
# characters.

# Our Goal for This Lesson
# We'll add validations to posts and display an error 
# message when a post is invalid.

# Preventing Empty Posts
# Let us learn how to validate the content of the post.
# Right now, users can create posts even when the form is empty.
# We must validate the posts to prevent this from happening.

# Validations
# Validation means the process of checking data to prevent 
# invalid data from being saved to the database. If the data 
# doesn't pass the validation (i.e. when the data is invalid), 
# it won't be saved to the database.

# How to Create Validations
# Validation is set in the model as shown below. 
# You can use the validates method, and specify the column 
# name and the details of the validation as arguments. By 
# using {presence: true} as shown, we can check whether 
# the value of the column exists or not.
# model/post.rb
class Post < ApplicationRecord 
          validates :column_name, {details of d validation}
end

class Post < ApplicationRecord 
          validates :content, {presence: true}
end

# Checking the Validations
# Let's check if the validation works! If you set the 
# validation to prevent an empty post, any attempt 
# to save an empty post using the save method 
# should fail.

# Limiting the Length of Posts
# Let us also use validation to limit the length of 
# the posts to no more than 140 characters. 

# Validating the Number of Characters
# Validation can be used to check not only the 
# existence of a value but the number of characters 
# as well. As shown in the image, you can set the 
# maximum number of characters using length 
# and specifying {maximum: number}.
class Post < ApplicationRecord 
          validates :content, {length: {maximum: 140}}
end

# Specifying Multiple Contents to Validate
# The list of validation rules, known as validators, is actually 
# a hash. You can specify more than one by separating them 
# with a comma

class Post < ApplicationRecord 
          validates :content, {presence: true, length: {maximum: 140}}
end

# Validations and the save Method
# Now, let us try to redirect back to the input form again 
# when the post is invalid
# To do so, let us first learn that the save method will produce 
# different results depending on the result of the validation.

# Return Value of the save Method
# The save method, which saves posts to the database, 
# returns true if it succeeds and false if it fails the 
# validation. Let's confirm that the save method returns 
# a boolean value using the rails console.

rails console
post = Post.new
post.save #false


post.content = "Learning Rails is fun"
post.save #true

# Redirecting After Validations
# Let us display the form again when post submission fails.
# We will use the fact that the save method returns true 
# when post submission succeeds, and false when fails.
# Let us first work on the Edit post page.

# Redirecting to Different Pages
# When saving fails, we should redirect to the Edit post 
# page again instead of the Posts page. We can use the 
# save method as the condition, which returns values of 
# true or false depending on the result of the validation.

# In the update action,  use an if-else statement to redirect to:
# ・The Posts page when saving succeeds.
# ・ The Edit post page (URL: 

# posts_controller.rb
def update 
          if @post.save
                    # if post is saved
                    redirect_to("/posts/index")

          else 
                    # if post is not saved
                    redirect_to("/posts/#{@post.id}/edit")
                    
          end
end

# Redisplaying the Content of Failed Post
# We've been able to redirect back to the form, but it's 
# annoying how the edited data disappears each time.

# Why the Content of the Failed Post Disappears
# This is because:
# 1. When the update action fails, it redirects to the edit action.
def update 
          
          else 
                    # if post is not saved
                    redirect_to("/posts/#{@post.id}/edit")
                    
          end
end
# 2. The edit action gets the unedited post from the database.
def edit 
          @post = Post.find_by(...)
end
# 3. The form's initial value is set using the unedited post sent 
# from the edit action.

# edit.html.erb
<textarea>
          # <%= @post.content %>
</textarea>


# Displaying the Content of the Failed Post
# The @post of the update action contains the content of the 
# failed post, so if we make this @post accessible in 
# edit.html.erb, we'll be able to display it. Let's learn how 
# to display edit.html.erb directly from the update action 
# without going through the edit action.

def update 
          
          @post = Post.find_by(params[:id])

          @post.content = params[:content]
          
end

# The render Method
# You can use the render method to display views without 
# going through another action as follows: 
# render("folder_name/file_name"). When you use the 
# render method, you can use the @variables defined in 
# the action as they're in the view, unlike when you use 
# the redirect_to method. This way, the @post variable 
# will still have the failed post as the content.

def update 
          
          @post = Post.find_by(params[:id])

          @post.content = params[:content]
   
          render("posts/edit")
end

# Using the redirect_to and render method
# It's easy to make mistakes in writing the redirect_to 
# and render methods, so let's review them. When 
# calling redirect_to, we set the redirect URL like 
# redirect_to(URL). On the other hand, we call render 
# by setting the view file to be rendered like 
# render("folder_name/view_name").

# Displaying Error Messages
# We should also let the users know what was 
# wrong when the post is invalid. Let us display 
# error messages

# Getting Error Messages
# If a post fails validation when calling the save 
# method, Rails automatically generates error messages. 
# The content of the error is stored in 
# post.errors.full_messages as an array.

rails console
post = Post.new(content: "")
# has an empty arr bf d save method fails
post.errors.full_messages => [] 
post.save #false

post.errors.full_messages #Content can't be blank


# Displaying Error Messages
# Let's display error messages one by one using 
# the each method above the form in edit.html.erb.
# post/edit.html.erb
<% @post.errors.full_messages.each do |message| %>
          <%= message %>
# <% end %>

# Displaying Success Messages
# We will display these messages only once right 
# after the post is saved.

# Flash
# The message displayed only once on a page is known 
# as a flash. If you refresh the page or move to another 
# page after the flash is displayed, the flash will disappear.

# The flash Variable
# Rails provides a special flash variable. By assigning 
# a string to flash[:notice] in an action, you can use 
# flash[:notice] in the views. Flashes are automatically 
# removed after being displayed once. We'll add 
# flash[:notice] to application.html.erb because it'll 
# be used in many places.

# posts_controller.rb
def update
          if @post.save
                    flash[:notice] = "The message to display"
end

# layouts/application.html.erb
<% if flash[:notice] %>
          <div class="flash">
                    <%= flash[:notice] %>
          </div>
# <% end %>

# <!-- Show the message stored in flash[:notice] -->
<% if  %>
          <div class="flash">
                    <%=  %>
          </div>
# <% end %>

# Displaying Messages after Creating/Deleting a Post

# Validations on the New Post Page
# Let us start with the New post page. If the validation fails, 
# we will render the same page again.

def create
          @post = Post.new(content: params[:content])
          # Redirect to the "Posts" page if the @post is valid, and render the "New post" page if it's invalid
          if @post.save
                    flash[:notice] = "Post successfully created"
                    redirect_to("/posts/index")
          else
                    render("posts/new")
          end

          @post.save

end





#Progate @progateEN @dev_careers #dev_careers