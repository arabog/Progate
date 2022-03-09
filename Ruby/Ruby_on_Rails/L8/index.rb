# Creating the Login Feature
# In this lesson, we will create the login/logout feature.
# Let's master this essential mechanism to improve TweetApp!

# What is Login?
# Login is the process of letting the application know who 
# is using the site. This will allow the application to display 
# different content for each user.

# Our Goal for This Lesson
# 1. Login
# 2. Logout
# 3. Show name of d current user
# 4. Limit access for users who r not logged In
# 5. Prevent editing accounts of other users

# Creating the Login Feature
# The Flow of Logging in
# To log in, we send information such as a user's email 
# and password from the Login page to Rails(database). 
# It identifies the current user based on the information 
# received and makes the user status "logged in". 

# Creating the Login Page
# Let's add the routes, actions, and views to create the Login page.

get "login" => "users#login_form"

def login_form
end

# login_form.html.erb

# Adding a Form for Password
# Let's add an input field for password in login_form.html.erb. If 
# you set the type attribute of the <input> tag to password, it 
# becomes an input specifically for passwords in which the text is hidden

<input type="password" >

# Adding the Password Column
# we have to add a password column to the users table in the database.

# Adding the Password Column
# First, let's create a migration file with the name add_password_to_users 
# using rails g migration. Change the content of  the migration file  
# by running rails db:migrate

rails g migration add_password_to_users

# add_password_to_users.rb
class AddPasswordToUsers < ActiveRecord::Migration[5.0]
          def change
                    add_column :users, :password, :string
          end
end

# apply changes to db
rails db:migrate

# Setting the Validation
# Let's set the validation on the password column because the password 
# value should always exist in the user's information. Validation that 
# checks existence can be added using presence.

validates :password, {presence: true}

# model/user.rb
class User < ApplicationRecord
          validates :name, {presence: true}

          validates :email, {presence: true, uniqueness: true}

          validates :password, {presence: true}
          
end

# Lastly, let's set a password for a user currently registered in the database.
user = User.find_by(id: 1)
user.password = "Ibadan"
user.save

# Sending Form Values
# we will send the content inputted into the form to the controller.
# To accomplish this, we first need to add routes and actions.

# Adding Routes and Actions
# Let's add the appropriate routes and actions to receive values 
# sent from the form. Note that a route should use the post method 
# when sending values from a form.

post "login" => "users#login"

def login
end

# Setting Form Destination
# Let's set the destination of the form in login_form.html.erb 
# using the form_tag method. Let's also add the name 
# attribute to the <input> tag so that values entered in the 
# form are sent to the Rails app.

<%= form_tag("/login") do %>
          <p> Email </p>
          <input name="email" >

          <p> Password </p>
          <input name="password" type="password" >
# <% end %>

# Routes for the login Action
# It seems like the two routes with /login are the same, 
# but get and post are treated as different routes. 
# The link_to method looks for the get routing, while 
# the form_tag method looks for the post routing.

get "login" => "users#login_form"
post "login" => "users#login"


# Identifying the User
# we are going to use the email and password sent 
# from the form to identify the user.

# Identifying the User Logging in
# You can get the email and password inputted in the 
# form with params. Let's get the user that matches the 
# input values from the users table and assign it to the 
# @user variable. You can use the find_by method with 
# multiple conditions by separating the arguments with 
# comma ,

def login
          @user = User.find_by(
                              email: params[:email], 
                              
                              password: params[:password]
                    )
end

# The Existence of the User
# If there's a user that matches the email and 
# password sent from the form, let's redirect the 
# user to the Posts page, and display a flash message. 
# If the user doesn't exist, let's display the Login page again.

def login
          @user = User.find_by(
                              email: params[:email], 
                              
                              password: params[:password]
                    )

          if @user 
                    flash[:notice] = "You have logged in successfully"

                    redirect_to("/posts/index")
          else 
                    render("users/login_form")
          end

end

#When the User Does Not Exist 
# When an unregistered email or password is inputted, we already 
# display the same page again.  Let us also add an error message 
# and keep the form values.

