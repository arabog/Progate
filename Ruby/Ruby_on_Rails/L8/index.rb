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

