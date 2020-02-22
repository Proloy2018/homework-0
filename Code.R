library(tidyverse)
###In this course, you will learn:
# How to leverage the many useful features provided by RStudio
# How to use Unix/Linux to manage your file system
# How to start a repository on GitHub
# How to perform version control with git
###Course overview
## Section 1: Installing Software
# You will learn how to install R, RStudio, git (and git bash for Windows users), create a GitHub account, create a GitHub repository, and connect RStudio to your GitHub account.
##Section 2: Unix
# You will learn the basics of managing your filesystem from the terminal with Unix commands such as mv and rm. 
##Section 3: Reproducible Reports
# You will learn to create data science reports using R Markdown and the knitr package.
##Section 4: Git and GitHub
# You will learn to use git and GitHub from the command line to clone and create repositories.
##Section 5: Advanced Unix 
# You will learn other Unix commands, including arguments, getting help, pipes, and wildcards that are helpful in data science.

## Introduction (Video)
#RAFAEL IRIZARRY: Generally speaking, we do not recommend the use of graphical user interfaces, GUIs, for data science projects.
#In fact, to avoid using GUIs for data analysis, we have already learned to code in R. In this course, we describe an alternative to point and click approaches to organizing files and document preparation.
##General Guiding Principles:
# Be systematic when organizing your filesystem: minimize the time you spend remembering what you call something or where you put it.
# Automize when possible: if you find yourself repeating the same task over and over, there's probably a way to automize it.
# Minimize the use of the mouse: anytimes your fingers leave the keyboard, it results in loss of productivity.

##What we will learn:
# Unix shell: We will learn to use the Unix shell as a tool for managing files and folders on your computer system. Using Unix will permit you to use the keyboard, rather than the mouse, when creating folders, moving from folder to folder, and renaming, deleting, or moving files. We also provide specific suggestions on how to keep the file system organized. The data analysis process is iterative and adaptive. As a result, we are constantly editing our scripts and reports.
# Git and GitHub: we introduce a new version control system, Git, which is a powerful tool for keeping track of these changes. We also introduced you to GitHub, a service that permits you to host and share your code. We will also demonstrate how you can use this service to facilitate collaborations. Note that a side effect of using Github is that you can easily showcase your work to potential employers.
# R markdown: Finally, we learned to write reports in R markdown, which permits you to incorporate text and code into a single document. We will demonstrate how using the knitr package we can write reproducible and aesthetically pleasing reports by running the analysis and generating the report simultaneously.

# Key binding (use keboard instead of mouse) 
# Ctrl+Shift+N = open a new R script file 
# Alt+mouse drag = to select multiple lines of codes/columns 
# Ctrl+Enter = run single code
# Ctrl+Shift+Enter = Run an entire script
# Ctrl + Alt + B = Run all codes above the cursor 
# Ctrl + Alt + E = Run all codes below the curson 
# Ctrl + Q = To quit R session 
# Ctrl+Shift+C = To comment selected text
# Global option can do followings inter alia 
# Move the editor pane to the upper right 
# Change the editor theme to a dark background 
# Customize key binding 
#Code
install.packages("dslabs")  # to install a single package
install.packages(c("tidyverse", "dslabs")) # to install two packages at the same time
installed.packages() # to see the list of all installed packages
# Installed packages will NOT remain installed even if you upgrade R 
# Installing a package by building from GitHub will NOT give you the exact same version as on CRAN 
## Keeping Organized with RStudio Projects

# Open my_first_project.RPOJ

