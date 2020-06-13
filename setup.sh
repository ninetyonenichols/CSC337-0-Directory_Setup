# creates the basic files / directories needed for a CSC337 (Web Development)
# 	 project

# Moving to webdev folder, which contains all projects
webdev=..
project=$1
pd="$webdev/$project"

# Making directories
mkdir $pd "$pd/public_html"
cd "$pd/public_html"
mkdir img css js

# Making files
touch README.html index.html

# Git 
git init
git add .
git commit -m "Created placeholder files / directories."
