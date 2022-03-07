# Creating Users
# We'll create the User model next.
# TweetApp will have more Social Media like features, like sign up and log in.

# Creating the Model and the Table
# We first need to add the users table to the database, along 
# with the User model to handle it.

# To do this, we can follow the same process we did for the 
# posts table and the Post model.

# We need the name and email columns

# Creating the Model and the Table
# You can create the User model and the users table with
#  the command below. We've added two pieces of data, 
# name and email. The column_name: data_type can be 
# used multiple times in a line to create multiple columns 
# at the same time. string is used for short text like name and email.

rails g model User name:string email:string

rails db:migrate    #applies d changes to d db

# Using the rails db:migrate command, reflect 
# the contents of the migration file to the database. 

