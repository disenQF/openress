#!/bin/bash
yum groupinstall "Development tools"
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel -y
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
tar xvf Python-3.7.0.tgz
cd Python-3.7.0
./configure --prefix=/usr/local
make & make install
ln -s /usr/local/bin/python3.7 /usr/bin/python3.7
ln -s /usr/local/bin/pip3 /usr/bin/pip3
cd ~
pip3 -V
python3.7 -V
