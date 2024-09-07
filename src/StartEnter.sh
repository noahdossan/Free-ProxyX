#!/bin/bash

g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

# Install lolcat via pip and gem
pip install lolcat
gem install lolcat

# Clear the terminal
clear

# Navigate to the Free-Proxy/src directory
cd ~/Free-Proxy/src

# Run the Free-Proxy script and Python menu
bash Free-Proxy.sh
python3 menu.py
