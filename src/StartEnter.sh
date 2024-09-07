#!/bin/bash

g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

# Check if the virtual environment exists
if [ ! -d "$HOME/myenv" ]; then
    echo -e $r"Error: Virtual environment not found. Please run the setup script first."$w
    exit 1
fi

# Activate the virtual environment
source ~/myenv/bin/activate

# Install lolcat using pip inside the virtual environment
pip install lolcat

# Install lolcat via gem (gem is a Ruby package manager, this is separate from Python)
gem install lolcat

# Clear the terminal
clear

# Run the Free-Proxy script and Python menu inside the activated environment
bash src/Free-Proxy.sh
python3 src/menu.py

# Deactivate the virtual environment after execution
deactivate