# Displaying the Error Message
# Let's display an error message if there's no user associated with 
# the email and password from the login form. You need to create 
# this error message yourself because it's telling the result of the 
# find_by method, unlike the error message for the validation.

def login
          if

          else
                    @error_message = "Invalid email/password combination"

                    render("users/login_form")
          end
end

# login_form.html.erb
<% if @error_message %>
          <div class="form-error">
                    <%= @error_message %>
          </div>
# <% end %>

# Setting the Default Values
# Let's define the @email and @password 
# variables with the values params[:email] and 
# params[:password], to use as the default values 
# of the form. Remember that you can use the value 
# attribute to set the default value.

def login
          if

          else
                    @error_message = "Invalid email/password combination"

                    @email = params[:email]

                    @password = params[:password]

                    render("users/login_form")
          end
end

# login_form.html.erb
<% if @error_message %>
          <div class="form-error">
                    <%= @error_message %>
          </div>
<% end %>

<%= form_tag("/login") do %>
          <p> Email </p>
          <input name="email" value="<%= @email %>">

          <p> Password </p>
          <input name="password" type="password"  value="<%= @password %>" >
# <% end %>

# Retaining the User Information
# After identifying the current user, we need to retain the user information.

# session Variable
# We use a special variable known as session to keep user information 
# across different pages. The value assigned to session is saved in the 
# browser (Internet Explorer, Google Chrome, etc). Rails can use this 
# value to identify the logged in user.

# Specifically, when storing a value with the session variable, you can 
# use user_id as the key. When @user is found, you can keep the 
# information of that user in the browser by storing @user.id in 
# the session variable.

session[:key] = value

def login
          @user = User.find_by()

          if @user 
                    session[:user_id] = @user.id
          end
end


# Displaying the ID of the Current User
# Let's display the id of the current user in the header to confirm that 
# the value stored in session[:user_id] is kept across different pages.
# Using session[:user_id], you can get the value of the session variable 
# saved in the browser

# application.html.erb
<% if session[:user_id] %>
          <li>
                    Your ID is: <%= session[:user_id] %>
          </li>
# <% end %>

# Creating the Logout Feature
# Logout, on the other hand, will remove the user_id from the session variable.

# Emptying session[:user_id] Value
# In order to log out, you should make the value of session[:user_id] empty. 
# You can do this by assigning nil to session[:user_id].

def logout
          session[:user_id] = nil
end

# Creating the logout Action
# Let's prepare the logout action to implement the logout feature. 
# Similar to login, the route should be post, not get. Let's also 
# redirect to the Login page after logging out.

post "logout" => "users#logout"

def logout
          session[:user_id] = nil

          flash[:notice] = "You have logged out successfully"

          redirect_to("/login")
end

# get and post
# Even though we're not changing the database and 
# there's no form_tag method, we should use post in 
# the routes?

# In addition to when you alter the database, you 
# need to use post when you modify the value of 
# the session variable.

# Changing the Header
# The link to the Login page is currently always 
# displayed in the header, but it's unnecessary 
# when you're already logged in. Let's decide 
# whether or not to display this kind of link by 
# using the fact that the value of session[:user_id] 
# changes before and after log in.

# application.html.erb
<% if session[:user_id] %>
          <li>
                    <%= session[:user_id] %>
          </li>

<% else %>
          <li>
                    <%= link_to("...", "/about") %>
          </li>

# <% end %>

# useer logged in
<% if session[:user_id] %>
          <li>
                    Your ID is: <%= session[:user_id] %>
          </li>

          <li>
                    <%= link_to("Posts", "/posts/index") %>
          </li>

          <li>
                    <%= link_to("New post", "/posts/new") %>
          </li>

          <li>
                    <%= link_to("Users", "/users/index") %>
          </li>

          <li>
          #   <!-- Add a link to the "logout" action -->
                    <%= link_to("Log out", "/logout", {method: :post}) %>
          <li>
                    

# <% else %>

          # user logout
          <li>
                    <%= link_to("About", "/about") %>
          </li>

          <li>
                    <%= link_to("Sign up", "/signup") %>
          </li>
          
          <li>
                    <%= link_to("Log in", "/login") %>
          </li>
# <% end %>

