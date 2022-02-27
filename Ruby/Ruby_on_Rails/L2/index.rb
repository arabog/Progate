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


#Progate @progateEN @dev_careers #dev_careers
