#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m        MENU MANAGER VMESS                $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mTrial Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mDelete Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mRenew Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mCheck Login Vmess${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 5 ] : " menu
case $menu in
1)   clear ;
    addws
    ;;
2) clear ;
    trialws
    ;;
3) clear ;
    delws
    ;;
4) clear ;
    renewws
    ;;
5) clear ;
    cekws
    ;;
*) clear ;
    menu
    ;;
esac
 m-vmess.temp1.sh 