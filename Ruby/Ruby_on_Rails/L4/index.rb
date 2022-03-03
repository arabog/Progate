# Editing and Deleting Data
# In order to edit/delete a post, we need to work with the database.
# Before we do so, let us first check the flow of editing and deleting 
# using rails console.

# Editing a Post
# To edit a post, you need to 
# 1. Get the post you want to edit; 
# 2. Overwrite the content value of that post; 
# 3. You can overwrite the value of the post's content 
# by using post.content = "new value"

rails console
post = Post.find_by(id: 1)
post.content = "Rails"
post.save

# updated_at
# The created_at column and the updated_at column 
# contain the date and time of when the post was created. 
# If you edit the post data and save it to the database, the 
# value of the updated_at column will change to the time 
# when the data was most recently updated.

# Deleting a Post
# To delete a post, you retrieve the post and use the 
# destroy method to delete it from the database.

rails console
post = Post.find_by(id: 1)
post.destroy