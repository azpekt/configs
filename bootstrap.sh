#!/bin/bash


sudo yum update

sudo yum install -y git
sudo yum install -y screen

# getting vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/instal l_awesome_vimrc.sh

# getting bash prompt
cd ~
git clone https://github.com/magicmonty/bash-git-pr ompt.git .bash-git-prompt --depth=1

# getting configs
git clone https://github.com/azpekt/configs.git

