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

#!/bin/bash

USER_FILE="$HOME/.nh_user"
PASS_FILE="$HOME/.nh_pass"

# FIRST TIME SETUP
if [ ! -f "$USER_FILE" ]; then
    echo "=== FIRST TIME SETUP ==="
    
    read -p "Set Username: " uname
    echo "$uname" > "$USER_FILE"

    read -s -p "Set Password: " pass
    echo ""
    echo "$pass" > "$PASS_FILE"

    echo "[✔] Setup Complete!"
    sleep 1
fi

USER=$(cat $USER_FILE)
PASS=$(cat $PASS_FILE)

# LOGIN LOOP 🔁
while true; do
    clear
    echo "======== LOGIN ========"
    echo ""
    
    read -p "Username: " input_user
    read -s -p "Password: " input_pass
    echo ""

    if [[ "$input_user" == "$USER" && "$input_pass" == "$PASS" ]]; then
        echo "[✔] Access Granted"
        sleep 1
        break
    else
        echo "[✘] Wrong Username or Password"
        sleep 1.5
    fi
done

# 🔐 PASSWORD CHANGE OPTION
echo ""
read -p "Do you want to change password? (y/n): " choice

if [[ "$choice" == "y" ]]; then
    echo ""
    read -s -p "Enter ROOT password: " rootpass
    echo ""

    if [[ "$rootpass" == "toor" ]]; then   # default kali root password
        read -s -p "Enter New Password: " newpass
        echo ""
        echo "$newpass" > "$PASS_FILE"
        echo "[✔] Password Changed Successfully"
        sleep 1
    else
        echo "[✘] Wrong ROOT password"
        sleep 1.5
    fi
fi

clear
echo "kali㉿$USER"
