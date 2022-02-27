# Learn Ruby on Rails
# In this lesson we'll learn how to build a Twitter-style social media 
# platform named TweetApp using the Ruby on Rails framework.
# If you master Ruby on Rails, you'll be able to create various 
# web applications such as social networking site, shopping sites, etc.

# Ruby on Rails and Framework
# Ruby on Rails is a framework used for developing web applications. 
# With frameworks, you can significantly reduce the amount of work 
# necessary for developing apps.

# Generating a Rails App
# rails new
# The first step in Rails development is to run the 
# rails new application_name command on the terminal. 
# This command creates a folder with the application's name, 
# then generates other necessary folders and files.

# Starting the Server
# To see the application in the browser, you need to start the server 
# with the rails server command. After running this command, 
# you'll see the default page when you access the URL 
# localhost:3000 in the browser.

rails server

# Generating the Top Page
# You can create the Top page with the rails generate controller home 
# top command. A new web page is automatically created by this 
# command, and will allow you to access localhost:3000/home/top.

rails generate controller home top 

# Understanding Views
# when you run the command rails generate controller home top, 
# Rails generates all the necessary files for displaying a page.
# To display a page in Rails, you need the three things shown below.

View
Controller
Route

# Understanding Views
# A view is an HTML file that's used to create the look of a page. 
# When the browser asks Rails for a file, Rails returns a requested 
# view to the browser to display a page.

# Views are located inside the views folder. The rails generate 
# controller home top command generates the home folder and 
# a file named top.html.erb in the views folder. erb is a unique 
# file format, but you can think of it as a regular HTML file for now.

# Changing the View
# Because a view (HTML) contains the content displayed in the browser, 
# you can change the content by editing the file. Let's edit top.html.erb 
# to make it look more like the Top page of TweetApp.


# Understanding Controllers
# How Pages are Displayed
# When displaying a page, Rails returns views via its controllers.

# Controller Files
# Let's take a look inside a controller file. The rails generate 
# controller home top command creates a controller file named 
# home_controller.rb with a top method. A method within a 
# controller is also known as an action.
class HomeController < ApplicationController
          def top
                    # sm code
          end
end

# Understanding Actions
# The role of an action in a controller is to find a view from the 
# views folder, then return it to the browser. The action looks for 
# a folder with the same name as the controller (Home), then 
# finds a file with the same name as the action (top).

# Understanding Routes
# The Role of a Route
# While we return the view through the controller, the routing is 
# the one responsible for connecting the browser to the controller. 
# Make sure to understand that the process for displaying a page 
# is in the following order: routes → controllers → views.

# Routes can be described with a routing table. A route points 
# to a specific action of a controller according to the URL 
# requested. When a URL is entered in the browser, it calls for 
# a matching action in the controller based on the URL.

# The Routes File
# Routes are defined in the config/routes.rb file in the following 
# syntax: get "URL" => "controller#action". For instance, the 
# URL "localhost:3000/home/top" points to the top action in 
# the Home controller.

Rails.application.routes.draw do
          get "home/top" => "home#top"
                    #URL                #controller#action
end

# Routing Errors
# You can't access a URL that isn't written in the routes file.

# Changing a Route
# You can change the URL of the Top page by editing its 
# route. Once you modify the route, you can access the 
# Top page via localhost:3000/top. Even when the URL 
# is changed, the view file (top.html.erb) is still displayed 
# in the browser as long as the home#top remains the same.

Rails.application.routes.draw do
          get "top" => "home#top"
                    #URL                #controller#action
end

# Adding the About Page
# What the Command Does
# The command you inputted when you created the Top page 
# actually contains controller name and action name. The 
# rails generate controller controller_name action_name 
# command generates a controller and the files associated 
# with it. However, you can't use this command when a 
# controller with the same name exists.

rails generate controller home top 

# since d home controller has already being created
# ds rail command can't be used
rails generate controller home about 

# To add a new page, you need to manually create a route, 
# a controller (an action), and a view.

Rails.application.routes.draw do
          get "top" => "home#top"
          
          get "about" => "home#about"
end


class HomeController < ApplicationController
          def top
                    # sm code
          end

          def about
                    # sm code
          end
end

# Adding a view
# Let's create a view (about.html.erb) for the About page

# Improving the Design
# The stylesheets Folder
# CSS files are in the app/assets/stylesheets folder. When 
# you run therails generate controller home ... command, 
# a CSS file (home.scss) is also automatically generated. 
# scss is another form of the CSS language which lets you 
# write CSS more efficiently, but we'll only use regular CSS 
# syntax in this lesson.

# Applying CSS
# In Rails, any code written in the CSS files in the stylesheets 
# folder are applied to every view. Let's write the CSS for the 
# Top page and the About page in home.scss.

# he Folder for Images
# By placing an image in the public folder, you can display 
# that image by simply specifying the image name such as 
# <img src="/image_name"> or background-image: 
# url("/image_name");

# Changing the Default URL
# Let us modify a route so that we can access the Top page 
# via localhost:3000.

# The Route for localhost:3000
# To set a route for localhost:3000, you should use "/" as the 
# URL as follows: get "/" => "controller#action".

Rails.application.routes.draw do
          get "/" => "home#top"
          
          get "about" => "home#about"
end

# Creating Links
# You may recall that to create a link you need to put text 
# in an <a> tag, then specify the destination URL inside 
# href=" ". You can easily set the destination by specifying 
# a URL defined in routes.rb.

<a href="/"> Tweep </a>

<a href="/about"> Tweep </a>

Rails.application.routes.draw do
          get "/" => "home#top"
          
          get "about" => "home#about"
end