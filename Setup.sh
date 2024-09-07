clear
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
echo Installing packages. Please wait...
cd
apt-get update
apt-get upgrade
echo -e $b">"$w" installing modules: "$g"git"$w
apt-get install git
echo -e $b">"$w" installing modules: "$g"python2"$w
apt-get install python
apt-get install python2
echo -e $b">"$w" installing modules: "$g"requests"$w
pkg install pip
pip2 install requests
echo -e $b">"$w" installing modules: "$g"bs4"$w
pip2 install bs4
chmod +x Free-Proxy
cd Free-Proxy
echo Setup for termux successful.
echo ██████╗░░█████╗░███╗░░██╗███████╗
echo ██╔══██╗██╔══██╗████╗░██║██╔════╝
echo ██║░░██║██║░░██║██╔██╗██║█████╗░░
echo ██║░░██║██║░░██║██║╚████║██╔══╝░░
echo ██████╔╝╚█████╔╝██║░╚███║███████╗
echo ╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝
echo Forked by noahdossan
echo Update on:
echo Run command: bash FreeProxy.sh
