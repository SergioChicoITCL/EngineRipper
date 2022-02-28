if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
TERMUX=true
elif [ "$(uname)" = "Darwin" ]; then
MAC=true
else
LINUX=true
fi
trap 'printf "\n";stop;exit 1' 2
main_menu() {
clear
banner
printf "\n\e[1;92m"
printf "[\e[1;96m01\e[1;92m] Show Tools Categories\n"
printf "[\e[1;96m02\e[1;92m] Termux Search Tool\n"
printf "[\e[1;96m03\e[1;92m] About\n"
printf "[\e[1;96m00\e[1;92m] Exit\n"
inputs
if [[ $input == 2 || $input == 02 ]]; then
php src/search.php
main_menu
elif [[ $input == 1 || $input == 01 ]]; then
show_linux_list
elif [[ $input == 3 || $input == 03 ]]; then
about
elif [[ $input == 0 || $input == 00 ]]; then
printf "\n\nGood Bye & Thanks For Using ...\n"
sleep 0.8
printf "\nDon't forget to Join Telegram Group: http://t.me/linux_repo\n\n"
sleep 0.5
exit 1
elif [[ $input == re || $input == RE ]]; then
bash engrip.sh
else
command_not_found
fi
}
banner() {
printf "\n\e[1;92m"
printf " _____             _               ____  _                         \e[1;92m\n"
printf "| ____|_ __   __ _(_)_ __   ___   |  _ \(_)_ __  _ __   ___ _ __   \e[1;92m\n"
printf "|  _| | '_ \ / _' | | '_ \ / _ \  | |_) | | '_ \| '_ \ / _ \ '__|  \e[1;91m\n"
printf "| |___| | | | (_| | | | | |  __/  |  _ <| | |_) | |_) |  __/ |     \e[1;91m\n"
printf "|_____|_| |_|\__, |_|_| |_|\___|  |_| \_\_| .__/| .__/ \___|_|     \e[1;92m\n"
printf "             |___/                        | |   | |                \e[1;92m\n"
printf "                  \e[1;96mCoded by \e[1;95m@AbirHasan2005\e[1;92m |_|   |_|\e[1;92m\n\n"
}
error_handle() {
printf "\n\n\e[1;91mThere was an error!\n\e[1;92mPlease report to Telegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n\n"
}
command_not_found() {
printf "\n\e[1;92m[\e[1;91m!\e[1;92m]\e[1;91m Command Not Found!\n"
sleep 1
main_menu
}
inputs() {
read -p $'\n\e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[1;96m' input
}
about() {
clear
printf "\n\n\e[1;92m"
printf "=========================================\n"
printf "\e[1;95m                  About\e[1;92m\n"
printf "=========================================\n"
printf "\n"
printf "\e[1;94m           Engine Ripper \n"
printf "\e[1;92m           ------------------\n"
printf "\n\e[0m"
printf "This is a collection of best Linux & Termux Tools. We have\n"
printf "currently 50+ tools and we are trying to get 1000+ tools in\n"
printf "this Engine Ripper. If you want to suggest me any tool than\n"
printf "Feel Free to share your tools on my Telegram Group.\n"
printf "\n\e[0;93m"
printf "Here most of tools are collected from GitHub. Thanks to the\n"
printf "tools owners for there tools. If have any problem with any\n"
printf "tool than tell us on my Telegram Group.\n\e[1;92m"
printf "\n"
printf "Coded by \e[1;96m@AbirHasan2005\e[1;92m\n"
printf "Special Thanks to \e[1;93m@Palahsu\e[1;92m\n"
printf "Also Thanks to the tools Members.\n"
printf "\n"
printf "Telegram Group: \e[1;95mhttp://t.me/linux_repo\e[1;92m\n"
printf "GitHub: \e[1;95mhttps://github.com/AbirHasan2005\e[1;92m\n"
printf "GitHub: \e[1;95mhttps://github.com/Palahsu\e[1;92m\n"
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
clear
banner
main_menu
}
do_you_want_to_open_tool() {
printf "\n\nDo you want to open tool & check?"
read -p $'(y/n): \e[1;96m' input_open
}
anonymously_hiding_tools_L() {
clear
printf "\n\e[1;92mAnonymously Hiding Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Anonmously Surf \n"
printf "[\e[1;93m2\e[1;92m] Multitor \n"
printf "[\e[1;93m0\e[1;92m] Back\n"
inputs
if [[ $input == 1 ]]; then
printf "\n\nDownloading kali-anonsurf from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Und3rf10w/kali-anonsurf.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd kali-anonsurf
chmod +x *
./installer.sh
anonsurf status
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
cd ..
anonymously_hiding_tools_L
else
anonymously_hiding_tools_L
fi
elif [[ $input == 2 ]]; then
printf "\n\nDownloading kali-anonsurf from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/trimstray/multitor.git
do_you_want_to_open_tool
if [[ $input == y || $input == Y ]]; then
cd multitor
./setup.sh install
multitor --help
printf "\n\n\e[1;92mThis tool needs TOR, netcat, haproxy, polipo, privoxy & http-proxy-to-socks ...\n\e[1;92m"
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
cd ..
anonymously_hiding_tools_L
else
anonymously_hiding_tools_L
fi
elif [[ $input == 0 ]]; then
show_linux_list
else
command_not_found
fi
}
information_gathering_tools_L() {
clear
printf "\n\e[1;92mInformation Gathering Tools: \n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] LittleBrother \n"
printf "[\e[1;93m2\e[1;92m] OPRecon (Combination of PhoneinFoga & IPGeoLocation) \n"
printf "[\e[1;93m3\e[1;92m] Network Map (nmap) \n"
printf "[\e[1;93m4\e[1;92m] UserRecon (Username recon tool) \n"
printf "[\e[1;93m5\e[1;92m] Dracnmap \n"
printf "[\e[1;93m6\e[1;92m] IPGeoLocation (IP Address info collector) \n"
printf "[\e[1;93m7\e[1;92m] PhoneInFoga (Phone Number info collector) \n"
printf "[\e[1;93m8\e[1;92m] Xerosploit \n"
printf "[\e[1;93m9\e[1;92m] RED HAWK \n"
printf "[\e[1;93m10\e[1;92m] ReconSpider \n"
printf "[\e[1;93m11\e[1;92m] Sherlock \n"
printf "[\e[1;93m12\e[1;92m] Infoga - Email OSINT \n"
printf "[\e[1;93m13\e[1;92m] ReconDog \n"
printf "[\e[1;93m14\e[1;92m] Striker \n"
printf "[\e[1;93m15\e[1;92m] SecretFinder (Like: API) \n"
printf "[\e[1;93m16\e[1;92m] Shodanfy (Find Info Using Shodan) \n"
printf "[\e[1;93m17\e[1;92m] rang3r (Port Scanner) \n"
printf "[\e[1;93m18\e[1;92m] Breacher \n"
printf "[\e[1;93m19\e[1;92m] fsociety \n"
printf "[\e[1;93m20\e[1;92m] Discover \n"
printf "[\e[1;93m21\e[1;92m] Raccoon \n"
printf "[\e[1;93m22\e[1;92m] sandmap \n"
printf "[\e[1;93m23\e[1;92m] OSIF \n"
printf "[\e[1;93m24\e[1;92m] CoronaStats\n"
printf "[\e[1;93m00\e[1;92m] Back \n"
inputs
if [[ $input == 1 ]]; then
printf "\n\nDownloading LittleBrother from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/LittleBrother.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd LittleBrother
if [ "$TERMUX" = true ]; then
pkg install python git wget -y
pip3 install -r requirements.txt
python3 littlebrother.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
pip3 install -r requirements.txt
python3 littlebrother.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
cd ..
press_enter
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 2 ]]; then
printf "\n\nDownloading OPRecon from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/OPRecon.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd OPRecon
if [ "$TERMUX" = true ]; then
pkg install git python wget -y
pip3 install -r requirements.txt
chomd +x run.sh update.sh
bash run.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip git -y
pip3 install -r requirements.txt
chomd +x run.sh update.sh
bash run.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
cd ..
press_enter
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 3 ]]; then
printf "\n\nDownloading & Installing nmap ...\n"
sleep 1.8
if [ "$TERMUX" = true ]; then
pkg install nmap -y
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
elif [ "$LINUX" = true ]; then
sudo apt install nmap -y
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
elif [ "$MAC" = true ]; then
brew install nmap
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
else
printf "\n\n\e[1;91mThere was an error!\n\e[1;92mPlease report to Telegram Group: http://t.me/linux_repo\n\n"
fi
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[0m"
nmap --help
sleep 2
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 4 ]]; then
printf "\n\nDownloading UserRecon from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/UserRecon.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd UserRecon
chomd +x *
bash userrecon.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 5 ]]; then
printf "\n\nDownloading Dracnmap from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Screetsec/Dracnmap.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\n\e[1;91mThis will need root permission ...\n\e[1;92m"
sleep 2
cd Dracnmap
chmod +x Dracnmap.sh
sudo ./Dracnmap.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 6 ]]; then
printf "\n\nDownloading IPGeoLocation from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/maldevel/IPGeoLocation
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd IPGeoLocation
if [ "$TERMUX" = true ]; then
pkg install python git wget -y
pip3 install -r requirements.txt
python3 ip2geolocation.py --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip git -y
pip3 install -r requirements.txt
python3 ip2geolocation.py --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
cd ..
press_enter
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 7 ]]; then
printf "\n\nDownloading PhoneInFoga from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/abhinavkavuri/PhoneInfoga.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\nEnter your phone number in international format ...\n"
read -p $'\n\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[1;93m Enter Number: \e[1;92m' number
printf "\n\e[1;92m This process will take a few moments ...\n\n\e[1;92m"
sleep 2
cd PhoneInfoga
if [ "$TERMUX" = true ]; then
pkg install python -y
mv config.example.py config.py
python3 -m pip install -r requirments.txt
chmod +x *
python3 phoneinfoga.py -n $number
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
mv config.example.py config.py
python3 -m pip install -r requirments.txt
chmod +x *
python3 phoneinfoga.py -n $number
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
press_enter
cd ..
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 8 ]]; then
printf "\n\nDownloading Xerosploit from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/LionSec/xerosploit.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\n\e[1;91mThis will need python2.7 & root permission ...\n\e[1;92m"
sleep 2
if [ "$TERMUX" = true ]; then
pkg install python2 -y
cd xerosploit
sudo python2 install.py
sudo xerosploit
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt-get install python2 -y
cd xerosploit
sudo python2 install.py
sudo xerosploit
cd ..
information_gathering_tools_L
else
printf "\n\n\e[1;91mThere was an error!\n\e[1;92mPlease report to Telegram Group: http://t.me/linux_repo\n\n"
fi
else
information_gathering_tools_L
fi
elif [[ $input == 9 ]]; then
printf "\n\nDownloading RED_HAWK from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Tuhinshubhra/RED_HAWK.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd RED_HAWK
php rhawk.php
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 10 ]]; then
printf "\n\nDownloading ReconSpider from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/bhavsec/reconspider.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
if [ "$TERMUX" = true ]; then
cd reconspider
pkg install python3 -y
sudo python3 setup.py install
python3 reconspider.py
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
cd reconspider
sudo apt install python3 python3-pip -y
sudo python3 setup.py install
python3 reconspider.py
cd ..
information_gathering_tools_L
else
error_handle
fi
else
information_gathering_tools_L
fi
elif [[ $input == 11 ]]; then
printf "\n\nDownloading Sherlock from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/sherlock-project/sherlock.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
if [ "$TERMUX" = true ]; then
cd sherlock
pkg install python3 -y
pip3 install -r requirements.txt
python3 sherlock --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
cd sherlock
sudo apt install python3 python3-pip -y
python3 -m pip install -r requirements.txt
python3 sherlock --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
fi
else
information_gathering_tools_L
fi
elif [[ $input == 12 ]]; then
printf "\n\nDownloading Infoga from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/m4ll0k/Infoga.git infoga
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd infoga
if [ "$TERMUX" = true ]; then
pkg install python2 -y
python2 setup.py install
python2 infoga.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python2 python2-pip -y
python2 setup.py install
python2 infoga.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
cd ..
press_enter
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 13 ]]; then
printf "\n\nDownloading ReconDog from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/s0md3v/ReconDog
printf "\n\n\e[1;92mFile Saved to \e[1;94m"
pwd
printf "\n\e[1;92mPlease install setup manually!\n"
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
elif [[ $input == 14 ]]; then
printf "\n\nDownloading Striker from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/s0md3v/Striker
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd Striker
if [ "$TERMUX" = true ]; then
pkg install python -y
pip3 install -r requirements.txt
python3 striker.py -h
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
pip3 install -r requirements.txt
python3 striker.py -h
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
error_handle
cd ..
press_enter
information_gathering_tools_L
fi
else
information_gathering_tools_L
fi
elif [[ $input == 15 ]]; then
printf "\n\nDownloading SecretFinder from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/m4ll0k/SecretFinder
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd SecretFinder
python3 -m pip install -r requirements.txt
python3 SecretFinder.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 16 ]]; then
printf "\n\nDownloading SecretFinder from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/m4ll0k/Shodanfy.py Shodanfy
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd Shodanfy
python3 shodanfy.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 17 ]]; then
printf "\n\nDownloading rang3r from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/floriankunushevci/rang3r
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
read -p $'\n\e[1;92mEnter IP Address: ' input_ip
cd rang3r
python rang3r.py --ip $input_ip
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 18 ]]; then
printf "\n\nDownloading Breacher from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/s0md3v/Breacher
printf "\n\n\e[1;92mFile Saved to \e[1;94m"
pwd
printf "\n\e[1;92mPlease install setup manually!\n"
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
elif [[ $input == 19 ]]; then
printf "\n\nDownloading fsociety from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/fsociety
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd fsociety
bash install.sh
fsociety
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 20 ]]; then
printf "\n\nDownloading /opt/discover/ from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone git clone https://github.com/leebaird/discover /opt/discover/
printf "\n\n\e[1;92mFile saved as \e[1;94m/opt/discover\e[1;92m!\nPlease use it manually!\n"
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
elif [[ $input == 21 ]]; then
printf "\n\nDownloading Reccoon from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/evyatarmeged/Raccoon
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd Raccoon
python3 setup.py install
raccoon --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 22 ]]; then
printf "\n\nDownloading sandmap from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/trimstray/sandmap
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
chmod +x sandmap/setup.sh
cd sandmap
./setup.sh install
sandmap
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 23 ]]; then
printf "\n\nDownloading OSIF from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/ciku370/OSIF
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
pip2 install -r OSIF/requirements.txt
python2 OSIF/osif.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
else
information_gathering_tools_L
fi
elif [[ $input == 24 ]]; then
printf "\n\nDownloading CoronaStats from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/CoronaStats.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
if [ "$TERMUX" = true ]; then
pkg install php curl git wget -y
bash CoronaStats/coronastats.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install php curl git wget -y
bash CoronaStats/coronastats.sh
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
information_gathering_tools_L
else
error_handle
fi
else
information_gathering_tools_L
fi
else
command_not_found
fi
}
wordlist_generators_L() {
clear
printf "\n\e[1;92mWordlist Generators:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Cupp\n"
printf "[\e[1;93m2\e[1;92m] WordlistCreator\n"
printf "[\e[1;93m3\e[1;92m] Goblin WordGenerator\n"
printf "[\e[1;93m4\e[1;92m] SMWYG-Show-Me-What-You-Got {Password list (1.4 Billion Clear Text Password)}\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 1 || $input == 01 ]]; then
if [ "$TERMUX" = true ]; then
pkg install python -y
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
else
error_handle
press_enter
wordlist_generators_L
fi
printf "\n\nDownloading cupp from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Mebus/cupp
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd cupp
python3 cupp.py -h
press_enter
cd ..
wordlist_generators_L
else
wordlist_generators_L
fi
elif [[ $input == 2 || $input == 02 ]]; then
if [ "$TERMUX" = true ]; then
pkg install python -y
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
else
error_handle
press_enter
wordlist_generators_L
fi
printf "\n\nDownloading Wordlist-Generator from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/G0uth4m/Wordlist-Generator
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd Wordlist-Generator
python3 wordGenerator.py
press_enter
cd ..
wordlist_generators_L
else
wordlist_generators_L
fi
elif [[ $input == 3 || $input == 03 ]]; then
if [ "$TERMUX" = true ]; then
pkg install python -y
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
else
error_handle
press_enter
wordlist_generators_L
fi
printf "\n\nDownloading GoblinWordGenerator from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/UndeadSec/GoblinWordGenerator
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd GoblinWordGenerator
python3 goblin.py
press_enter
cd ..
wordlist_generators_L
else
wordlist_generators_L
fi
elif [[ $input == 4 || $input == 04 ]]; then
if [ "$TERMUX" = true ]; then
pkg install python -y
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
else
error_handle
press_enter
wordlist_generators_L
fi
printf "\n\nDownloading SMWYG-Show-Me-What-You-Got from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Viralmaniar/SMWYG-Show-Me-What-You-Got
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd SMWYG-Show-Me-What-You-Got
pip3 install -r requirements.txt
python3 SMWYG.py
press_enter
cd ..
wordlist_generators_L
else
wordlist_generators_L
fi
else
command_not_found
fi
}
wireless_attack_tools_L() {
clear
printf "\n\e[1;92mWireless attack tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] WiFi-Pumpkin\n"
printf "[\e[1;93m2\e[1;92m] pixiewps\n"
printf "[\e[1;93m3\e[1;92m] Bluetooth Honeypot GUI Framework\n"
printf "[\e[1;93m4\e[1;92m] Fluxion\n"
printf "[\e[1;93m5\e[1;92m] Wifiphisher\n"
printf "[\e[1;93m6\e[1;92m] Wifite\n"
printf "[\e[1;93m7\e[1;92m] Wifite2\n"
printf "[\e[1;93m8\e[1;92m] EvilTwin\n"
printf "[\e[1;93m9\e[1;92m] Fastssh\n"
printf "[\e[1;93m10\e[1;92m] aircrack-ng\n"
printf "[\e[1;93m11\e[1;92m] kismet\n"
printf "[\e[1;93m12\e[1;92m] mdk3\n"
printf "[\e[1;93m13\e[1;92m] mfoc\n"
printf "[\e[1;93m14\e[1;92m] reaver\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 1 || $input == 01 ]]; then
printf "\n\nDownloading WiFi-Pumpkin from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/P0cL4bs/WiFi-Pumpkin.git
cd WiFi-Pumpkin
chmod +x installer.sh
./installer.sh --install
cd ..
press_enter
wireless_attack_tools_L
elif [[ $input == 2 || $input == 02 ]]; then
if [ "$TERMUX" = true ]; then
pkg install build-essential -y
elif [ "$LINUX" = true ]; then
sudo apt install build-essential -y
else
error_handle
press_enter
wireless_attack_tools_L
fi
printf "\n\nDownloading pixiewps from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/wiire/pixiewps
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd pixiewps
make
sudo make install
pixiewps -h
press_enter
cd ..
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 3 || $input == 03 ]]; then
wget https://github.com/andrewmichaelsmith/bluepot/raw/master/bin/bluepot-0.1.tar.gz
tar xfz bluepot-0.1.tar.gz
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
sudo java -jar bluepot/BluePot-0.1.jar
press_enter
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 4 || $input == 04 ]]; then
git clone https://www.github.com/FluxionNetwork/fluxion.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd fluxion
./fluxion.sh
press_enter
cd ..
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 5 || $input == 05 ]]; then
git clone https://github.com/wifiphisher/wifiphisher.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd wifiphisher
if [ "$TERMUX" = true ]; then
pkg install python -y
sudo python3 setup.py install
elif [[ "$LINUX" = true ]]; then
sudo apt install python3 python3-pip -y
sudo python3 setup.py install
else
error_handle
cd ..
press_enter
wireless_attack_tools_L
fi
wifiphisher
press_enter
cd ..
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 6 || $input == 06 ]]; then
wget https://raw.github.com/derv82/wifite/master/wifite.py
chmod +x wifite.py
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
if [ "TERMUX" = true ]; then
pkg install python2 -y
./wifite.py
press_enter
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python2 -y
press_enter
wireless_attack_tools_L
./wifite.py
else
error_handle
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 7 || $input == 07 ]]; then
git clone https://github.com/derv82/wifite2.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd wifite2
if [ "$TERMUX" = true ]; then
pkg install python tsu -y
sudo python3 setup.py install
cd ..
wifite
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
sudo python3 setup.py install
cd ..
wifite
wireless_attack_tools_L
else
error_handle
cd ..
press_enter
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 8 || $input == 08 ]]; then
git clone https://github.com/ShlomiRex/WiFi-EvilTwin
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd WiFi-EvilTwin
if [ "$TERMUX" = true ]; then
printf "\n\n\e[1;91mSorry, This tool is not for Termux!\n\e[1;92m"
press_enter
cd ..
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
chmod +x *
./setup.sh
python3 console.py
press_enter
cd ..
wireless_attack_tools_L
else
error_handle
cd ..
press_enter
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 9 || $input == 09 ]]; then
git clone https://github.com/thelinuxchoice/fastssh
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd fastssh
if [ "$TERMUX" = true ]; then
apt-get install -y sshpass netcat
chmod +x fastssh.sh
./fastssh.sh
press_enter
cd ..
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt-get install -y sshpass netcat
chmod +x fastssh.sh
./fastssh.sh
press_enter
cd ..
wireless_attack_tools_L
else
error_handle
cd ..
press_enter
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 10 ]]; then
if [ "$TERMUX" = true ]; then
pkg install aircrack-ng -y
elif [ "$LINUX" = true ]; then
sudo apt install aircrack-ng -y
else
error_handle
press_enter
wireless_attack_tools_L
fi
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
aircrack-ng -h
press_enter
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 11 ]]; then
if [ "$TERMUX" = true ]; then
apt install kismet -y
elif [ "$LINUX" = true ]; then
sudo apt install kismet -y
else
error_handle
press_enter
wireless_attack_tools_L
fi
do_you_want_to_open_tool
if [[ $input_open == y || $input_open ]]; then
kismet -h
press_enter
wireless_attack_tools_L
else
wireless_attack_tools_L
fi
elif [[ $input == 12 ]]; then
git clone https://github.com/aircrack-ng/mdk4
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd mdk4
if [ "$TERMUX" = true ]; then
pkg install pkg-config libnl-3-dev libnl-genl-3-dev libpcap-dev -y
make
make install
mdk4 --fullhelp
elif [ "$LINUX" = true ]; then
sudo apt-get install pkg-config libnl-3-dev libnl-genl-3-dev libpcap-dev -y
make
sudo make install
mdk4 --fullhelp
else
error_handle
press_enter
cd ..
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 13 ]]; then
git clone https://github.com/nfc-tools/mfoc
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd mfoc
if [ "$TERMUX" = true ]; then
autoreconf -is
./configure
make && make install
press_enter
cd ..
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
autoreconf -is
./configure
make && sudo make install
press_enter
cd ..
wireless_attack_tools_L
else
error_handle
press_enter
cd ..
wireless_attack_tools_L
fi
else
wireless_attack_tools_L
fi
elif [[ $input == 14 ]]; then
if [ "$TERMUX" = true ]; then
pkg install reaver -y
reaver -h
press_enter
wireless_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install reaver -y
reaver -h
press_enter
wireless_attack_tools_L
else
error_handle
press_enter
wireless_attack_tools_L
fi
else
command_not_found
fi
}
sql_injection_tools_L() {
clear
printf "\n\e[1;92mSQL Injection Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Sqlmap tool\n"
printf "[\e[1;93m2\e[1;92m] NoSqlMap\n"
printf "[\e[1;93m3\e[1;92m] DSSS (Damn Small SQLi Scanner)\n"
printf "[\e[1;93m4\e[1;92m] Explo\n"
printf "[\e[1;93m5\e[1;92m] Blisqy - Exploit Time-based blind-SQL injection\n"
printf "[\e[1;93m6\e[1;92m] Leviathan - Wide Range Mass Audit Toolkit\n"
printf "[\e[1;93m7\e[1;92m] SQLScan\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
phishing_attack_tools_L() {
clear
printf "\n\e[1;92mPhishing attack tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Setoolkit\n"
printf "[\e[1;93m2\e[1;92m] SocialFish\n"
printf "[\e[1;93m3\e[1;92m] ShellPhish\n"
printf "[\e[1;93m4\e[1;92m] HiddenEye\n"
printf "[\e[1;93m5\e[1;92m] Zphisher\n"
printf "[\e[1;93m6\e[1;92m] Evilginx2\n"
printf "[\e[1;93m7\e[1;92m] I-See_You (Get Location using phishing attack)\n"
printf "[\e[1;93m8\e[1;92m] SayCheese (Grab target's Webcam Shots)\n"
printf "[\e[1;93m9\e[1;92m] ohmyqr (QR Code Jacking)\n"
printf "[\e[1;93m10\e[1;92m] BlackPhish\n"
printf "[\e[1;93m11\e[1;92m] Phishing.Database\n"
printf "[\e[1;93m12\e[1;92m] PhishingKitHunter\n"
printf "[\e[1;93m13\e[1;92m] Recreator-Phishing\n"
printf "[\e[1;93m14\e[1;92m] Nexphisher\n"
printf "[\e[1;93m15\e[1;92m] Advphishing\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
web_attack_tools_L() {
clear
printf "\n\e[1;92mWeb Attack Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Web2Attack\n"
printf "[\e[1;93m2\e[1;92m] Sublist3r (SubDomain Finder)\n"
printf "[\e[1;93m3\e[1;92m] CheckURL\n"
printf "[\e[1;93m4\e[1;92m] Blazy(Also Find ClickJacking)\n"
printf "[\e[1;93m5\e[1;92m] takeover (Sub-Domain TakeOver)\n"
printf "[\e[1;93m6\e[1;92m] Dirb\n"
printf "[\e[1;93m7\e[1;92m] pixload (Web Attack Payload)\n"
printf "[\e[1;93m8\e[1;92m] payloads (Web Attack Payloads)\n"
printf "[\e[1;93m9\e[1;92m] TelegramScraper (Telegram Members Scrapping Tool)\n"
printf "[\e[1;93m10\e[1;92m] Visify (Auto Web Page Visiting Tool, For Termux Only)\n"
printf "[\e[1;93m11\e[1;92m] YouTube_Views_Bot\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 9 ]]; then
printf "\n\nDownloading TelegramScraper from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/TelegramScraper
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
if [ "$TERMUX" = true ]; then
pkg install python -y
cd TelegramScraper
python3 setup.py
python3 scraper.py
python3 adder.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
web_attack_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3
cd TelegramScraper
python3 setup.py
python3 scraper.py
python3 adder.py
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
web_attack_tools_L
else
error_handle
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
web_attack_tools_L
fi
else
web_attack_tools_L
fi
elif [[ $input == 10 ]]; then
printf "\n\nDownloading Visify from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/Visify
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
if [ "$TERMUX" = true ]; then
cd Visify
pkg install php -y
php visify.php
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
web_attack_tools_L
elif [[ "$LINUX" = true ]]; then
printf "\n\n\e[1;91mSorry, This tool is not for Linux OS\n\e[1;92m"
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
web_attack_tools_L
else
error_handle
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
web_attack_tools_L
fi
else
web_attack_tools_L
fi
elif [[ $input == 11 ]]; then
printf "\n\nDownloading YouTube_Views_Bot from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/YouTube_Views_Bot
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\n\e[1;91mWarnning!\n\e[1;92mThis tool will not work in sock proxy!\n\nPlease wait ...\n"
sleep 8
cd YouTube_Views_Bot
bash setup.sh
python3 bot.py --help
read -p $'\n\n\e[1;92mClick ENTER to continue to Engine Ripper ... ' click_enter
cd ..
web_attack_tools_L
else
web_attack_tools_L
fi
else
command_not_found
fi
}
post_exploitation_tools_L() {
clear
printf "\n\e[1;92mPost exploitation tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Vegile - Ghost In The Shell\n"
printf "[\e[1;93m2\e[1;92m] HeraKeylogger (Vegile - Ghost In The Shell)\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
forensic_tools_L() {
clear
printf "\n\e[1;92mForensic tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Bulk extractor\n"
printf "[\e[1;93m2\e[1;92m] urlRecon\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
payload_creation_tools_L() {
clear
printf "\n\e[1;92mPayload creation tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] The FatRat\n"
printf "[\e[1;93m2\e[1;92m] Brutal\n"
printf "[\e[1;93m3\e[1;92m] Stitch\n"
printf "[\e[1;93m4\e[1;92m] msfpc (MSFvenom Payload Creator)\n"
printf "[\e[1;93m5\e[1;92m] venom (Venom Shellcode Generator)\n"
printf "[\e[1;93m6\e[1;92m] Spycam\n"
printf "[\e[1;93m7\e[1;92m] Mob-Droid\n"
printf "[\e[1;93m8\e[1;92m] Enigma\n"
printf "[\e[1;93m9\e[1;92m] Iscript\n"
printf "[\e[1;93m10\e[1;92m] ehtools\n"
printf "[\e[1;93m11\e[1;92m] KitHack\n"
printf "[\e[1;93m12\e[1;92m] XSS-LOADER\n"
printf "[\e[1;93m13\e[1;92m] BackToMe\n"
printf "[\e[1;93m14\e[1;92m] MetaSploit Framework\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
exploit_framework_L() {
clear
printf "\n\e[1;92mExploit frameworks:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] RouterSploit\n"
printf "[\e[1;93m2\e[1;92m] WebSploit\n"
printf "[\e[1;93m3\e[1;92m] Commix\n"
printf "[\e[1;93m4\e[1;92m] ghost\n"
printf "[\e[1;93m5\e[1;92m] Exploit-Framework\n"
printf "[\e[1;93m6\e[1;92m] Tentacle\n"
printf "[\e[1;93m7\e[1;92m] beef\n"
printf "[\e[1;93m8\e[1;92m] MetaSploit Framework\n"
printf "[\e[1;93m9\e[1;92m] searchsploit\n"
printf "[\e[1;93m0\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 1 ]]; then
printf "\n\nDownloading RouterSploit from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/threat9/routersploit
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd routersploit
if [ "$TERMUX" = true ]; then
pkg install python libglib2.0-dev -y
python3 -m pip install -r requirements.txt
python3 -m pip install bluepy
python3 rsf.py
press_enter
cd ..
exploit_framework_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip libglib2.0-dev -y
python3 -m pip install -r requirements.txt
python3 -m pip install bluepy
python3 rsf.py
press_enter
cd ..
exploit_framework_L
else
error_handle
cd ..
press_enter
fi
else
exploit_framework_L
fi
elif [[ $input == 2 ]]; then
printf "\n\nDownloading WebSploit from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/websploit/websploit.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd websploit
if [ "$TERMUX" = true ]; then
pkg install python git wget -y
python3 setup.py install
websploit
press_enter
cd ..
exploit_framework_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip git wget -y
python3 setup.py install
websploit
press_enter
cd ..
exploit_framework_L
else
error_handle
cd ..
press_enter
exploit_framework_L
fi
else
exploit_framework_L
fi
elif [[ $input == 3 ]]; then
printf "\n\nDownloading Commix from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/commixproject/commix
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd commix
if [ "$TERMUX" = true ]; then
pkg install python git -y
python3 setup.py
python commix.py -h
press_enter
cd ..
exploit_framework_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip git -y
python3 setup.py
python commix.py -h
press_enter
cd ..
exploit_framework_L
else
error_handle
press_enter
cd ..
exploit_framework_L
fi
else
exploit_framework_L
fi
elif [[ $input == 4 ]]; then
printf "\n\nDownloading Ghost from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/EntySec/ghost
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd ghost
chmod +x install.sh
./install.sh
press_enter
cd ..
exploit_framework_L
else
exploit_framework_L
fi
elif [[ $input == 5 ]]; then
printf "\n\nDownloading Exploit-Framework from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/WangYihang/Exploit-Framework
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd Exploit-Framework
if [ "$TERMUX" = true ]; then
pkg install python -y
python3 framework.py
cd ..
press_enter
exploit_framework_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 -y
python3 framework.py
cd ..
press_enter
exploit_framework_L
else
error_handle
press_enter
cd ..
exploit_framework_L
fi
else
exploit_framework_L
fi
elif [[ $input == 6 ]]; then
printf "\n\nDownloading Tentacle from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/mdiep/Tentacle
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
printf "\n\e[1;92mPlease setup your tool manually !!\n"
printf "I can't help you with that.\n"
else
exploit_framework_L
fi
elif [[ $input == 7 ]]; then
printf "\n\nDownloading beef from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/beefproject/beef
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
printf "\n\e[1;92mPlease setup your tool manually !!\n"
printf "I can't help you with that.\n"
else
exploit_framework_L
fi
elif [[ $input == 8 ]]; then
printf "\n\nDownloading metasploit-framework from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/rapid7/metasploit-framework
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
printf "\n\e[1;92mPlease setup your tool manually !!\n"
printf "I can't help you with that.\n"
else
exploit_framework_L
fi
elif [[ $input == 9 ]]; then
printf "\n\nDownloading CVE SearchSploit from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/andreafioraldi/cve_searchsploit
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[1;92mChecking ...\n"
sleep 1
cd cve_searchsploit
if [ "$TERMUX" = true ]; then
pkg install python -y
pip3 install cve_searchsploit
python3 setup.py install
cve_searchsploit
press_enter
cd ..
exploit_framework_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
pip3 install cve_searchsploit
python3 setup.py install
cve_searchsploit
press_enter
cd ..
exploit_framework_L
else
error_handle
cd ..
press_enter
exploit_framework_L
fi
else
exploit_framework_L
fi
else
command_not_found
fi
}
reverse_engineering_tools_L() {
clear
printf "\n\e[1;92mReverse engineering tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Androguard\n"
printf "[\e[1;93m2\e[1;92m] Apk2Gold\n"
printf "[\e[1;93m3\e[1;92m] JadX\n"
printf "[\e[1;93m4\e[1;92m] Apktool\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
ddos_attack_tools_L() {
clear
printf "\n\e[1;92mDDOS Attack Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] aSYNcrone (Multifunction SYN Flood DDoS Weapon)\n"
printf "[\e[1;93m2\e[1;92m] UFOnet\n"
printf "[\e[1;93m3\e[1;92m] GoldenEye\n"
printf "[\e[1;93m4\e[1;92m] CC-attack\n"
printf "[\e[1;93m5\e[1;92m] DDos-Attack-OVH-\n"
printf "[\e[1;93m6\e[1;92m] Raven-Strom\n"
printf "[\e[1;93m7\e[1;92m] Overload-DoS\n"
printf "[\e[1;93m8\e[1;92m] webdos-ddoser\n"
printf "[\e[1;93m9\e[1;92m] pyDDoS\n"
printf "[\e[1;93m10\e[1;92m] Bluebook\n"
printf "[\e[1;93m11\e[1;92m] ddos-hammer\n"
printf "[\e[1;93m12\e[1;92m] DDos-Scripts\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
remote_administrator_tools_L() {
clear
printf "\n\e[1;92mRemote Administrator Tools (RAT):\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Stitch\n"
printf "[\e[1;93m2\e[1;92m] Pyshell\n"
printf "[\e[1;93m3\e[1;92m] pupy\n"
printf "[\e[1;93m4\e[1;92m] Stitch\n"
printf "[\e[1;93m5\e[1;92m] EvilOSX\n"
printf "[\e[1;93m6\e[1;92m] PowerShell-RAT\n"
printf "[\e[1;93m7\e[1;92m] RAT-via-Telegram\n"
printf "[\e[1;93m8\e[1;92m] Python-Rootkit\n"
printf "[\e[1;93m9\e[1;92m] AndroRAT\n"
printf "[\e[1;93m10\e[1;92m] poet\n"
printf "[\e[1;93m11\e[1;92m] paradoxia\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
xss_attack_tools_L() {
clear
printf "\n\e[1;92mXSS Attack Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] DalFox(Finder of XSS)\n"
printf "[\e[1;93m2\e[1;92m] XSS-LOADER\n"
printf "[\e[1;93m3\e[1;92m] extended-xss-search (Extended XSS Searcher and Finder)\n"
printf "[\e[1;93m4\e[1;92m] XSS-Freak\n"
printf "[\e[1;93m5\e[1;92m] XSpear\n"
printf "[\e[1;93m6\e[1;92m] XSSCon\n"
printf "[\e[1;93m7\e[1;92m] XanXSS\n"
printf "[\e[1;93m8\e[1;92m] XSStrike(Advanced XSS Detection Suite)\n"
printf "[\e[1;93m9\e[1;92m] RVuln\n"
printf "[\e[1;93m10\e[1;92m] ezXSS\n"
printf "[\e[1;93m11\e[1;92m] xsser\n"
printf "[\e[1;93m12\e[1;92m] Flag-Capture\n"
printf "[\e[1;93m13\e[1;92m] XSS-Session-Hijacking-Simulator\n"
printf "[\e[1;93m14\e[1;92m] PNSMN\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
steganograhy_tools_L() {
clear
printf "\n\e[1;92mSteganograhy tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] snow10 (Whitespace)\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
bruteforce_attacks_L() {
clear
printf "\n\e[1;92mBruteforce Attacks:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] instaBrute\n"
printf "[\e[1;93m2\e[1;92m] instaShell\n"
printf "[\e[1;93m3\e[1;92m] Brute_Force (AllinOne SocialMedia Attack)\n"
printf "[\e[1;93m4\e[1;92m] underhanded (Application Checker)\n"
printf "[\e[1;93m5\e[1;92m] pydictor\n"
printf "[\e[1;93m6\e[1;92m] XBruteForcer\n"
printf "[\e[1;93m7\e[1;92m] Faitagram\n"
printf "[\e[1;93m8\e[1;92m] ighack\n"
printf "[\e[1;93m9\e[1;92m] socialbrute\n"
printf "[\e[1;93m10\e[1;92m] hasher\n"
printf "[\e[1;93m11\e[1;92m] facebrute\n"
printf "[\e[1;93m12\e[1;92m] dirsearch\n"
printf "[\e[1;93m13\e[1;92m] Instagram (Brute Force Attack Tool for Instagram)\n"
printf "[\e[1;93m14\e[1;92m] CMSeek\n"
printf "[\e[1;93m15\e[1;92m] BruteX\n"
printf "[\e[1;93m16\e[1;92m] Blazy\n"
printf "[\e[1;93m17\e[1;92m] OpenDoor\n"
printf "[\e[1;93m18\e[1;92m] BruteSploit\n"
printf "[\e[1;93m19\e[1;92m] Plutus\n"
printf "[\e[1;93m20\e[1;92m] Wifite2\n"
printf "[\e[1;93m21\e[1;92m] BruteDum\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
android_hacking_tools_L() {
clear
printf "\n\e[1;92mAndroid Hacking tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Keydroid\n"
printf "[\e[1;93m2\e[1;92m] MySMS\n"
printf "[\e[1;93m3\e[1;92m] Lockphish (Grab target LOCK PIN)\n"
printf "[\e[1;93m4\e[1;92m] WishFish {DroidCam (Capture Image)}\n"
printf "[\e[1;93m5\e[1;92m] EvilApp (Hijack Session)\n"
printf "[\e[1;93m6\e[1;92m] HatCloud(Bypass CloudFlare for IP)\n"
printf "[\e[1;93m7\e[1;92m] PhoneSploit\n"
printf "[\e[1;93m8\e[1;92m] Kali Nethunter(For Android)\n"
printf "[\e[1;93m9\e[1;92m] Deskify(Install Linux Distributions in Android, For Temrux Only)\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 ]]; then
show_linux_list
elif [[ $input == 8 ]]; then
clear
printf "\nKali Nethunter (Rootless Edition):\n"
sleep 0.2
printf "Install Kali NetHunter on any stock, unrooted Android device without voiding the warranty.\n"
printf "\nPrerequisite:\n"
printf "{1} Android Device (Stock unmodified device, no root or custom recovery required)\n"
printf "{2} VNC Viewer\n"
printf "{3} Better Internet connection(Around 1.3GB rootfs file will be downloaded)\n"
printf "{4} Hacker's Keyboard(Available on Play Store)\n"
printf "{5} Around 9GB Internal Storage\n"
printf "{6} Around 1.3GB of data will be used\n\n"
printf "Do you want to download now?(y/n)"
read -p $'\e[1;93m ' kali_install_permit
if [[ $kali_install_permit == Y || $kali_install_permit == y ]]; then
printf "\n\n\e[1;92mStarted setup ...\n"
sleep 1
if [ "$TERMUX" = true ]; then
pkg install wget
wget -O install-nethunter-termux https://offs.ec/2MceZWr
chmod +x install-nethunter-termux
./install-nethunter-termux
elif [ "$LINUX" = true ]; then
printf "\n\n\e[1;91mSorry, This installation is not possible in Linux!\n\e[1;92m"
sleep 1
read -p $'\e[1;92m\nPress ENTER to continue to Engine Ripper ... ' input_enter
android_hacking_tools_L
else
error_handle
fi
printf "\n\n\e[1;92m"
printf "For guide you can ask in Telegram Group: http://t.me/linux_repo \n"
printf "\nDo you want to run kali nethunter now?"
read -p $'(y/n) ' kali_run_permit
if [[ $kali_run_permit == y || $kali_run_permit == Y ]]; then
sleep 1
printf "\n\e[1;92mRunning as root user!\n"
nh -r
else
android_hacking_tools_L
fi
else
android_hacking_tools_L
fi
elif [[ $input == 9 ]]; then
printf "\n\nDownloading Deskify from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/Deskify
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd Deskify
bash deskify.sh
read -p $'\e[1;92m\nPress ENTER to continue to Engine Ripper ... ' input_enter
cd ..
android_hacking_tools_L
else
android_hacking_tools_L
fi
else
command_not_found
fi
}
idn_homograph_attack_L() {
clear
printf "\n\e[1;92mIDN Homograph Attack:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] EvilURL\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
email_verify_tools_L() {
clear
printf "\n\e[1;92mEmail Verify tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Knockmail\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
hash_cracking_tools_L() {
clear
printf "\n\e[1;92mHash cracking tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Hash-Buster\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
wifi_deauthenticate_L() {
clear
printf "\n\e[1;92mifi Deauthenticate:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] WifiJammer-NG\n"
printf "[\e[1;93m2\e[1;92m] KawaiiDeauther\n"
printf "[\e[1;93m3\e[1;92m] PixelDust\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
socialMedia_finder_L() {
clear
printf "\n\e[1;92mSocialMedia Finder:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] social_mapper (Find SocialMedia By Facial Recognation System)\n"
printf "[\e[1;93m2\e[1;92m] finduser (Find SocialMedia By UserName)\n"
printf "[\e[1;93m3\e[1;92m] socialscan (Username or Email)\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
payload_injector_L() {
clear
printf "\n\e[1;92mPayload Injector:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Debinject\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
web_crawling_L() {
clear
printf "\n\e[1;92mWeb crawling:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] Gospider\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
games_L() {
clear
printf "\n\e[1;92mGames:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] PySnakeGame\n"
printf "[\e[1;93m2\e[1;92m] SpaceShooter\n"
printf "[\e[1;93m3\e[1;92m] 2048\n"
printf "[\e[1;93m4\e[1;92m] nsnake\n"
printf "[\e[1;93m5\e[1;92m] FlappyBird\n"
printf "[\e[1;93m6\e[1;92m] Tetris\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 ]]; then
show_linux_list
elif [[ $input == 1 ]]; then
printf "\n\nDownloading PySnakeGame from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/PySnakeGame.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd PySnakeGame
pip3 install -r requirments.txt
python3 pysnakegame.py
cd ..
games_L
else
games_L
fi
elif [[ $input == 2 ]]; then
printf "\n\nDownloading spaceshooter from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/spaceshooter.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd spaceshooter
pip3 install -r requirments.txt
python3 spaceshooter_rocky.py
cd ..
games_L
else
games_L
fi
elif [[ $input == 3 ]]; then
printf "\n\nDownloading 2048 from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/2048.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd 2048
if [ "$TERMUX" = true ]; then
python3 2048-term.py
elif [ "$LINUX" = true ]; then
python3 2048.py
else
error_handle
fi
cd ..
games_L
else
games_L
fi
elif [[ $input == 4 ]]; then
printf "\n\nDownloading & Installing nsnake ...\n"
sleep 1.8
if [ "$TERMUX" = true ]; then
pkg install nsnake -y
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
elif [ "$LINUX" = true ]; then
sudo apt install nsnake -y
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
elif [ "$MAC" = true ]; then
brew install nsnake
printf "\n\nSetup complete!\n"
do_you_want_to_open_tool
else
error_handle
fi
if [[ $input_open == y || $input_open == Y ]]; then
printf "\n\e[0m"
nsnake
sleep 2
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
games_L
else
games_L
fi
elif [[ $input == 5 ]]; then
printf "\n\nDownloading FlappyBird from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/FlappyBird.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd FlappyBird
if [ "$TERMUX" = true ]; then
printf "\n\n\e[1;91mCan't run in Termux!\e[1;92m\n"
sleep 2
cd ..
games_L
elif [ "$LINUX" = true ]; then
pip3 install pygame pipenv
pipenv install
python3 flappy.py
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
cd ..
games_L
else
error_handle
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
cd ..
games_L
fi
else
games_L
fi
elif [[ $input == 6 || $input == 06 ]]; then
printf "Downloading Tetris from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/PyTetris
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd PyTetris
if [ "$TERMUX" = true ]; then
printf "\n\n\e[1;91mCan't run in Termux!\e[1;92m\n"
sleep 2
cd ..
games_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
python3 -m pip install pygame
python3 tetris.py
press_enter
cd ..
games_L
else
error_handle
cd ..
fi
else
games_L
fi
else
command_not_found
fi
}
password_attacks_L() {
clear
printf "\e[1;92m\nPassword Attacking Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] john\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
messaging_tools_L() {
clear
printf "\e[1;92m\nMessaging Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] bomb3r\n"
printf "[\e[1;93m2\e[1;92m] SmS-BomB\n"
printf "[\e[1;93m3\e[1;92m] SpamSms\n"
printf "[\e[1;93m4\e[1;92m] C-SpamMasal\n"
printf "[\e[1;93m5\e[1;92m] TBomb\n"
printf "[\e[1;93m6\e[1;92m] YetAnotherSMSBomber\n"
printf "[\e[1;93m7\e[1;92m] ni_bomber\n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 1 ]]; then
printf "Downloading bomb3r from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/iMro0t/bomb3r.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd bomb3r
if [ "$TERMUX" = true ]; then
pkg install python git wget curl -y
pip3 install -r requirements.txt
read -p $'\nTarget: ' user_input_target
python3 bomber.py $user_input_target
press_enter
cd ..
messaging_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip git wget curl -y
pip3 install -r requirements.txt
read -p $'\nTarget: ' user_input_target
python3 bomber.py $user_input_target
press_enter
cd ..
messaging_tools_L
else
error_handle
cd ..
press_enter
messaging_tools_L
fi
else
messaging_tools_L
fi
elif [[ $input == 2 ]]; then
printf "Downloading SmS-BomB from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/Bhai4You/SmS-BomB.git
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd SmS-BomB
if [ "$TERMUX" = true ]; then
pkg install git wget curl -y
chmod +x requirement.sh start.sh
bash requirement.sh
bash start.sh
press_enter
cd ..
messaging_tools_L
elif [ "$LINUX" = true ]; then
sudo apt install git wget curl -y
chmod +x requirement.sh start.sh
bash requirement.sh
bash start.sh
press_enter
cd ..
messaging_tools_L
else
error_handle
cd ..
press_enter
messaging_tools_L
fi
else
messaging_tools_L
fi
else
command_not_found
fi
}
media_tools_L() {
clear
printf "\e[1;92m\nMedia Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] \n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
networking_tools_L() {
clear
printf "\e[1;92mNetworking Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] \n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
OS_tools_L() {
clear
printf "\e[1;92mOperating System Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] \n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
Security_tools_L() {
clear
printf "\e[1;92mSecurity Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] \n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
web_browser_tools_L() {
clear
printf "\e[1;92mWeb Browser Tools:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] \n"
printf "[\e[1;93m00\e[1;92m] \n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
else
command_not_found
fi
}
TG_bots_source_codes_L() {
clear
printf "\e[1;92mTelegram Bots Source Codes:\n"
sleep 0.2
printf "[\e[1;93m1\e[1;92m] magneto-python-aria\n"
printf "[\e[1;93m2\e[1;92m] Telegram-Leech-Bot\n"
printf "[\e[1;93m00\e[1;92m] Back\n"
inputs
if [[ $input == 0 || $input == 00 ]]; then
show_linux_list
elif [[ $input == 1 ]]; then
printf "Downloading magneto-python-aria from GitHub ...\n"
sleep 1
printf "Saving to "
pwd
printf "\n"
sleep 0.5
git clone https://github.com/AbirHasan2005/magneto-python-aria
do_you_want_to_open_tool
if [[ $input_open == y || $input_open == Y ]]; then
cd magneto-python-aria
if [ "$TERMUX" = true ]; then
pkg install python git figlet -y
pip3 install google-api-python-client google-auth-httplib2 google-auth-oauthlib
pip3 install -r requirements.txt
printf "\e[1;92m\n\nDownload complete!\n"
printf "Now setup bot manually. Can't help you more."
read -p $'\nDo you want to setup \e[1;96mTELEGRAPH_TOKEN\e[1;92m now?(N/y) ' setup_bot_permit
if [[ $setup_bot_permit == y || $setup_bot_permit == Y ]]; then
python3 generate_telegraph_token.py
read -p $'\nDo you want to setup \e[1;96mUSER_SESSION_STRING\e[1;92m now?(N/y) ' setup_bot_permit2
if [[ $setup_bot_permit2 == y || $setup_bot_permit2 == Y ]]; then
python3 generate_string_session.py
printf "\n\n\e[1;92mMy work done. Now setup other things by yourself.\n"
else
cd ..
TG_bots_source_codes_L
fi
else
cd ..
TG_bots_source_codes_L
fi
elif [ "$LINUX" = true ]; then
sudo apt install python3 python3-pip -y
pip3 install google-api-python-client google-auth-httplib2 google-auth-oauthlib
pip3 install -r requirements.txt
printf "\e[1;92m\n\nDownload complete!\n"
printf "Now setup bot manually. Can't help you more."
read -p $'\nDo you want to setup \e[1;96mTELEGRAPH_TOKEN\e[1;92m now?(N/y) ' setup_bot_permit
if [[ $setup_bot_permit == y || $setup_bot_permit == Y ]]; then
python3 generate_telegraph_token.py
read -p $'\nDo you want to setup \e[1;96mUSER_SESSION_STRING\e[1;92m now?(N/y) ' setup_bot_permit2
if [[ $setup_bot_permit2 == y || $setup_bot_permit2 == Y ]]; then
python3 generate_string_session.py
printf "\n\n\e[1;92mMy work done. Now setup other things by yourself.\n"
else
cd ..
TG_bots_source_codes_L
fi
else
cd ..
TG_bots_source_codes_L
fi
else
error_handle
cd ..
fi
else
cd ..
TG_bots_source_codes_L
fi
else
command_not_found
fi
}
press_enter() {
printf "\n\n\e[1;92mPress ENTER to continue to Engine Ripper ..."
read -p $'\e[1;96m ' enter_press
}
show_linux_list() {
clear
printf "\e[1;93m"
printf "\n\nShowing Categories List ..."
sleep 0.2
printf "\n\n\e[1;92m"
printf "     [\e[1;93m1\e[1;92m] Anonymously Hiding Tools\n"
printf "     [\e[1;93m2\e[1;92m] Android Hacking tools\n"
printf "     [\e[1;93m3\e[1;92m] Bruteforce Attacks\n"
printf "     [\e[1;93m4\e[1;92m] DDOS Attack Tools\n"
printf "     [\e[1;93m5\e[1;92m] Exploit framework\n"
printf "     [\e[1;93m6\e[1;92m] Email Verify tools\n"
printf "     [\e[1;93m7\e[1;92m] Forensic tools\n"
printf "     [\e[1;93m8\e[1;92m] Hash cracking tools\n"
printf "     [\e[1;93m2\e[1;92m] Information Gathering Tools\n"
printf "     [\e[1;93m10\e[1;92m] Messaging Tools\n"
printf "     [\e[1;93m11\e[1;92m] Media Tools\n"
printf "     [\e[1;93m12\e[1;92m] Networking Tools\n"
printf "     [\e[1;93m13\e[1;92m] Operating Systems Tools\n"
printf "     [\e[1;93m14\e[1;92m] Security Tools\n"
printf "     [\e[1;93m15\e[1;92m] Wordlist Generators\n"
printf "     [\e[1;93m16\e[1;92m] Wireless attack tools\n"
printf "     [\e[1;93m17\e[1;92m] SQL Injection Tools\n"
printf "     [\e[1;93m18\e[1;92m] Phishing attack tools\n"
printf "     [\e[1;93m19\e[1;92m] Web Attack Tools\n"
printf "     [\e[1;93m20\e[1;92m] Web Browser Tools\n"
printf "     [\e[1;93m99\e[1;92m] Show More Categories\n"
printf "     [\e[1;93m00\e[1;92m] Back\n"
inputs
database1
}
show_linux_lists() {
clear
printf "\e[1;93m"
printf "\n\nShowing Categories List ..."
sleep 0.2
printf "\n\n\e[1;92m"
printf "     [\e[1;93m21\e[1;92m] Post exploitation tools\n"
printf "     [\e[1;93m22\e[1;92m] Payload creation tools\n"
printf "     [\e[1;93m23\e[1;92m] Reverse engineering tools\n"
printf "     [\e[1;93m24\e[1;92m] Remote Administrator Tools(RAT)\n"
printf "     [\e[1;93m25\e[1;92m] XSS Attack Tools\n"
printf "     [\e[1;93m26\e[1;92m] Steganograhy tools\n"
printf "     [\e[1;93m27\e[1;92m] IDN Homograph Attack\n"
printf "     [\e[1;93m28\e[1;92m] Wifi Deauthenticate\n"
printf "     [\e[1;93m29\e[1;92m] SocialMedia Finder\n"
printf "     [\e[1;93m30\e[1;92m] Payload Injector\n"
printf "     [\e[1;93m31\e[1;92m] Web crawling\n"
printf "     [\e[1;93m32\e[1;92m] Password Attacking Tools\n"
printf "     [\e[1;93m33\e[1;92m] Telegram Bots Source Codes\n"
printf "     [\e[1;93m34\e[1;92m] Games Section\n"
printf "     [\e[1;93m99\e[1;92m] Back to Previous Page\n"
printf "     [\e[1;93m00\e[1;92m] Back to Main Menu\n"
inputs
database2
}
database1() {
if [[ $input == 1 ]]; then
anonymously_hiding_tools_L
elif [[ $input == 2 ]]; then
android_hacking_tools_L
elif [[ $input == 3 ]]; then
bruteforce_attacks_L
elif [[ $input == 4 ]]; then
ddos_attack_tools_L
elif [[ $input == 5 ]]; then
exploit_framework_L
elif [[ $input == 6 ]]; then
email_verify_tools_L
elif [[ $input == 7 ]]; then
forensic_tools_L
elif [[ $input == 8 ]]; then
hash_cracking_tools_L
elif [[ $input == 9 ]]; then
information_gathering_tools_L
elif [[ $input == 10 ]]; then
messaging_tools_L
elif [[ $input == 11 ]]; then
media_tools_L
elif [[ $input == 12 ]]; then
networking_tools_L
elif [[ $input == 13 ]]; then
OS_tools_L
elif [[ $input == 14 ]]; then
Security_tools_L
elif [[ $input == 15 ]]; then
wordlist_generators_L
elif [[ $input == 16 ]]; then
wireless_attack_tools_L
elif [[ $input == 17 ]]; then
sql_injection_tools_L
elif [[ $input == 18 ]]; then
phishing_attack_tools_L
elif [[ $input == 19 ]]; then
web_attack_tools_L
elif [[ $input == 20 ]]; then
web_browser_tools_L
elif [[ $input == 99 ]]; then
show_linux_lists
elif [[ $input == 0 || $input == 00 ]]; then
main_menu
else
command_not_found
main_menu
fi
}
database2() {
if [[ $input == 21 ]]; then
post_exploitation_tools_L
elif [[ $input == 22 ]]; then
payload_creation_tools_L
elif [[ $input == 23 ]]; then
reverse_engineering_tools_L
elif [[ $input == 24 ]]; then
remote_administrator_tools_L
elif [[ $input == 25 ]]; then
xss_attack_tools_L
elif [[ $input == 26 ]]; then
steganograhy_tools_L
elif [[ $input == 27 ]]; then
idn_homograph_attack_L
elif [[ $input == 28 ]]; then
wifi_deauthenticate_L
elif [[ $input == 29 ]]; then
socialMedia_finder_L
elif [[ $input == 30 ]]; then
payload_injector_L
elif [[ $input == 31 ]]; then
web_crawling_L
elif [[ $input == 32 ]]; then
password_attacks_L
elif [[ $input == 34 ]]; then
games_L
elif [[ $input == 99 ]]; then
show_linux_list
elif [[ $input == 0 || $input == 00 ]]; then
main_menu
else
command_not_found
main_menu
fi
}
loading() {
clear
printf "\e[1;92m"
printf "\n▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.3
clear
printf "\n▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒ Loading ...\n"
sleep 0.1
clear
printf "\n▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Loading ...\n"
sleep 0.1
clear
}
loading
main_menu
