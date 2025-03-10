#!/bin/bash
clear
# Color Type 9
CY="\e[96;1m" # Cyan
CyanBee="\e[5;36m" # BlueCyan
GreenBe="\e[5;32m" # Green / hijau
WhiteBe="\e[5;37m" # White / Putih
Green="\e[92;1m"
GREEN="\e[92;1m"
RED="\e[91;1m"
# Color type 38
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

# . Liner L1
function L1() {
  echo -e "${UK}┌──────────────────────────────────────────┐ ${Suffix} "
}


# . Liner L2
function L2() {
  echo -e "${UK}└──────────────────────────────────────────┘ ${Suffix}"
}


# . Liner Horizontal
function Horizontal(){
  echo -e "${UK}———————————————————————————————————————————      ${Suffix}"
}

  
  # // Backend Banner
function Pusat_Banner() {
clear
L1
echo -e "${CyanBee}               PUSAT  DIGITAL                  ${Suffix}"
L2
}

  # // Thanks To  DIGITAL
function Sc_Credit(){
sleep 2
L1
echo -e "${CyanBee}       Terimakasih Telah Menggunakan-      ${Suffix}"
echo -e "${CyanBee}                Script Credit              ${Suffix}"
echo -e "${CyanBee}                PUSAT  DIGITAL            ${Suffix}"
L2
read -p "[Enter] Back Menu "
menu
}

function ENVIRONMENT() {
L1
 echo -e "${R2}           ---[ INSTALL SUCCES ]---             ${Suffix}"
L2
}

# // Submit Loading : sleep 3 & loading $!
function loading() {
clear
echo
echo
echo
  local pid=$1
  local delay=0.1
  local spin='-\|/'

  while ps -p $pid > /dev/null; do
    local temp=${spin#?}
    printf "[%c] " "$spin"
    local spin=$temp${spin%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done

  printf "    \b\b\b\b"
}

function Format_Just_Input() {
Pusat_Banner
L1
echo ""
echo -e "${GreenBe} Just Input a number ${Suffix}"
echo -e "${WhiteBe} Format Number in day${Suffix}"
echo -e ""
echo -e "${CyanBee} 1 = 1 day ${Suffix}"
echo -e "${CyanBee} 2 = 2 day ${Suffix}"
echo ""
L2
echo ""
}




cd
rm -rf /root/udp
mkdir -p /root/udp

# change to time GMT+7
echo "change to time GMT+7"
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# install udp-custom
echo downloading udp-custom
wget -q --show-progress --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ixz82G_ruRBnEEp4vLPNF2KZ1k8UfrkV' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ixz82G_ruRBnEEp4vLPNF2KZ1k8UfrkV" -O /root/udp/udp-custom && rm -rf /tmp/cookies.txt
chmod +x /root/udp/udp-custom

echo downloading default config
wget -q --show-progress --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1klXTiKGUd2Cs5cBnH3eK2Q1w50Yx3jbf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1klXTiKGUd2Cs5cBnH3eK2Q1w50Yx3jbf" -O /root/udp/config.json && rm -rf /tmp/cookies.txt
chmod 644 /root/udp/config.json

if [ -z "$1" ]; then
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
else
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server -exclude $1
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
fi

echo start service udp-custom
systemctl start udp-custom &>/dev/null

echo enable service udp-custom
systemctl enable udp-custom &>/dev/null

sleep 3 & loading $!
echo
ENVIROMENT
Sc_Credit udepe.temp1.sh 