#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER SS                 $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate Shadowsock${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mTrial Shadowsock${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mDelete Account Ss${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mRenew shadow Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mCheck User Login Ss${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 5 ] : " menu
case $menu in
1)
    addss
    ;;
2)
    trialss
    ;;
3)
    delss
    ;;
4)
    renewss
    ;;
5)
    cekss
    ;;
 
*)
    menu
    ;;
esac
 m-ssws.temp1.sh 