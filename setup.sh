#!/bin/bash

# Update the package list
sudo apt-get update

# Install the desired packages
sudo apt-get install -y python3 doas fortunes-bofh-excuses sl neofetch
neofetch
# Download the .bashrc file
wget https://raw.githubusercontent.com/r4debox/major-john-linux/main/.bashrc -O ~/.bashrc

# Source the new .bashrc file
source ~/.bashrc

# Inform the user that the process is complete
echo "shits ready"