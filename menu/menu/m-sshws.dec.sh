#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER SSH                $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreate SSH Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mTrial SSH Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mRenew SSH Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mCheck login SSH Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mList Member${NC}"
echo -e "\033[1;93m│  ${grenbo}6.${NC} \033[0;36mDelete Acount SSH${NC}"
echo -e "\033[1;93m│  ${grenbo}7.${NC} \033[0;36mDelete User Expired${NC}"
echo -e "\033[1;93m│  ${grenbo}8.${NC} \033[0;36mAuto Killer SSH${NC}"
echo -e "\033[1;93m│  ${grenbo}9.${NC} \033[0;36mCheck User MultiLogin${NC}"
echo -e "\033[1;93m│  ${grenbo}10.${NC} \033[0;36mLock User SSH${NC}"
echo -e "\033[1;93m│  ${grenbo}11.${NC} \033[0;36mUnlock User SSH${NC}"
echo -e "\033[1;93m│  ${grenbo}12.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 11 or 12 ] : " menu
echo -e ""
case $menu in
1)
    addssh
    ;;
2)
    trial
    ;;
3)
    renewssh
    ;;
4)
    cekssh
    ;;
5)
    member
    ;;
6)
    delssh
    ;;
7)
    delexp
    ;;
8)
    autokill
    ;;
9)
    ceklim
    ;;
10) 
    clear
    lock
   ;;
11)
    clear
    unlock
    ;;
*)
    menu
    ;;
esac
 m-sshws.temp1.sh 