##GitHub
# You DON'T NEED TO Set Git / GitHub configuration for each R project 
#Key points
#Sign up for a GitHub account, with a name that is professional, short, and easy to remember
#Connect to RStudio: global options > Git/SVM, enter the path to git executables
#To avoid typing our GitHub password every time, we create a SSH/RSA key automatically through RStudio with the create RSA key button.
# Create Github code repository key"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJCcyWB6iBT5d1Vlxre7EdDAMTP3ps9bc5sO3paFxlfXwQtkzYn6QQCbNw4ijXwMFgskX9342qY7dqyO8fvVLn0yvK/9dRSWeUF2QpRJM0h1giBW7MH2m2CtNtDOoXTO5x6i6jLQtIQZglXCqefc1oQahnX0BzGxFShJmpREAGnVq7fX1GZBrY0WynAyGWvoHjuNJutFoS862L2/kxgL7qY0QBdL30GO3roA6hcQRHR+AxDiIM6EwWXoeqJ5BJNpWRmwXa4Q5cQaz4lQXi/MDBYflnFYzghAkwYfzRA3JnjoAT6TsF+zrJcBffs6eWDdu3Kpq8mCQCnOQ2QGUpB92j admin@DESKTOP-6P6ENBJ"
##GitHub Repositories (Video)
#Key points
#To create a new GitHub repository and link it to an RStudio project, follow 2 steps:
#  Step 1: Initialize a new repo on GitHub by clicking repository > new > choose a descriptive name.
#   Step 2: Connect to RStudio (next video).
# Copied GitHub link: https://github.com/Proloy2018/homework-0.git 
##RStudio, Git, and GitHub (Video)
#Key points
#In terminal: configure git 
#git config --global user.name "Your Name"
#git config --global user.email "your@email.com"
#In RStudio, create project > Version control > Git
#Git pane: status symbols and color
#Git actions:
#  pull: pull changes from remote repo (if you are in collaboration with others)
#  add: stage files for commit; click on stage box under git pane
#  commit: commit to the local repo; click on "commit" button under git pane; add a commit message
#  push: push to the remote repo on Github
#.gitignore file: details check https://git-scm.com/docs/gitignore

# #Organizing with Unix (Video)
# Similar terminology: Linux, command line, the shell, Unix 
# Useful links to learn more about Unix 
# https://rafalab.github.io/dsbook/unix.html
# https://www.quora.com/Which-are-the-best-Unix-Linux-reference-books
# https://www.codecademy.com/learn/learn-the-command-line

# #The Terminal (Video)
# Using Git Bash and and RStudio 
# echo "Hello World" which is similar to cat () in R 

# # The Filesystem (Video)
# RAFAEL IRIZARRY: We refer to all the files, folders, and programs on your computer as the filesystem. Note that folders and programs are also file.
# In Unix Folders is called Directories and subfolders as subdirectories (folders inside other directories)
# pwd for full path or absolute directory 

### Working Directory (Video)
# Key points
# The working directory is the current location.
# Each terminal window has a working directory associated with it.
# The "pwd" command will display your working directory, which stands for print working directory. The "/" symbol separates directories, while the first "/" at the beginning of the path stands for the root directory. When a path starts with "/", it is a "full path", which finds the current directory from the root directory. "Relative path" will be introduced soon.
# "~" means the nick name of my home directory. So for example, if docs is in the path to a directory in your home directory,docs can be written as ~/docs.

## Unix Commands (Video)
# Key points
# navigate the file system with commands introduced in this video.
# Auto-complete paths, commands and file names with the "Tab" key.
# Code
# ls #list dir content
# mkdir folder_name #create directory called "folder_name"
# The mkdir command makes a new directory but does not automatically move into it. You must use the cd command to change into the new directory
# rmdir folder_name  #remove an empty directory as long as it is empty
# rm -r folder_name  #remove dir that is not empty, "r" stands for recursive
# cd: change dir
# ../ # two dots represents parent dir
# Double dots .. mean "up a directory", so mv assignment.txt .. moves the assignment text file into the NEXT highest directory, projects.
#   . # single dot represents current workingdir 
# cd ~/projects # concatenate with forward slashes
# cd ../.. # change to two parent layer beyond
# cd -  # whatever dir you were before
# cd  # return to the home dir

# #mv and rm: Moving and Removing Files(Video)
# Key points
# The mv command moves files.
# [warning] mv will not ask you to confirm the move, and it could potentially overwrite a file.
# Be careful when moving files around using the command line. Unix does not warn you before you overwrite a file.
# The rm command removes files.
# [warning] rm is permanent, which is different than throwing a folder in the trash.
# Code
# mv path-to-file path-to-destination-directory
# The mv command can move a file and change the name of a file. 
# rm filename-1 filename-2 filename-3


# #less: Looking at a File (Video)
# Now if you're wondering why the command is called "less," It is because the original was called "more," as in "show me more of this file."
# The second version was called "less" because of the saying "less is more."
# Key points
# less allows you to quickly look at the content of a file
# Use q to exit the less page
# use the arrows (up-down-left-right arrows)to navigate in the less page. Jump commands are as follows (l=right, h=left, k=upward, j=downward)
# Code
# less cv.tex


