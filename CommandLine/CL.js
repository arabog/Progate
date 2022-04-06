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






*/ 

-: The Parent Directory
We've learned how to use the cd command, but we don't know 
how to move to the parent directory yet. If you want to move 
to the parent directory, you can use a special symbol .., like cd ...

cd ..