# Logging in after Signing Up
# Let us make the user logged in right after they have successfully 
# signed up.


# Saving the Password When Signing up
# let's set the value of the password column at the time of sign up. 
# We can do this by adding password as an argument of the new 
# method in the create action.

# new.html.erb
<p> Password </p>

<input name="password" type="password" value="<%= @user.password %>" >

def create
          @user = User.new (
                    name: params[:name]
                    email: params[:email]
                    image_link: "default_user.jpg"
                    password: params[:password]
          )
end

# Logging in When Signing up
# When sign up succeeds, we should log the user in automatically.
# To do this, let's assign the id of the new user to session[:user_id] 
# in the create action.

def create
          @user = User.new (
                    name: params[:name]
                    email: params[:email]
                    image_link: "default_user.jpg"
                    password: params[:password]
          )

          if @user.save
                    session[:user_id] = @user.id

                    flash[:notice] = "You have signed up successfully"
                    
                    redirect_to("/users/#{@user.id}")
          end
end

# Displaying the User's Name
# Using the value of session[:user_id], let's get the logged in 
# user information from the database. We'll use the find_by 
# method to retrieve the user whose id column value is equal 
# to session[:user_id] from the users table and assign it to a 
# variable named current_user. Also the user name to be 
# displayed should be a link to the User Details page

# applicatn.html.erb
<%= current_user = User.find_by(id: session[:user_id]) %>

<li>
          <%= link_to(current_user.name, "/users/#{current_user.id}") %>
</li>

# Getting a User That Is Currently Logged In
# Do I need to define the current_user variable in views?
# So far, we've been defining variables in actions,

# It is true that variables should be defined in actions, but this t
# ime we need to do something a little different. by def it in view

# Rewrite the condition of the if statement using current_user.

# applicatn.html.erb
<header>
          <div class="header-logo">
                    <%= link_to("TweetApp", "/") %>
          </div>

          <ul class="header-menus">
                    # <!-- Declare the current_user variable and assign it the user gotten using session[:user_id] as the id -->
                    <%= current_user = User.find_by(id: session[:user_id]) %>

                    # <!-- Change the condition for the if statement -->
                    <% if current_user %>
                              <li>
                                        <%= link_to(current_user.name, "/users/#{current_user.id}") %>
                              </li>

                              <li>
                                        <%= link_to("Posts", "/posts/index") %>
                              </li>

                              <li>
                                        <%= link_to("New post", "/posts/new") %>
                              </li>

                              <li>
                                        <%= link_to("Users", "/users/index") %>
                              </li>

                              <li>
                                        <%= link_to("Log out", "/logout", {method: :post}) %>
                              </li>

                              <% else %>

                              <li>
                                        <%= link_to("About", "/about") %>
                              </li>

                              <li>
                                        <%= link_to("Sign up", "/signup") %>
                              </li>

                              <li>
                                        <%= link_to("Log in", "/login") %>
                              </li>
                    <% end %>
          </ul>
</header>

# Defining the Common Variable in Action
# In the header, we defined the current_user variable, but it is 
# better to define it in an action.  We will see how to do that, 
# but first let us review how application.html.erb works.

# How application.html.erb Works
# Recall that the view file for each action is assigned to the 
# <%= yield %> part of application.html.erb and displayed. 
# Therefore, application.html.erb is called from all the actions.

# Defining the Variable in Every Action
# Since application.html.erb is called from all the actions, 
# you would have to define @current_user in every action 
# to use it in the view. But this is troublesome.

def index
          @current_user =User.find_by(id: session[:user_id])
end

def show
          @current_user =User.find_by(id: session[:user_id])
end

def new
          @current_user =User.find_by(id: session[:user_id])
end

# before_action
# It's convenient to use before_action if you have a process 
# that's common to all actions in a controller. By using 
# before_action, the process that's set in before_action will 
# always be executed whenever an action is called. This 
# allows you to put the common process of all actions in 
# one place.

before_action

def index
          @current_user =User.find_by(id: session[:user_id])
end

def show
          @current_user =User.find_by(id: session[:user_id])
end

def new
          @current_user =User.find_by(id: session[:user_id])
