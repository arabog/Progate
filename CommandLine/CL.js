/*
Command Line
Let's learn the fundamental UNIX commands necessary for 
development in this course!

Command Line
The command line is a tool for interacting with a computer using 
only text (also known as a text interface) rather than other methods 
like clicking and scrolling.UNIX command is a type of command 
that’s used in Linux and macOS.

Creating a File
First, let's look at the command for creating new files, the touch 
command. You can create an empty file by typing touch file_name 
and executing it.

touch beginner.js

-: Displaying the Content of a File
You can also display the content of a file with the cat command.
To use the cat command, type cat file_name.

cat Calculator.jsx

Error of a Command
If you specify a file that doesn't exist using the cat command, you'll 
get an error, as the command is invalid.

Tab Completion
The command line also has a useful completion feature. If 
you press the Tab key while entering a file name or folder 
name, the rest of the name gets auto-completed. Using tab 
completion not only improves efficiency but prevents 
typing mistakes too.


-: Creating a Directory
You can create a new directory using a command as well. 
A directory is commonly used interchangeably with the 
term folder. To create a directory, use the mkdir command 
as follows: mkdir directory_name.

mkdir directory_name


-: Current Directory
On the command line, the directory that you're currently in 
is known as the current directory.

cd
You can use the cd command to move to other directories. 
By entering cd directory_name, you can move to the 
specified directory.

The Current Directory
The current directory is displayed to the left of $. Note that 
you can only specify a directory name, not a file name.


-: Root Directory
In the file structure of a computer, there's a root directory 
at the very top. The root directory is represented by /. 
Note that the root directory is omitted in the file 
structure of the exercise screen.

Checking the Current Directory
On the command line, it's important to know the directory 
you are currently working in. There's a command called 
pwd to check that. When you execute the pwd command, 
all directories from the root directory to the current 
directory are displayed.

pwd


-; Displaying the Content of the Directory
When moving between directories, it would be convenient if 
we could see the list of files and directories in the current 
directory. To do this, you can use the ls command (short for list)

What's displayed by "ls"
Note that the ls command will only display the directories and 
files that are direct children of the current directory.


-: The Parent Directory
We've learned how to use the cd command, but we don't know 
how to move to the parent directory yet. If you want to move 
to the parent directory, you can use a special symbol .., like cd ...

cd ..


-: cd without Specifying a Directory
If you execute cd without specifying a directory, you can move 
to what is known as a home directory. The home directory is 
represented by ~

The Home Directory
The Home directory refers to the base directory for the user.


-: Working with Files and Directories
From this point on, we're going to learn how to perform a variety of 
operations like moving, copying, and deleting files with commands.

Moving a File
Let's start with the command to move a file. To do this, we use the mv 
command. By typing mv file_to_move destination_directory, you can 
move a file to the specified directory.

mv beginner.txt html

mv short for move

Moving a Directory
With the mv command, you can also move directories, not just files. 
By entering mv directory_to_move destination_directory, you can 
move all the files and directories under that directory.

mv html projectFile


-: Renaming a File
The mv command, which we used to move files and directories earlier, 
can also be used to rename a file. You can rename a file by typing 
mv old_file_name new_file_name.

mv beginner.txt dojo.txt


-: Copying a File
Next, let's look at how to copy files. To do this, we use the cp command. 
You can copy a file by entering cp file_to_copy new_file_name.

cp dojo.txt project.txt


-:  Copying a Directory
With the cp command, you can also copy a directory by adding the 
-r (Recursive copy) option, like cp -r directory_to_copy new_directory_name.

cp -r HTML Ruby

Error with the cp Command
If you try to copy a directory without adding the -r option, you'll get an 
error and the command won't be executed.


-: Removing a File
Next, we'll look at how to remove a file. To do this, you can use the rm 
command, like rm file_to_remove.

rm stands for remove

Removing a Directory
You can also remove a directory by adding the -r option to the rm command, 
like rm -r directory_to_remove. Just like the cp command, you'll get an error 
if you forget to add -r.






*/ 



