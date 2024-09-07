#!/bin/bash

g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

echo "Installing packages. Please wait..."
cd

# Update and upgrade packages
apt-get update
apt-get upgrade -y

# Install git
echo -e $b">"$w" installing modules: "$g"git"$w
apt-get install -y git

# Install Python 3 and pip3
echo -e $b">"$w" installing modules: "$g"python3"$w
apt-get install -y python3
apt-get install -y python3-pip

# Install required Python packages
echo -e $b">"$w" installing modules: "$g"requests"$w
pip3 install requests

echo -e $b">"$w" installing modules: "$g"bs4"$w
pip3 install bs4

# Make the Free-Proxy script executable and navigate to the directory
chmod +x Free-Proxy
cd Free-Proxy

echo "Setup for Termux successful."

# ASCII art and final messages
echo "██████╗░░█████╗░███╗░░██╗███████╗"
echo "██╔══██╗██╔══██╗████╗░██║██╔════╝"
echo "██║░░██║██║░░██║██╔██╗██║█████╗░░"
echo "██║░░██║██║░░██║██║╚████║██╔══╝░░"
echo "██████╔╝╚█████╔╝██║░╚███║███████╗"
echo "╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝"
echo "Forked by noahdossan"
echo "Update on:"
echo "Run command: bash FreeProxy.sh"
