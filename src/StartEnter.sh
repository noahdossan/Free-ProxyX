#!/bin/bash

g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

# Activate the virtual environment (assuming it's created in the setup script at ~/myenv)
source ~/myenv/bin/activate

# Install lolcat using pip inside the virtual environment
pip install lolcat

# Install lolcat via gem (gem is a Ruby package manager, this is separate from Python)
gem install lolcat

# Clear the terminal
clear

# Run the Free-Proxy script and Python menu inside the activated environment
bash Free-Proxy.sh
python3 menu.py

# Deactivate the virtual environment after execution
deactivate
