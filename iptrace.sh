#!/bin/bash

# Colors
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
C='\033[1;36m'
W='\033[1;37m'
NC='\033[0m'

clear

IP="$((RANDOM%255)).$((RANDOM%255)).$((RANDOM%255)).$((RANDOM%255))"

COUNTRIES=("USA" "Germany" "India" "Russia" "Brazil" "China" "UK")
CITIES=("New York" "Berlin" "Delhi" "Moscow" "Rio" "Shanghai" "London")
ISP=("Cloudflare" "AWS" "Google" "Airtel" "Jio" "Azure")

COUNTRY=${COUNTRIES[$RANDOM % ${#COUNTRIES[@]}]}
CITY=${CITIES[$RANDOM % ${#CITIES[@]}]}
PROVIDER=${ISP[$RANDOM % ${#ISP[@]}]}

echo -e "${G}[+] Bypassing Firewall...${NC}"
sleep 0.6
echo -e "${Y}[+] Injecting Packets...${NC}"
sleep 0.6

echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${W}IP        : $IP"
echo -e "Location  : $CITY, $COUNTRY"
echo -e "ISP       : $PROVIDER"
echo -e "Lat/Long  : $(shuf -i -90-90 -n1).$(shuf -i 0-9999 -n1), $(shuf -i -180-180 -n1).$(shuf -i 0-9999 -n1)"
echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━${NC}"

sleep 1

echo -e "${G}[+] Scanning Ports...${NC}"
for i in {20..100}; do
    echo -ne "${Y}Processing: $i%%\r${NC}"
    sleep 0.$((RANDOM%3+1))
done

echo ""
echo -e "${R}[✔] ACCESS GRANTED${NC}"
sleep 1.5

clear
