#!/bin/bash
# COLOR VALIDATION
clear
y='\033[1;33m' #yellow
BGX="\033[42m"
CYAN="\033[96m"
z="\033[0;33m"
f="\033[1;97;41m"
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
green='\033[0;32m'
grenbo="\e[92;1m"
purple="\033[1;95m"
YELL='\033[0;33m'
f="\033[1;97;41m"

###########
KANAN="\033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m$NC"
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m$NC"
########
r="\033[1;31m"  #REDTERANG
a=" ${CYAN}ACCOUNT PREMIUM" 
#clear
echo -e " "
echo -e " ${z}╭════════════════════════════════════════════════════╮${NC}"
echo -e " ${z}│$NC${f}          Welcome To Ekstrak Menu                   $NC${z}│$NC"
echo -e " ${z}╰════════════════════════════════════════════════════╯${NC}"
echo -e "    ${z}══════════════════════════════════════════════════${NC}"
echo -e "    ${z}$NC [${r}01${NC}]$green MENU NOOBZVPN $NC ${z}  $NC"
echo -e "    ${z}$NC [${r}02${NC}]$green MENU DELL USER EXP$NC ${z}  $NC"
echo -e "    ${z}$NC [${r}03${NC}]$green MENU AUTO REBOOT$NC   ${z}  $NC"
echo -e "    ${z}$NC [${r}04${NC}]$green MENU RESTART SERVICE$NC ${z}$NC"
echo -e "    ${z}$NC [${r}05${NC}]$green MENU BOT TELEGRAM$NC   ${z} $NC "
echo -e "    ${z}$NC [${r}06${NC}]$green MENU GANTI BANNER$NC   ${z} $NC "
echo -e "    ${z}$NC [${r}07${NC}]$green MENU RESTART BANNER$NC   ${z} $NC "
echo -e "    ${z}$NC [${r}08${NC}]$green MENU MONITOR$NC        ${z} $NC"
echo -e "    ${z}$NC [${r}09${NC}]$green INSTALL UDP$NC        ${z} $NC"
echo -e "    ${z}$NC [${r}10${NC}]$green GANTI DOMAIN$NC        ${z} $NC"
echo -e "    ${z}$NC [${r}11${NC}]$green CEK RUNNING$NC        ${z} $NC"
echo -e "    ${z}$NC [${r}12${NC}]$green UPDATE SCRIPT $NC        ${z} $NC"
echo -e "    ${z}$NC [${r}13${NC}]$green MENU BACKUP $NC        ${z} $NC"
echo -e "    ${z}$NC [${r}14${NC}]$green INFO PORT$NC        ${z} $NC"
echo -e "    ${z}══════════════════════════════════════════════════${NC}"
echo -e ""
read -p " SELECT OPTIONS ⟩ " opt
echo -e ""
case $opt in
1 | 01)
clear
m-noob
;;
2 | 02)
clear
xp
;;
3 | 03)
clear
autoreboot
;;
4 | 04)
clear
restart
;;
5 | 05)
clear
m-bot
;;
6 | 06)
clear
nano /etc/kyt.txt
;;
7 | 07)
clear
/etc/init.d/dropbear restart
;;
8 | 08)
clear
gotop
;;
9 | 09)
clear
udepe
;;
10)
clear
addhost
;;
11)
clear
run
;;
12)
clear
wget -q https://raw.githubusercontent.com/Arya-Blitar22/pusatA1/main/update.sh
chmod +x update.sh
./update.sh
;;
13)
clear
menu-backup
;;
14)
clear
prot
;;
0 | 00)
exit
;;
x)
menu
;;
*) clear ;
echo -e
menu
;;
esac m-system.temp1.sh 