# #Preparing for a Data Science Project (Video)
# Key points
# Ideally, files (code, data, output) should be structured and self-contained
# In a project, we prefer using relative paths (path relative to the default working directory) instead of the full path so that code can run smoothly on other individual's computers.
# It is good practice to write a README.txt file to introduce the file structure to facilitate collaboration and for your future reference.
# Code
# ########### In terminal ###########
# cd ~    # move to home directory
# mkdir projects    # make a new directory called projects
# cd projects    # move to ~/projects directory
# mkdir murders    # make new directory called murders inside of projects
# cd murders    # move to ~/projects/murders/
# mkdir data rda    # make two new directories, one is data the other is rda folder (rda stands for R data)
# ls    # to check if we indeed have one data folder and one rda folder
# pwd    # check the current working directory
# mkdir figs    # make a directory called figs to store figures
# ########## In RStudio ########
# # pick existing directory as new project
# getwd()    # to confirm current working directory
# save()    # save into .rda file, .RData is also fine but less preferred
# ggsave("figs/barplot.png")    # save a plot generated by ggplot2 to a dir called "figs"

##Reproducible Reports with R Markdown (Video)
# Key points
# The final output is usually a report, textual descriptions and figures, and tables.
# The aim is to generate a reproducible report in R markdown and knitr.
# Features of Rmarkdown: code and text can be combined to the same document and figures and tables are automatically added to the file.

## R Markdown (Video)
# Textbook link: https://rafalab.github.io/dsbook/reproducible-projects-with-rstudio-and-r-markdown.html#r-markdown
# This video corresponds to the textbook section on R Markdown.
# Useful links
# You can learn more about R Markdown at markdowntutorial.com.
# The code for the sample report is available: https://raw.githubusercontent.com/rairizarry/murders/master/report.Rmd
# Key points
# R Markdown is a format for literate programming documents. Literate programming weaves instructions, documentation and detailed comments in between machine executable code, producing a document that describes the program that is best for human understanding.
# Start an R markdown document by clicking on File > New File > the R Markdown
# The output could be HTML, PDF, or Microsoft Word, which can be changed in the header output, e.g. pdf_document / html_document/p>
# Keybinding: Ctrl+Alt+I = authomatically create code chunk
#   Code
# a sample code chunk
#```{r}
summary(pressure)
#```

# When echo=FALSE, code will be hided in output file
#```{r echo=FALSE}
summary(pressure)
#```

# use a descriptive name for each chunk for debugging purpose
#```{r pressure-summary}
summary(pressure)

#```

# # #knitr (Video)
# Useful Links
# This video corresponds to the textbook section on knitr basics:https://rafalab.github.io/dsbook/reproducible-projects-with-rstudio-and-r-markdown.html#knitr 
# The code for the example report is available: https://raw.githubusercontent.com/rairizarry/murders/master/report.Rmd
# It also may be useful to explore the RMarkdown website (https://rmarkdown.rstudio.com/) and the knitr website (https://yihui.name/knitr/)
# Key points
# The knitr package is used to compile R markdown documents.
# The first time you click the "knit" button on the editor pane a pop-up window will prompt you to install packages, but after that is completed, the button will automatically knit your document.
# github_document gives a .md file, which will give the best presentation on GitHub
# Code
# output: html_document 
# output: pdf_document 
# output: word_document
# output: github_document

