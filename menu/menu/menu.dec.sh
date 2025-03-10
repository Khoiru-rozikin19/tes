#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)
clear

green='\033[0;32m'
r="\e[91;1m"
RED="\e[91;1m"
Blu_Cy="\e[5;36m"
# // color format 38
runn='\e[38;5;14m' 
acc='\e[38;5;146m'
LO='\e[38;5;162m'
UK='\e[38;5;99m'  # UNGU KOLOT
BK='\e[38;5;196m' # BEREM KOLOT 
R1='\e[38;5;155m' # HEJO SEMU BODAS
R2='\e[38;5;49m'  # HEJO LIME / APEL
BC='\e[38;5;195m' # BODAS CERAH PISAN
HU='\e[38;5;115m' # HEJO SEMU ABU
UB='\e[38;5;147m' # UNGU KABODASAN
KT='\e[38;5;187m' # KONENG TARIGU
Suffix='\e[0m'
clear
clear
#echo "$username" >/usr/bin/user
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
haproxy_service=$(systemctl status haproxy | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nginx_service=$(systemctl status nginx | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
clear

# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh="${green}ON${Suffix}"
else
   status_ssh="${RED}OFF${Suffix} "
fi

# // SSH Websocket Proxy
#ssh_ws=$( systemctl status ws | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
#if [[ $ssh_ws == "running" ]]; then
#    status_ws_epro="${green}ON${Suffix}"
#else
#    status_ws_epro="${RED}OFF${Suffix} "
#fi

# STATUS SERVICE HAPROXY
if [[ $haproxy_service == "running" ]]; then 
   status_haproxy="${R2}GOOD${Suffix}"
else
   status_haproxy="${RED}EROR${Suffix} "
fi

# STATUS SERVICE XRAY
if [[ $xray_service == "running" ]]; then 
   status_xray="${green}ON${Suffix}"
else
   status_xray="${RED}OFF${Suffix} "
fi

# STATUS SERVICE NGINX
if [[ $nginx_service == "running" ]]; then 
   status_nginx="${green}ON${Suffix}"
else
   status_nginx="${RED}OFF${Suffix} "
fi

# STATUS SERVICE Dropbear
#if [[ $dropbear_service == "running" ]]; then 
#   status_dropbear="${green}ON${Suffix}"
#else
#   status_dropbear="${RED}OFF${Suffix} "
#fi
clear

#####INFOAKUN
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
#! " "/etc/xray/config.json")
let trb=$trx/2
#!# " "/etc/xray/config.json")
let ssa=$ssx/2
########

function St_System() {
clear
echo -e "   ${UK}───────────────────────────────────────────────────${Suffix}"
echo -e "   \e[92;1m          .::::.${Suffix}${R2} PUSAT BLITAR A1 \e[92;1m.::::.${Suffix}"
echo -e "   ${UK}───────────────────────────────────────────────────${Suffix}"
echo -e "       ${UK}┌────────────────────────────────────────┐${Suffix}"
echo -e "       ${UK}│${BK} SYS OS :${Suffix} ${R2}$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${Suffix}"
echo -e "       ${UK}│${BK} RAM    :${Suffix} ${R2}$(free -m | awk 'NR==2 {print $2}') MB/$(free -m | awk 'NR==2 {print $3}') MB${Suffix}"
echo -e "       ${UK}│${BK} UP     :${Suffix} ${R2}$(uptime -p | cut -d " " -f 2-10000)${Suffix}"
echo -e "       ${UK}│${BK} CORE   :${Suffix} ${R2}$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")${Suffix}"
echo -e "       ${UK}│${BK} ISP    :${Suffix} ${R2}$(cat /etc/xray/isp)${Suffix}"
echo -e "       ${UK}│${BK} CITY   :${Suffix} ${R2}$(cat /etc/xray/city)${Suffix}"
echo -e "       ${UK}│${BK} IP     :${Suffix} ${R2}$(curl -s ipv4.icanhazip.com)${Suffix}"
echo -e "       ${UK}│${BK} DOMAIN :${Suffix} ${R2}$(cat /etc/xray/domain)${Suffix}"
echo -e "       ${UK}└────────────────────────────────────────┘${Suffix}"
}


function Status_Service() {
echo -e "  ${UK}┌───────────────────────────────────────────────────┐${Suffix}"
echo -e "  ${UK}│${Suffix} SSH-WS :${Suffix} $status_ssh ${UK}│${Suffix} XRAY :${Suffix} $status_xray ${UK}│${Suffix} NGINX :${Suffix} $status_nginx ${UK}│${Suffix}   ${R2}$status_haproxy     ${UK}│"
echo -e "  ${UK}└───────────────────────────────────────────────────┘${Suffix}"
echo -e "     ${UK}┌─────────────────────────────────────────────┐${Suffix}"
#echo -e "     ${UK}│${Suffix} ${BC}ID     :${Suffix}${Blu_Cy} $(cat /usr/bin/user)${Suffix}"
echo -e "     ${UK}│${Suffix} ${BC}Script : Life-time"
echo -e "     ${UK}└─────────────────────────────────────────────┘${Suffix}"
}

function Details_Account() {
echo -e "              ${BC}      SSH OVPN : $ssh1  ${Suffix}"
echo -e "              ${BC}      VMESS    : $vma ${Suffix}"
echo -e "              ${BC}      VLESS    : $vla  ${Suffix}"
echo -e "              ${BC}      TROJAN   : $trb ${Suffix}"
echo -e "              ${BC}      SHADWSK  : $ssa ${Suffix}"
}

function Menu_Display() {
echo -e "  ${UK}┌───────────────────────────────────────────────────┐${Suffix}"
echo -e "  ${UK}│${Suffix}${R1} 1.${Suffix}${BC}SSH OVPN MANAGER${Suffix}${R1}          4.${Suffix}${BC}TROJAN MANAGER${Suffix}      ${UK}│${Suffix}"
echo -e "  ${UK}│${Suffix}${R1} 2.${Suffix}${BC}VMESS MANAGER${Suffix}   ${R1}          5.${Suffix}${BC}SHDWSK MANAGER${Suffix}      ${UK}│${Suffix}"
echo -e "  ${UK}│${Suffix}${R1} 3.${Suffix}${BC}VLESS MANAGER${Suffix}   ${R1}          6.${Suffix}${BC}OTHER SETTINGS${Suffix}      ${UK}│${Suffix}"
echo -e "  ${UK}└───────────────────────────────────────────────────┘${Suffix}"
}

function Sc_Version() {
echo -e "                    ${R1} Version : \033[1;37m2024 ${Suffix}"
echo -e "                 \e[\033[1;35m━━━${Suffix}\033[1;32m━━━${Suffix}\033[1;37m━━━${Suffix}\033[1;32m━━━${R1}━━━${Suffix}\033[1;33m━━━${Suffix}\033[1;34m━━━${Suffix}\033[1;37m━━${Suffix}"
echo -e ""
}

St_System
Status_Service
Details_Account
Menu_Display
Sc_Version

read -p "      Select From Options [ 1 - 6 ] : " opt
echo -e ""
case $opt in
1 | 01)
clear
m-sshws
;;
2 | 02)
clear
m-vmess
;;
3 | 03)
clear
m-vless
;;
4 | 04)
clear
m-trojan
;;
5 | 05)
clear
m-ssws
;;
6 | 06)
clear
m-system
;;
*)
clear
exit
;;
esac
 menu.temp1.sh 