#!/bin/bash

clear

printf "\e[32m
╔══╦╗╔══╦══╦══╗
╚║║╣║║╔═╣╔╗╠══║
╔║║╣╚╣╚╗║╠╣║══╣
╚══╩═╩══╩╝╚╩══╝
╔═╦══╦═╦══╦╦╦══╗
║╬║╔╗║╬╠╗╗║║║══╣
║╔╣╠╣║╗╬╩╝║║╠══║
╚╝╚╝╚╩╩╩══╩═╩══╝
╔╗─╔╦══╦═╦╦═╗
║╚╦╝╠║║╣║║║╦╝
╚╗║╔╬║║╣║║║╩╗
─╚═╝╚══╩╩═╩═╝
╔╦╦╦╦═╦╦╦╗╔╦╦═╦═╗
║╔╣║║╬║║║║║║║║║║║
║╚╣║║╗╣║║╚╣║║║║║║
╚╩╩═╩╩╩═╩═╩═╩╩═╩╝
╔═════════════════════════
║ \e[31mILGAZ \e[32mPardus Wine
╠═════════════════════════
║ 『x』 Çıkış
╠═════════════════════════
║ 『1』 Kurulum
║ 『2』 Kontrol
║ 『3』 Test Et
║ 『4』 Ayarlar
║ 『5』 Kaldır
║ 『6』 Yazılım Bilgileri
╠═════════════════════════
"
read -e -p $'╚══════〙İşlem Numarası ▶ ' secim

if [[ $secim == x || $secim == X ]]; then
printf "
『!』Kapatılıyor...
"
    sleep 2
    exit
elif [[ $secim == 1 ]]; then
    printf "
『!』Kurulum Başlıyor...

"

sh -c "echo 'deb http://deb.debian.org/debian/ buster-backports main contrib non-free' | sudo tee /etc/apt/sources.list.d/backports.list ; sudo sed -i 's/contrib//g' /etc/apt/sources.list ; sudo sed -i 's/non-free//g' /etc/apt/sources.list ; sudo sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list ; sudo dpkg --add-architecture i386 ; sudo apt update ; sudo apt-get -t buster-backports update ; sudo apt -y install gnupg2 software-properties-common ; wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add - ; sudo apt-add-repository https://dl.winehq.org/wine-builds/debian/ ; wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add - ; echo 'deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./' | sudo tee /etc/apt/sources.list.d/wine-obs.list ; sudo apt update ; sudo apt-get -t buster-backports install wine wine32 libwine fonts-wine -y ; echo 'y' | sudo apt install -f ; sudo apt-get -t buster-backports install winehq-stable -y ; echo 'y' | sudo apt install -f"

    printf "

『!』Kurulum Bitti...

"

sleep 3

bash IPWK.sh
elif [[ $secim == 2 ]]; then
printf "
『!』Kontrol Verileri

"
 
sudo wine --version 
echo 
sleep 4
bash IPWK.sh

elif [[ $secim == 3 ]]; then
printf "
『!』Test Programı Açılıyor...
"
sleep 2
xdg-open test/bin/Debug/test.exe
printf "
『!』Dosya Konumu
『!』test > bin > Debug > test.exe

"
sleep 5 
bash IPWK.sh

elif [[ $secim == 4 ]]; then
printf "
『!』Ayarlar Açılıyor...

"
winecfg
printf "

『!』Ayarlar Açıldı...

"
bash IPWK.sh
elif [[ $secim == 5 ]]; then
printf "\e[31m
『!』Wine Kaldırılsın mı ? [E|H]
"
read -e -p $'▶ ' kaldir
if [[ $kaldir == E || $kaldir == e ]]; then
printf "\e[32m
『!』Wine Kaldırılıyor...
"
sleep 2

sudo apt purge wine*

sudo apt autoremove

sudo rm -rf /etc/apt/sources.list.d/winehq.list
printf "\e[32m
『!』Wine Kaldırıldı...
"
sleep 3

bash IPWK.sh
elif [[ $kaldir == H || $kaldir == h ]]; then
printf "\e[32m
『!』Wine Kaldırma İşlemi İptal Edildi...
"
sleep 2

bash IPWK.sh
fi
elif [[ $secim == 6 ]]; then
printf "\e[32m
╔══╦╗╔══╦══╦══╗
╚║║╣║║╔═╣╔╗╠══║
╔║║╣╚╣╚╗║╠╣║══╣
╚══╩═╩══╩╝╚╩══╝
╔═╦══╦═╦══╦╦╦══╗
║╬║╔╗║╬╠╗╗║║║══╣
║╔╣╠╣║╗╬╩╝║║╠══║
╚╝╚╝╚╩╩╩══╩═╩══╝
╔╗─╔╦══╦═╦╦═╗
║╚╦╝╠║║╣║║║╦╝
╚╗║╔╬║║╣║║║╩╗
─╚═╝╚══╩╩═╩═╝
╔╦╦╦╦═╦╦╦╗╔╦╦═╦═╗
║╔╣║║╬║║║║║║║║║║║
║╚╣║║╗╣║║╚╣║║║║║║
╚╩╩═╩╩╩═╩═╩═╩╩═╩╝
╔═════════════════════════
║ YAPIMCI : \e[31mILGAZ\e[32m
╠═════════════════════════
║ 『a』 Ana Menü
╠═════════════════════════
║ 『Instagram』 \e[31m@ilgazos\e[32m
║ 『Github』 \e[31m@ilgazos\e[32m
║ 
║ 『Bilgiler』
║  Bu program \e[31mILGAZ\e[32m
║  tarafından wine 
║  kurulumunu ve testlerini 
║  otomatik olarak yapmak 
║  için kodlanmış bir araçtır 
╠═════════════════════════
║ 『!』Ana Sayfaya 
║ 『!』Yönlendiriliyorsunuz...
╚═════════════════════════
"
sleep 7
bash IPWK.sh
fi 
