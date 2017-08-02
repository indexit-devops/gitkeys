#!/bin/bash

sudo yum install git -y &>/dev/null
wget https://github.com/github/hub/releases/download/v2.3.0-pre10/hub-linux-amd64-2.3.0-pre10.tgz &>/dev/null
tar xf hub-linux-amd64-2.3.0-pre10.tgz 
cd hub-linux-amd64-2.3.0-pre10
sudo ./install
cd 

git clone https://linuxautomations@bitbucket.org/linuxautomations/gitkeys.git
mkdir -p ~/.ssh
chmod 700 ~/.ssh
mkdir -p ~/bin
cp gitkeys/Git ~/bin
cp gitkeys/gitset ~/bin
chmod +x ~/bin/Git ~/bin/gitset

cd gitkeys/SSH 
cp config* carreerit indexit linuxauto ~/.ssh
cd ~/.ssh
chmod 600 *
