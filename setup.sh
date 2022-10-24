#!/bin/bash

# Clone the code
echo Cloning source...
git clone --recurse-submodules https://github.com/ucf-tower-app/web /root/workspace/web
git clone --recurse-submodules https://github.com/ucf-tower-app/mobile /root/workspace/mobile
git clone https://github.com/ucf-tower-app/xplat /root/workspace/xplat

# Install dependencies
echo Installing dependencies...
cd /root/workspace/web
npm install

cd /root/workspace/mobile
npm install

echo Done!
