error_handle() {
printf "\n\n\e[1;91mThere was an error!\n\e[1;92mPlease report to Telegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n\n"
}
printf "\e[1;92m"
clear
printf "\nSetup Started ... \n"
sleep 2
printf "\n\e[1;93mGetting Terminal Information ... \n\e[1;92m"
sleep 2
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
TERMUX=true
elif [ "$(uname)" = "Darwin" ]; then
MAC=true
else
LINUX=true
fi
if [ "$TERMUX" = true ]; then
printf "\nYou are using Termux is Android ... \n"
sleep 2
printf "\nInstalling packages in Termux ... \n"
sleep 2
elif [ "$LINUX" = true ]; then
printf "\nYou are using Linux ... \n"
sleep 2
printf "\nInstalling packages in Linux with sudo permission ... \n"
sleep 2
printf "\nCommands Deployed ...\n"
else
error_handle
fi
if [ "$TERMUX" = true ]; then
pkg install python php git curl unzip wget python2 -y
printf "\e[1;92m\nHolding ...\n"
sleep 2
elif [ "$LINUX" = true ]; then
sudo apt install python php git curl unzip wget python3 -y
printf "\e[1;92m\nHolding ...\n"
sleep 2
else
error_handle
fi
printf "\n\e[1;92m\n"
printf "Setup Done!"
sleep 1
printf "\n\n"
printf "Running the engrip.sh file ...\n\n"
sleep 2
bash engrip.sh
