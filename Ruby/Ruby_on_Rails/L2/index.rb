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




#Progate @progateEN @dev_careers #dev_careers
