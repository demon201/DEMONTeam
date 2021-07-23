#!/bin/bash
echo -e "+--- Newton\n\n'|.   '|'                       .                    \n |'|   |    ....  ... ... ... .||.    ...   .. ...   \n | '|. |  .|...||  ||  ||  |   ||   .|  '|.  ||  ||  \n |   |||  ||        ||| |||    ||   ||   ||  ||  ||  \n.|.   '|   '|...'    |   |     '|.'  '|..|' .||. ||. \n\n+--- Newton"
Version=`lsb_release -rs | cut -f1 -d"."`
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y curl -y htop -y wget -y
if [ "$Version" == "18" ];then
cd /lib/x86_64-linux-gnu/ && sudo ln -s libreadline.so.7.0 libreadline.so.6
wget "th3boss.com/installubuntu18/compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb" && sudo dpkg -i compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
rm compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
fi
sudo apt-get install screen -y
sudo apt-get install libstdc++6 -y
sudo apt-get install lua-lgi -y
sudo apt-get install libnotify-dev -y
sudo service redis-server start
sudo apt-get update -y
sudo apt-get install g++-4.7 -y c++-4.7
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz
cd luarocks-2.2.2
./configure && make && sudo make install
sudo luarocks install luasec
sudo luarocks install luasocket
sudo luarocks install luautf8
cd .. ;sudo rm -fr ./luarocks*
sudo timedatectl set-timezone Asia/Baghdad
echo -e "+--- Newton\n\n'|.   '|'                       .                    \n |'|   |    ....  ... ... ... .||.    ...   .. ...   \n | '|. |  .|...||  ||  ||  |   ||   .|  '|.  ||  ||  \n |   |||  ||        ||| |||    ||   ||   ||  ||  ||  \n.|.   '|   '|...'    |   |     '|.'  '|..|' .||. ||. \n\n+--- Newton"
