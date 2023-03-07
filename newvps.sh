#!/bin/bash
wget https://github.com/marklma/newvps/raw/main/sources.list
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo mv ./sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade -y

apt-get install python-pip -y
sudo apt install libsodium-dev m2crypto
sudo apt-get install wicd -y
sudo apt-get install lxpolkit -y
sudo apt-get install gnome-system-tools -y
sudo apt-get install udisks2 -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install lxde-core -y
sudo apt-get install lxde -y
sudo apt-get install xrdp -y
sudo apt-get purge xterm
sudo apt-get install language-pack-zh-hans -y
sudo apt-get install fonts-arphic-bkai00mp fonts-arphic-bsmi00lp fonts-arphic-gbsn00lp fonts-arphic-ukai -y

pip install shadowsocks
sudo sed -i "s/CIPHER_CTX_cleanup/CIPHER_CTX_reset/g" /usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py

wget https://github.com/marklma/newvps/raw/main/shadowsocks.json
sudo nano ./shadowsocks.json