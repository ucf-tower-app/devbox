#!/bin/bash

# Prompt the user to login with gh-cli
echo Configuring git...
gh auth login

# Setup identity
echo Enter full name: 
read full_name
echo Enter email: 
read email

git config --global user.name $full_name
git config --global user.email $email

# Clone the code
echo Cloning source...
gh repo clone ucf-tower-app/web /root/workspace/web
gh repo clone ucf-tower-app/mobile /root/workspace/mobile
gh repo clone ucf-tower-app/xplat /root/workspace/xplat

# Install dependencies
echo Installing dependencies...
cd /root/workspace/web
npm install

cd /root/workspace/mobile
npm install

echo Done!
