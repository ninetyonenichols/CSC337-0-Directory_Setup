#!/bin/bash

# creates the basic files / directories needed for a CSC337 (Web Development)
# 	 project

# Adds headers to new files
add_header() {
cat>>$1<<EOF
$2
$3
$4
EOF
}

webdev=..
project=$1
pd="$webdev/$project"

# Making directories
mkdir $pd "$pd/public_html"
cd "$pd/public_html"
mkdir img css js

# Initializing files 
read -rd '' header << 'EOF'
Author: Justin Nichols
Class: CSC337 (Web Development)
Purpose:
EOF

add_header index.html "<!--" "$header" "-->"
add_header css/style.css "/*" "$header" "*/"
add_header README.md "" "$header" ""

# Git 
git init
git add .
git commit -m "Created placeholder files / directories."
