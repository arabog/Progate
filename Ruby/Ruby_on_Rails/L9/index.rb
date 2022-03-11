# Associating Posts with a User
# In this lesson, we will associate posts with a user. 

# On the Posts page, we'll display the name of the 
# ser who created each post. On the User details page, 
# we'll display all the posts created by that user.


# -: How to Create the Like Feature 
# The Like feature will manage "which user liked 
# which post" as data. As a start, we can create a 
# likes table in the database in order to save the data. 

# The Role of the likes Table
# Let's create the likes table with two columns user_id 
# and post_id in the database in order to record 
# "which user" liked "which post". For example, a 
# record with user_id of 1 and post_id of 2 indicates 
# that "id:1 user liked the post with id:2".

# Creating the likes Table
# Let's create the Like model and a migration file using 
# the command below. The likes table will have two 
# columns, user_id and post_id. After the migration 
# file has been created, run rails db:migrate to apply 
# the changes to the database.

rails g model Like user_id:integer post_id:integer

# After checking the migration file, use the rails 
# db:migrate command to apply the changes 
# specified in the migration file to the database.

rails db:migrate

# Adding the Validations
# Since the "like" data is incomplete unless both 
# user_id and post_id exist, let's add the validation 
# presence: true for both user_id and post_id.

class Like < ApplicationRecord
          validates :user_id, {presence: true}
          validates :post_id, {presence: true}
end

# -: Creating the Like Data 
# Creating the Data with rails console
# Let's add data to the likes table on the console.
# By running Like.new (user_id: 1, post_id: 2), 
# you can create data that indicates "id:1 user 
# likes id:2 post".

rails console
like = Like.new(user_id: 1, post_id: 2)
like.save