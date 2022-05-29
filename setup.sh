#!/bin/bash
#
#
#

if [[ $EUID != 0 ]] ; then
	echo " "
	echo "[!]Solo root."
	echo " "
	exit
fi

echo "$(tput setaf 1)"

apt update -y &> /dev/null
echo "[*]Updated."
apt full-upgrade -y &> /dev/null
echo "[*]Upgraded."
apt install whiptail -y &> /dev/null
echo "[*]Whiptail OK"
apt install -y sysvinit-utils &> /dev/null
echo "[*]Sys-utils OK"
chmod +x serWices
cp serWices /usr/bin/
echo "[*]serWices OK"
echo " "
sleep 1
echo "$(tput setaf 12)[*]Done."
echo " "
