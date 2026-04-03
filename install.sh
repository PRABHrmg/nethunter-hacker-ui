#!/bin/bash

echo "[+] Installing Hacker UI..."

pkg update -y
pkg install coreutils -y

chmod +x *.sh

mkdir -p $HOME/nethunter-hacker-ui
cp -r * $HOME/nethunter-hacker-ui/

echo "bash ~/nethunter-hacker-ui/main.sh" >> $HOME/.bashrc

echo "[✔] Installed Successfully!"
