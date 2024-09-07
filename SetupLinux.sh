#!/bin/bash

echo "Installing packages. Please wait..."
echo "Installing for Linux..."
echo "2"

cd

sudo apt-get update
sudo apt-get upgrade -y

# Install git
sudo apt-get install -y git 
echo "Installed git."

# Install Python 3 and pip for Python 3
sudo apt-get install -y python3 python3-pip
echo "Installed Python 3 and pip."

# Install required Python packages
pip3 install requests
pip3 install bs4

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
