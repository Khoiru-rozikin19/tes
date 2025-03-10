#!/bin/bash
# ==========================================
# Color
grenbo="\e[92;1m"
# ==========================================
rm -rf /root/log-limit.txt
touch /root/log-limit.txt
clear
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}🟢${Font_color_suffix}"
Error="${Red_font_prefix}[🔴${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e ""
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "            Status Autokill $sts           "
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "       1. AutoKill After 1 Minutes"
echo -e "       2. AutoKill After 2 Minutes"
echo -e "       3. AutoKill After 3 Minutes"
echo -e "       4. Turn Off AutoKill/MultiLogin"
echo -e "       5. Exit"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"                                                                                               
echo -e ""
read -p "Select From Options [1-4 or x] :  " AutoKill
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                read -p "Multilogin Maximum Number Of Allowed: " max
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/1 * * * *  root /usr/sbin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
                echo -e ""
                echo -e "        Allowed MultiLogin : $max"
                echo -e "        AutoKill Every     : 1 Minutes"      
                echo -e ""
                echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"                         read -n 1 -s -r -p "Press [ Enter ] to back on menu"
                menu                                
                ;;
                2)
                echo -e ""
                read -p "Multilogin Maximum Number Of Allowed: " max
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/2 * * * *  root /usr/sbin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
                echo -e ""
                echo -e "        Allowed MultiLogin : $max"
                echo -e "        AutoKill Every     : 2 Minutes"
                echo -e ""
                echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
                read -n 1 -s -r -p "Press [ Enter ] to back on menu"
                menu
                ;;
                3)
                echo -e ""
                read -p "Multilogin Maximum Number Of Allowed: " max
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/3 * * * *  root /usr/sbin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
                echo -e ""
                echo -e "        Allowed MultiLogin : $max"
                echo -e "        AutoKill Every     : 3 Minutes"
                echo -e ""
                echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
                read -n 1 -s -r -p "Press [ Enter ] to back on menu"menu
                menu
                ;;
                4)
                clear
                echo > /etc/cron.d/tendang
                echo -e ""
                echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
                echo -e ""
                echo -e "        AutoKill MultiLogin Turned Off  "
                echo -e ""
                echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
                read -n 1 -s -r -p "Press [ Enter ] to back on menu"
                menu
                ;;
                x)
                clear
                exit
                ;;
        esac
         autokill.temp1.sh 