#!/bin/bash

# Color codes for output
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

echo "Installing packages. Please wait..."
echo "Installing for Termux..."

# Ensure correct mirror is selected
# termux-change-repo

# Update and upgrade the system using apt-get
echo -e $b">"$w" Updating and upgrading the system"
apt-get update -y && apt-get upgrade -y
apt-get install lolcat
pkg install ruby
gem install lolcat
pkg install lolcat

# Install git
echo -e $b">"$w" Installing modules: "$g"git"$w
apt-get install -y git

# Install Python and Pip
echo -e $b">"$w" Installing modules: "$g"python and pip"$w
apt-get install -y python python-pip

# Install virtualenv
echo -e $b">"$w" Installing module: "$g"virtualenv"$w
pip install virtualenv

# Create a virtual environment in the current directory
echo -e $b">"$w" Creating a virtual environment"
virtualenv myenv

# Activate the virtual environment
echo -e $b">"$w" Activating the virtual environment"
source myenv/bin/activate

# Install necessary Python packages within the virtual environment
echo -e $b">"$w" Installing modules: "$g"requests and bs4"$w
pip install requests bs4

# Ensure the src directory exists and navigate to it
if [ -d "src" ]; then
    cd src
else
    echo -e $r"Error: 'src' directory not found!"$w
    exit 1
fi

# Make Free-Proxy.sh executable and run it
chmod +x Free-Proxy.sh
echo -e $b">"$w" Running Free-Proxy.sh"
bash Free-Proxy.sh

# Run the Python script
echo -e $b">"$w" Running menu.py"
python menu.py

# Deactivate the virtual environment after execution
deactivate

echo -e $g"Thank you for using the FreeProxyX utility."$w
