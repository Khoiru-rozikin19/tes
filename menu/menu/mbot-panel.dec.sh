#!/bin/bash
DF='\e[39m'
RED='\033[0;31m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lyellow='\e[93m'
Lgreen='\e[92m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"

bot="https://raw.githubusercontent.com/Arya-Blitar22/pusatA1/main/bot/kyt.sh"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
ipsaya=$(curl -sS ipv4.icanhazip.com)

clear

# RESTART BOT SERVICE
restart-bot(){
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl restart kyt
}
netfilter-persistent
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          RESTART BOT SERVICE          \e[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "  \033[1;91m restart bot service\033[1;37m"
fun_bar 'res1'
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
mbot-panel
}

stop-bot(){
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl stop kyt
}
netfilter-persistent
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          STOP BOT SERVICE.          \e[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "  \033[1;91m stop bot service\033[1;37m"
fun_bar 'res1'
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
mbot-panel
}

#satusbot
mybot=$(systemctl status kyt | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE  BOT 
if [[ $mybot == "running" ]]; then 
   status_bot="🟢${c} $NC"
else
   status_bot="🔴${NC} "
fi
#####
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m$NC"
grenbo="\e[92;1m"
NC='\033[0m'

echo -e "\e[32mloading...\e[0m"
clear
MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER BOTT              $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "       ${KIRI} Status Bot ( ${status_bot} )"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate Bot Tele${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mDelete Bot Tele${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mStop Bot Fanel${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mRestart Bot Fanel${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mDelete BOT notif${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
echo -e ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; wget ${bot} && chmod +x kyt.sh && ./kyt.sh ;;
02 | 2) clear ; hapus-bot ;;
02 | 3) clear ; stop-bot ;;
00 | 4) clear ; restart-bot ;;
5) clear ; del-bot-notif ;;
*) clear ; menu ;;
esac
 mbot-panel.temp1.sh 