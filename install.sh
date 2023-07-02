#!/bin/bash

#Install Rosetta Translation
sudo softwareupdate --install-rosetta --agree-to-license

#Download Distribution 
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.10.5-stable.zip

#Unzip zip
unzip flutter_macos_arm64_3.10.5-stable.zip

# Add flutter to path
export PATH="$PATH:`pwd`/flutter/bin"

# Install cocoapods

sudo gem uninstall cocoapods
sudo gem install -n /usr/local/bin cocoapods
cocoapods pod install

