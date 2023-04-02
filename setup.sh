#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3 doas fortunes-bofh-excuses sl neofetch
neofetch
wget https://raw.githubusercontent.com/r4debox/major-john-linux/main/.bashrc -O ~/.bashrc
source ~/.bashrc
echo "shits ready"