# # #Git and GitHub
# Textbook link
# This video corresponds to the textbook section on why use Git and GitHub:https://rafalab.github.io/dsbook/git.html#why-use-git-and-github
# Additional Git and GitHub resources:
# Codecademy: https://www.codecademy.com/learn/learn-git
# GitHub Guides: https://guides.github.com/activities/hello-world/
# Try Git tutorial: https://try.github.io/levels/1/challenges/1
# Happy Git and GitHub for the useR: http://happygitwithr.com/
# Key points
# Next, we will learn how to use Git and GitHub in the command line.
# Reasons to use Git and GitHub:
# Version-control: Permits us to keep track of changes we made to code, to revert back to previous versions of files, to test ideas using new branches and decide if we want to merge to the original.
# Collaboration: On a centralized repo, multiple people may make changes to the code and keep versions synced. A pull request allows anyone to suggest changes to your code.
# Sharing code
# To effectively permit version control and collaboration, files move across four different areas: Working Directory, Staging Area, Local Repository, and Upstream Repository.
# Start your Git journey with either cloning an existing repo, or initializing a new one.
# #Using Git at the Command Line (Video)
# Textbook link
# This video corresponds to the textbook section on Overview of Git:https://rafalab.github.io/dsbook/git.html#git-overview
# Resources link
# Explore the repository discussed in the video: https://github.com/rairizarry/murders
# Key points
# Recap: there are four stages: working directory, staging area, local repository, and upstream repository
# Clone an existing upstream repository (copy repo url from clone button, and type "git clone <url>"), and all three local stages are the same as upstream remote.
# The working directory is the same as the working directory in Rstudio. When we edit files we only change the files in this place.
# git status: tells how the files in the working directory are related to the files in other stages
# edits in the staging area are not tracked by the version control system by default - we add a file to the staging area by git add command
# git commit: to commit files from the staging area to local repository, we need to add a message stating what we are doing by git commit -m "something"
# git log: keeps track of all the changes we have made to the local repository
# git push: allows moving from the local repository to upstream repository, only if you have the permission (e.g. if it is yours)
# git fetch: update local repository to  be like the upstream repository, from upstream to local
# git merge: make the updated local sync with the working directory and staging area
# To change everything in one shot (from upstream to working dir), use git pull (equivalent to combining git fetch + git merge)
# Code
# pwd
# mkdir git-example
# cd git-example
# git clone https://github.com/rairizarry/murders.git
# cd murders
# ls
# git status
# echo "test" >> new-file.txt
# echo "temporary" >> tmp.txt
# git add new-file.txt
# git status
# git commit -m "adding a new file" 
# git status
# echo "adding a second line" >> new-file.txt
# git commit -m "minor change to new-file" new-file.txt
# git status
# git add
# git log new-file.txt
# git push
# git fetch
# git merge

# # #Creating a GitHub Repository (Video)
# Download Text (.txt) file 
# Textbook Link: https://rafalab.github.io/dsbook/git.html#init
# This video corresponds to the textbook section on Initializing a Git directory.
# Key points
# Recap: two ways to get started, one is cloning an existing repository, the other is initializing our own
# Create our own project on our computer (independent of Git) on our own machine
# Create an upstream repo on Github, copy repo's url
# Make a local git repository: On the local machine, in the project directory, use git init. Now git starts tracking everything in the local repo.
# Now we need to start moving files into our local repo and connect local repo to the upstream remote by  git remote add origin <url>
# Note: The first time you push to a new repository, you may also need to use these git push options: git push --set-upstream origin master. If you need to run these arguments but forget to do so, you will get an error with a reminder.
# Code
# First delete the invisible folder"git" in murders/git/ ,then git init, try it 
# cd ~/projects/murders
# git init
# git add README.txt
# git commit -m "First commit. Adding README.txt file just to get started"
# git remote add origin "https://github.com/rairizarry/murders.git"
# git push    # you may need to add these arguments the first time: --set-upstream origin 

## Question
# You have a directory of scripts and data files on your computer that you want to share with collaborators using GitHub. You create a new repository on your GitHub account called "repo123" that has the following URL: https://github.com/user123/repo123.git.
# Which of the following sequences of commands will convert the directory on your computer to a GitHub directory and create and add a descriptive "read me" file to the new repository?
#   
# You create the README.txt file, initialize the local directory, stage and commit the README.txt file, connect the local directory to the remote directory, then push the files from your computer to your remote Github repository.
# Answer Code
# echo "A new repository with my scripts and data" > README.txt
# git init
# git add README.txt
# git commit -m "First commit. Adding README file."
# git remote add origin `https://github.com/user123/repo123.git`
# git push

# # ##Advanced Unix: Arguments (Video)
# Textbook link
# This video corresponds to the textbook section on arguments in Unix: https://rafalab.github.io/dsbook/unix.html#arguments
# Key points
# Arguments typically are defined using a dash (-) or two dashes (--) followed by a letter of a word.
# r: recursive. For example, rm -r <directory-name>: remove all files, subdirectories, files in subdirectories, subdirectories in subdirectories, etc.
# Combine arguments: rm -rf directory-name (i.e. f for force)
# ls -a: Shows all files in the directories including hidden files (e.g. .git file when initializing using git init) (a for all).
# ls -l: Returns more information about the files (i.e. l for long).
# ls -t: Shows files in chronological order.
# ls -r: Reverses the order of how files are shown.
# ls -lart: Shows more information for all files in reverse chronological order.

