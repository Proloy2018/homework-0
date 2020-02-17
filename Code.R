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

#Code
install.packages("dslabs")  # to install a single package
install.packages(c("tidyverse", "dslabs")) # to install two packages at the same time
installed.packages() # to see the list of all installed packages

## Keeping Organized with RStudio Projects

# Open my_first_project.RPOJ

##GitHub
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