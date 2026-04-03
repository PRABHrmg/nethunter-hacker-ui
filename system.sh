#!/bin/bash

USER=$(cat $HOME/.nh_user)

clear

# Center title
printf "\n\n\n"
printf "        kali㉿$USER\n\n"

# Dragon logo
cols=$(tput cols)

if [ $cols -lt 60 ]; then
    cat ~/nethunter-hacker-ui/assets/small_logo.txt
else
    while IFS= read -r line; do
    printf "%*s\n" $(((${#line} + $(tput cols)) / 2)) "$line"
done < ~/nethunter-hacker-ui/assets/dragon.txt
fi
sleep 2
clear
echo ""
echo "[+] System Booting..."
sleep 0.5

# Wipe down effect
for i in {1..10}; do
    echo -ne "Loading modules [$i/10]\r"
    sleep 0.1
done
echo ""
echo -e "\e[1;32m[+] System Booting...\e[0m"
echo ""
echo "OS       : Kali NetHunter"
echo "Kernel   : $(uname -r)"
echo ""
echo "kali㉿$USER"
echo "CPU      : $(uname -m)"

sleep 2
echo -e "\e[1;31m[✔] System Ready\e[0m"
sleep 1
