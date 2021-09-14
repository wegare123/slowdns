#!/bin/bash
#slowdns (Wegare)
printf 'ctrl+c' | crontab -e > /dev/null
opkg update && opkg install fping
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/slowdns/main/slowdns.sh" -O /usr/bin/slowdns
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/slowdns/main/autorekonek-slowdns.sh" -O /usr/bin/autorekonek-slowdns
chmod +x /usr/bin/slowdns
chmod +x /usr/bin/autorekonek-slowdns
rm -r ~/install.sh
mkdir -p ~/akun/
touch ~/akun/slowdns.txt
touch ~/akun/ipmodem.txt 
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'slowdns'"
				