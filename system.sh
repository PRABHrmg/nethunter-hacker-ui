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
    cat ~/nethunter-hacker-ui/assets/dragon.txt
fi
sleep 1

echo ""
echo "[+] System Booting..."
sleep 0.5

# Wipe down effect
for i in {1..10}; do
    echo "Loading modules..."
    sleep 0.1
done

echo ""
echo "OS       : Kali NetHunter"
echo "Kernel   : $(uname -r)"
echo "User     : $USER"
echo "CPU      : $(uname -m)"

sleep 2
