# Updated for python 3

import requests
import os
import time
import sys

# ANSI color codes
Green = "\033[1;33m"
Blue = "\033[1;34m"
Grey = "\033[1;30m"
Reset = "\033[0m"
Red = "\033[1;31m"
Purple = "\033[0;35m"

# Display menu
print("  # \033[1;34m[ 01 ] >> \033[1;36;40mAll")
print("  # \033[1;34m[ 02 ] >> \033[1;36;40mUSA")
print("  # \033[1;34m[ 03 ] >> \033[1;36;40mRussia")
print("  # \033[1;34m[ 04 ] >> \033[1;36;40mUkraine")
print("  # \033[1;34m[ 05 ] >> \033[1;36;40mIndia")
print("  # \033[1;34m[ 06 ] >> \033[1;36;40mItaly")
print("  # \033[1;34m[ 07 ] >> \033[1;36;40mCanada")
print("  # \033[1;34m[ 08 ] >> \033[1;36;40mFrance")
print("  # \033[1;34m[ 09 ] >> \033[1;36;40mThailand")
print("  # \033[1;34m[ 10 ] >> \033[1;36;40mPoland")
print("  # \033[1;34m[ 11 ] >> \033[1;36;40mNetherlands")
print("  # \033[1;34m[ 12 ] >> \033[1;36;40mMexico")
print("  # \033[1;34m[ 13 ] >> \033[1;36;40mKazakhstan")
print("  # \033[1;34m[ 14 ] >> \033[1;36;40mIran")
print("  # \033[1;34m[ 15 ] >> \033[1;36;40mEgypt")
print("  # \033[1;34m[ 16 ] >> \033[1;36;40mHong Kong")
print("  # \033[1;34m[ 17 ] >> \033[1;36;40mGermany")
print("  # \033[1;34m[ 18 ] >> \033[1;36;40mVietnam")
print("  # \033[1;34m[ 19 ] >> \033[1;36;40mHungary")
print("  # \033[1;34m[ 20 ] >> \033[1;36;40mBrazil")
print("  # \033[1;34m[ 21 ] >> \033[1;36;40mJapan")
print("  # \033[1;34m[ 22 ] >> \033[1;36;40mCambodia")
print("  # \033[1;34m[ 23 ] >> \033[1;36;40mChina")
print("  # \033[1;34m[ 24 ] >> \033[1;36;40mChile")
print('')
print("  # \033[1;34m[ 25 ] >> \033[1;36;40mSSL PROXY")
print("  # \033[1;34m[ 26 ] >> \033[1;36;40mSOCKS4 PROXY")
print("  # \033[1;34m[ 27 ] >> \033[1;36;40mSOCKS5 PROXY")
print("  # \033[1;34m[ 28 ] >> \033[1;36;40mUPDATE UTILITY")
print("  # \033[1;34m[ 29 ] >> \033[1;36;40mEXIT UTILITY")

# Get user input
op = int(input("Options: "))

# Dictionary to map options to URLs
proxy_urls = {
    1: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=750&country=all",
    2: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=750&country=US",
    3: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=RU",
    4: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=UA",
    5: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=IN",
    6: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=IT",
    7: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=CA",
    8: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=FR",
    9: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=TH",
    10: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1000&country=PL",
    11: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=2100&country=NL",
    12: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=MX",
    13: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=KZ",
    14: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=IR",
    15: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=EG",
    16: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=2250&country=HK",
    17: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=DE",
    18: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=VN",
    19: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=HU",
    20: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=BR",
    21: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=JP",
    22: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1500&country=KH",
    23: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=1250&country=CN",
    24: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=2250&country=CL",
    25: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=500&country=all&ssl=all",
    26: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks4&timeout=750&country=all",
    27: "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks5&timeout=750&country=all"
}

if op in proxy_urls:
    proxyDomain = proxy_urls[op]
    system = requests.get(proxyDomain).text
    print(system)
elif op == 28:
    print("Updating tool. Please wait a moment")
    os.system("cd src && bash ProxyUpdater.sh")
elif op == 29:
    print("\033[1;31;40mQuitting Utility...")
    sys.exit()
else:
    print("\033[1;31;40mInvalid input. Quitting...")
    sys.exit()
