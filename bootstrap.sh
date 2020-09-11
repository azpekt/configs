#!/bin/bash

# installing necessary shit
sudo apt update && sudo apt install -y zsh golang

# changing default shell to zsh
sudo chsh -s /bin/zsh ubuntu

# getting proper powerline
go get -u github.com/justjanne/powerline-go

# installing vim plugins
## vim-go for Golang development
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
## nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# finally, putting all the configs in place
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf


