#! /bin/sh

sudo apt-get install git vim tmux feh

# Install Vim-Plugins
mkdir ~/.vim/bundle && cd ~/.vim/bundle

# PLUGIN: VimWiki
git clone https://github.com/vimwiki/vimwiki.git

# PLUGIN: StatusBar (Lightline)
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

# PLUGIN: EAGLE-VIEW FOCUS (Limelight, Goyo)
git clone https://github.com/junegunn/limelight.vim.git
git clone https://github.com/junegunn/goyo.vim.git

# PLUGIN: Search (Ctrlp)
git clone https://github.com/kien/ctrlp.vim.git 

# .py PLUGIN: python-mode
git clone --recurse-submodules https://github.com/python-mode/python-mode.git

# PLUGIN: ALE - Asynchronous Lint Engine
git clone https://github.com/dense-analysis/ale.git

# PLUGIN: vim-gitgutter
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q

# sudo apt-get install binwalk feh nitrogen dmenu polybar vifm ranger 

