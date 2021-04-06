#! /bin/sh

sudo apt-get install git vim tmux feh

# Install Vim-Plugin
mkdir ~/.vim/bundle && cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git 
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
git clone https://github.com/python-mode/python-mode.git
git clone https://github.com/vimwiki/vimwiki.git

# ALE - Asynchronous Lint Engine
git clone https://github.com/dense-analysis/ale.git

# Install vim-gitgutter
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q

# sudo apt-get install binwalk feh nitrogen dmenu polybar vifm ranger 

