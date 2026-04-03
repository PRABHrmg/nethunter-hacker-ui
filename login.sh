#!/bin/bash

USER_FILE="$HOME/.nh_user"
PASS_FILE="$HOME/.nh_pass"

# Setup first time
if [ ! -f "$USER_FILE" ]; then
    echo "Set Username:"
    read uname
    echo $uname > $USER_FILE

    echo "Set Password:"
    read -s pass
    echo $pass > $PASS_FILE
fi

USER=$(cat $USER_FILE)
PASS=$(cat $PASS_FILE)

clear

echo ""
echo "        LOGIN REQUIRED"
echo ""

read -p "Username: " input_user
read -s -p "Password: " input_pass

echo ""

if [[ "$input_user" == "$USER" && "$input_pass" == "$PASS" ]]; then
    echo "Access Granted..."
    sleep 1
else
    echo "Access Denied!"
    sleep 2
    exit
fi

clear

echo "        kali㉿$USER"
sleep 1