# # ##Advanced Unix: Getting Help and Pipes (Video)
# Textbook link
# This video corresponds to the textbook sections on getting help in Unix(https://rafalab.github.io/dsbook/unix.html#getting-help) and pipes in Unix  (https://rafalab.github.io/dsbook/unix.html#pipes).
# Key Points
# Getting Help: Use man + command name to get help (e.g. man ls). Note that it is not available for Git Bash. For Git Bash, you can use command -- help (e.g. ls --help).
# Pipes: Pipes the results of a command to the command after the pipe. Similar to the pipe %>% in R. For example, man ls | less (and its equivalent in Git Bash: ls --help | less). Also useful when listing files with many files (e.g ls -lart | less).

# ##Advanced Unix: Wild cards (Video)
# 
# Textbook link
# This video corresponds to the textbook section on wild cards in Unix:https://rafalab.github.io/dsbook/unix.html#wild-cards
# Key points
# * means any number of any combination of characters. Specifically, to list all html files: ls *.html and to remove all html files in a directory: rm *.html.
# ? means any single character. For example, to erase all files in the  form file-001.html with the numbers going from 1 to 999: rm file-???.html.
# Combined wild cards: rm file-001.* to remove all files of the name file-001 regardless of suffix.
# Warning: Combining rm with the * wild card can be dangerous. There are combinations of these commands that will erase your entire file system without asking you for confirmation. Make sure you understand how it works before using this wild card with the rm command.

# Advanced Unix: Environment Variables and Shells
# Textbook link
# This video corresponds to the textbook section on Environment Variables(https://rafalab.github.io/dsbook/unix.html#environment-variables) and Shells (https://rafalab.github.io/dsbook/unix.html#shells).
# Key points
# In Unix, variables are distinguished from other entities by adding a $ in front. For example, the home directory is stored in $HOME.
# See home directory: echo $HOME
# See them all: env   
# See what shell is being used: echo $SHELL (most common shell is bash)


# # ##Advanced Unix: Executables, Permissions, and File Types (Video)
# Textbook links
# This video corresponds to the textbook section on Executables (https://rafalab.github.io/dsbook/unix.html#executables) and Permissions and File Types (https://rafalab.github.io/dsbook/unix.html#permissions-and-file-types).
# Key points
# In Unix, all programs are files. They are called executables. So, ls, mv, and git are all files.
# To find where these program files are, use which. For example, which git would return /usr/bin/git.
# Type ls /usr/bin to see several executable files. There are other directories that hold program files (e.g. Application directory for Mac or Program Files directory in Windows).
# Type echo $PATH to see a list of directories separated by ":".
# Type the full path to run the user-created executables (e.g ./my-ls).
# Regular file -, directory d, executable x. 
# This string also indicates the permission of the file: is it readable? writable? executable? Can other users on the system read the file? Can other users on the system edit the file? Can other users execute if the file is executable?


# ##Advanced Unix: Commands You Should Learn (Video)
# Textbook link
# This video corresponds to the textbook section Commands You Should Learn: https://rafalab.github.io/dsbook/unix.html#commands-you-should-learn
# Key points
# Be aware of common commands and know what they do.
# open/start - On the mac open filename tries to figure out the right application of the filename and open it with that application. This is a very useful command. On Git Bash, you can try start filename. Try opening an R or Rmd file with open or start: it should open with RStudio.
# nano - A bare-bones text editor.
# ln - create a symbolic link. We do not recommend its use, but you should be familiar with it.
# tar - archive files and subdirectories of a directory into one file.
# ssh - connect to another computer.
# grep - search for patterns in a file.
# awk/sed - These are two very powerful commands that permit you to find specific strings in files and change them.
# Change environmental variables: (Don't actually run this command though!) export PATH = /usr/bin/
####file management from within R
?files # in R 
file.create(..., showWarnings = TRUE)
file.exists(...)
file.remove(...)
file.rename(from, to)
file.append(file1, file2)
file.copy(from, to, overwrite = recursive, recursive = FALSE,
          copy.mode = TRUE, copy.date = FALSE)
file.symlink(from, to)
file.link(from, to)
Sys.junction(from, to)

# although not recommended, know that you can also
# run Unix commands from within R. And for this, you use the function "system."