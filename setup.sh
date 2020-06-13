# creates the basic files / directories needed for a CSC337 (Web Development)
# 	 project

# Moving to webdev folder, which contains all projects
cd ..

# Making directories
mkdir test_project test_project/public_html
cd test_project/public_html
mkdir img css

# Making files
touch README.html index.html

# Git 
git init
git add .
git commit -m "Created placeholder files / directories."
