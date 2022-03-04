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