end

# Application Controller
# The code in the Application controller can be used in all 
# controllers. Like shown below, if we define the 
# :set_current_user method and set it as a before_action, 
# @current_user will be defined in all the actions of all 
# the controllers.

# controller/application_controller.rb
class ApplicationController < ActionController::Base
          # Set the set_current_user method as a before_action
          before_action :set_current_user
          
          # Define the set_current_user method
          def set_current_user
                    @current_user = User.find_by(id: session[:user_id])
          end
        
end


<ul class="header-menus">
          <!-- Rewrite using @current_user -->
          <% if @current_user %>
                    <li>
                              <!-- Rewrite using @current_user -->
                              <%= link_to(@current_user.name, "/users/#{@current_user.id}") %>
                    </li>
          end
</ul>


# Restricting Access
# For example, users should not be able to create a new post 
# without being logged in. Users can access some pages by directly 
# entering the URLs even if they aren't logging in. Let's add code to 
# redirect them to the Login page if @current_user is nil. We'll put 
# this code in the Application controller and use the before_action 
# because we want to use it in several actions.

def new
          if @current_user == nil
                    flash[:notice] = "You must be logged in"

                    redirect_to("/login")
          end 
end

# Creating authenticate_user Method
# We'll create a method named authenticate_user in the Application 
# controller to redirect users to the Login page. Let's look at how to 
# apply before_action to only certain actions of certain controllers 
# because we don't want to apply this to all the actions.

def authenticate_user
          if @current_user == nil
                    flash[:notice] = "You must be logged in"

                    redirect_to("/login")
          end 
end

# Running before_action in Specified Actions
# As shown below, you can run a before_action only for specific 
# actions by setting the names of actions in the only parameter. 
# Also, the authenticate_user method can be used in all the 
# controllers as they are inherited from the ApplicationController.

# users_controller.rb
before_action :authenticate_user, {only: {edit, update}}

# application_controller.rb
def authenticate_user
end

# posts_controller.rb
class ApplicationController < ActionController::Base
          before_action :set_current_user
  
          def set_current_user
            @current_user = User.find_by(id: session[:user_id])
          end

          before_action :authenticate_user
end

# @current_user
# Notice that @current_user is also used in the authenticate_user 
# method. Variables defined using @ can be used in different methods 
# after they're defined.

# application_controller.rb
def authenticate_user
          def set_current_user
                    @current_user = User.find_by(id: session[:user_id])
          end

          def authenticate_user
                    if @current_user
                    end
          end
end

# Set the authenticate_user method as a before_action for 
# all the index, show, edit, and update actions using only

class ApplicationController < ActionController::Base
          before_action :set_current_user
          
          def set_current_user
                    @current_user = User.find_by(id: session[:user_id])
          end
          
          before_action :authenticate_user, {only: {index, show, edit, update}}
          
          # Define the authenticate_user method
          def authenticate_user
                    if @current_user == nil
                              flash[:notice] = "You must be logged in"

                              redirect_to("/login")
                    end
          end
          
end

# Pages That Can't Be Accessed by Logged in Users
# Let us make some pages not accessible for a user who is logged in.

# Pages like the Signup page or the Login page, for example, are not 
# needed for a user who has logged in.
# So, let us restrict user access to those pages after a log in.

# forbid_login_user
# Next, we'll define a method named forbid_login_user in the 
# Application controller. This method redirects the user to the 
# Posts page if the user is logged in. Let's use before_action to 
# run the method and use only to specify the actions.

def forbid_login_user
          if @current_user
                    flash[:notice] = "You are already logged in"

                    redirect_to("/posts/index")
          end
end

# home_controller.rb
before_action :forbid_login_user, {only: [:top]}

# users_controller.rb
before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}

# application.html.erb
# Delete the line<%= link_to("TweetApp", "/") %> and paste the below HTML:

<header>
          <div class="header-logo">
                    # <!-- Remove the line below, then paste the new code -->
                    <% if @current_user %>
                              <%= link_to("TweetApp", "/posts/index") %>
                    <% else %>
                              <%= link_to("TweetApp", "/") %>
                    <% end %>
          </div>
</header>