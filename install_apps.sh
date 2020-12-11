#! /bin/sh

sudo apt-get install git vim tmux feh

# Install Vim-Plugin
mkdir ~/.vim/bundle && cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/powerline/powerline 
git clone https://github.com/python-mode/python-mode.git
git clone https://github.com/vimwiki/vimwiki.git

# sudo apt-get install binwalk feh nitrogen dmenu polybar vifm ranger 

