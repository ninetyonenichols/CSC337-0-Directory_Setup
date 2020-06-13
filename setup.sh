#!/bin/bash

# creates the basic files / directories needed for a CSC337 (Web Development)
# 	 project

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

cat>>index.html<<EOF
<!--
$header
-->
EOF

cat>>css/style.css<<EOF
/*
$header
*/
EOF

cat>>README.md<<EOF
$header
EOF

# Git 
git init
git add .
git commit -m "Created placeholder files / directories."
