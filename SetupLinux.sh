#!/bin/bash

g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

echo "Installing packages. Please wait..."
echo "Installing for Linux..."
echo "2"

# Update and upgrade the system
sudo apt-get update
sudo apt-get upgrade -y

# Install git
echo -e $b">"$w" installing modules: "$g"git"$w
sudo apt-get install -y git

# Install Python 3, venv, and pipx
echo -e $b">"$w" installing modules: "$g"python3 and venv"$w
sudo apt-get install -y python3 python3-venv python3-pip pipx

# Create a virtual environment
echo -e $b">"$w" creating a virtual environment"
python3 -m venv myenv

# Activate the virtual environment
echo -e $b">"$w" activating the virtual environment"
source myenv/bin/activate

# Install necessary Python packages within the virtual environment
echo -e $b">"$w" installing modules: "$g"requests and bs4"$w
pip install requests bs4

# Navigate to the Free-Proxy directory and run the scripts
chmod +x Free-Proxy
cd ~/Free-Proxy/src
bash Free-Proxy.sh
python3 menu.py

# Deactivate the virtual environment after execution
deactivate

echo "Setup for Linux successful."
echo "██████╗░░█████╗░███╗░░██╗███████╗"
echo "██╔══██╗██╔══██╗████╗░██║██╔════╝"
echo "██║░░██║██║░░██║██╔██╗██║█████╗░░"
echo "██║░░██║██║░░██║██║╚████║██╔══╝░░"
echo "██████╔╝╚█████╔╝██║░╚███║███████╗"
echo "╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝"
echo "Forked by noahdossan"
echo "Update on:"
echo "Run command: bash FreeProxy.sh"
