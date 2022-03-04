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











#Progate @progateEN @dev_careers #dev_careers