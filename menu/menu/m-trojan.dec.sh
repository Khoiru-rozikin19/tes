#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m       MENU MANAGER TROJAN                $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate Trojan Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mTrial Trojan Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mDelete Trojan Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mRenew Trojan Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mCheck Trojan Login${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 5 or 0 ] : " menu
case $menu in
1)
    addtr
    ;;
2)
    trialtr
    ;;
3)
    deltr
    ;;
4)
    renewtr
    ;;
5)
    cektr
    ;;
*)
    menu
    ;;
esac
 m-trojan.temp1.sh 