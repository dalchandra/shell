#!/bin/bash
sudo apt-get install git -y
git init
git add README.md
git commit -m "Initialized"
git branch -M main
git remote add origin https://github.com/dalchandra/shell.git
git push -u origin main
