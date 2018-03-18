#!/bin/bash

#adding vim repo to update it to vim8
sudo curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo

sudo yum update -y vim*

# installing goodies
sudo yum install -y git
sudo yum install -y screen

# getting configs
git clone https://github.com/azpekt/configs.git

# getting vim prompt repo
rm -rf ~/.vim*
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# getting powerline shell config and installing
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
sudo python setup.py install

# copying bash config file to homedir
cp ~/configs/.bashrc ~/
source ~/.bashrc

# cleaning shit
#rm -rf ~/configs

# all done!
echo "done, Nik - this baby is all yours...!"
