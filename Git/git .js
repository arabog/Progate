/*
Use Ctrl+Shift+V to paste into the terminal. Ctrl+V will not work.

Let's Learn Git
When making a website, you may have to collaborate with others.
Git is a tool that'll help you to do team development smoothly.

Git Setup
Git is operated from the terminal.
First, to get started, you need to run the command git init.

git init
init is short for initialize


-: The Role of Git
These are the 3 steps to team development.
1. Make changes to a file
2. Prepare to share d changes
3. Share d change

Selecting Files to Share
To select a file, use the command git add file_name.

git add index.html


-: Recording Selected Files
We will save the selected files with a message. Then we are 
ready to share them.

git commit

To record a selected file, run the command git commit -m "message"
We call this kind of saving a commit. Well, it should describe the 
content of the commit. By the way, this message is called a 
commit message.

git commit -m 'create index.html'

With git add and git commit, the 2 commands we've 
already learned, you are ready to share files.


-: The Sharing Process
Git uses something called a remote (or remote repository) 
to store shared files. Developers share files by uploading 
to and downloading from remotes.

Adding a Remote
You need the remote's URL in order to upload. 
More specifically, to register a remote, type 
git remote add remote_name URL. 
Add a remote and name it origin

git remote add origin https://prog-8.com/mysite.git

origin = remote name 
prog-8 = remote URL


-: Uploading Files to a Remote
Let's try uploading a file to the remote! We can upload 
to the remote we made earlier by running:
git push origin master


-: Downloading Files from a Remote
I can download the file by running git pull origin master


-: Practicing the Team Development Workflow
The flow:
                    add
          pull                commit
                    push

With the 4 commands/flows, we can already share 
files with each other.

git add stylesheet.css
git commit -m 'added stylesheet.css'
git push origin master
git pull origin master


-; Mastering Git
Important Points About Git
In team development, it is important to clearly recognize 
the changes you have made and select which changes 
should be shared with your partners.   
So let us learn how to recognize and select the code we share. 

Recognizing Modified Files
Using git status, you can display a list of modified files.


-: Recognizing Content Changes
Here is a command to see the content changes: git diff.

Viewing git diff
Modified code will be displayed, with the code after in 
green and the code before in red. With this you can 
confirm the changes and execute git add with confidence.

Let's select only the file index.html to share.
git add index.html


-: Checking Added Files
You can use the git status again. You can check which 
files have or have not been added.

When you run git status, added files will appear green 
and files that have not yet been added will be red. 


-: Writing Good Commit Messages
You should write good commit messages so that when 
someone sees them they can understand easily what 
kind of changes were made.


-: git log
Using the command git log, you or anyone else can 
view the commits.

git log -p

With git log, can I see both the commit messages and the 
changes that were made?

To see the changes, you can use git log -p.
With the up and down arrow keys, you can scroll through t
he changes. And to quit just press the Q key.

*/ 