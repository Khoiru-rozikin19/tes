#!/bin/bash
# pewarna hidup
red='\e[1;31m'
green="\033[1;97m"
blue="\033[1;96m"
NC='\e[0m'
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e "\E[1;41;97m               LOCK ACCOUNT SSH               \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat    
echo "USERNAME          EXP DATE          STATUS"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     " "LOCKED"
else
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     " "UNLOCKED"
fi
fi
done < /etc/passwd
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo ""
read -p "Input Username Account : " username
egrep "^$username" /etc/passwd >/dev/null
passwd -l $username
clear
  echo " "
  echo " "
  echo -e "\033[0;34m───────────────────\033[0m"
  echo -e "Username ${blue}$username${NC} Sukses Di ${red}LOCKED !${NC}."
  echo -e "Akses Login username ${blue}$username${NC} Telah Di locked."
  echo -e "\033[0;34m───────────────────\033[0m"
  systemctl restart ws
  echo ""
read -n 1 -s -r -p "Enter Back To Menu"
menu
 lock.temp1.sh 