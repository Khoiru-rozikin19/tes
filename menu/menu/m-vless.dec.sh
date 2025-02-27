#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m        MENU MANAGER VLESS                $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mTrial Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mDelete Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mRenew Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mCheck Vless Login${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 5 or 0 ] : " menu
case $menu in
1)  clear ;
    addvless
    ;;
2) clear ;
    trialvless
    ;;
3) clear ;
    delvless
    ;;
4) clear ;
    renewvless
    ;;
5) clear ;
    cekvless
    ;;
*)
    menu
    ;;
esac
 m-vless.temp1.sh 