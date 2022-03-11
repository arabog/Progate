# Associating Posts with a User
# In this lesson, we will associate posts with a user. 

# On the Posts page, we'll display the name of the 
# user who created each post. On the User details page, 
# we'll display all the posts created by that user.


# :-Associating Posts with Users
# First in the Post details page, let us display which user 
# created the post. To do this, we need every post to contain 
# information about the author.

# Associating Posts and Users with user_id
# We'll make a column named user_id in the posts table to 
# clarify who created each post". 

# Adding the user_id Column in the posts Table
# To start, let's create a migration file with the filename 
# "add_user_id_to_posts" using the rails g migration command

rails g migration add_user_id_to_posts

# migrate folder
class AddUserIdToPosts < ActiveRecord::Migration[5.0]
          def change
                    add_column :posts, :user_id, :integer
          end
end

# then run 
rails db:migrate


# Validation for user_id
# After confirming that the user_id column has been added to the 
# posts table, let's set a validation on it. You should specify 
# presence: true because we always want to know who created 
# the post.

# models/post.rb
class Post < ApplicationRecord
          validates :content, {presence: true, length: {maximum: 140}}

          # Validate that the user_id column is not empty
          validates :user_id, {presence: true}
end


# :- Associating New Posts with a User
# Next let us add that data whenever a user creates a new post.

# Saving the id of the User Who Created the Post
# When creating a new post, let's be sure to save it with the value 
# of the user_id. We'll use @current_user.id as the value because 
# the user who posted is the user currently logged in.

# posts_controller.rb
def create
          @post = Post.new(
                    content: params[:content]
                    
                    user_id: @current_user.id
          )
end






# :-






# :-






# :-






# :-






# :-






# :-






# :-






# :-






# :-







#Progate @progateEN @dev_careers #dev_careers