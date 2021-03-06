#!/bin/bash
##
# Ubuntu 18.04 bootstrap scripts
# based on (https://github.com/deadbits/ubuntu-bootstrap)
# https://github.com/junkbot/ubuntu-bootstrap
# 
# Comment out any source action you dont want to use.
# View the README.md file for detailed information on the entire process and
# what each script does.
## 

# Require sudo
sudo -v
## sudo keepalive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
#
echo "Ubuntu Boostrap (https://github.com/junkbot/ubuntu-bootstrap)"
echo "***"
echo " "

sudo apt-get -qq install -y git
git clone https://www.github.com/junkbot/ubuntu-bootstrap
cd ubuntu-bootstrap

clear

work=$HOME/bootstrap-temp
repo=`pwd`

# install system packages and settings
source $repo/core/system.sh

# install oh-my-zsh and dotfile
#source $repo/core/omz.sh

# install vim settings and colors
source $repo/core/vim.sh

# install python and additional libraries
source $repo/core/python.sh

# setup Github account
source $repo/core/github.sh

# install third-party software
source $repo/core/third_party.sh

# install YouCompleteMe
cp $repo/conf/vim/ycm_extra_conf.py $HOME/.vim/
source $repo/core/ycm.sh
