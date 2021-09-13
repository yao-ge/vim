#!/bin/bash

# get bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone --recursive https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
git clone --recursive https://github.com/ryanoasis/vim-devicons.git ~/.vim/bundle/vim-devicons
#mkdir -p ~/.vim/autoload ~/.vim/bundle && wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim ~/.root/autoload/
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone --depth=1 https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone --recursive https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
apt install build-essential cmake vim-nox python3-dev clang libclang-dev clang-tidy -y
apt install mono-complete nodejs default-jdk npm gnutls-bin -y
#apt-get install golang -y
git config --global http.sslVerify false
git config --global http.postBuffer 1048576000
git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
echo "export GO111MODULE=on" >> ~/.profile
echo "export GOPROXY=https://goproxy.cn" >> ~/.profile
echo "export GOPROXY=https://goproxy.cn" >> ~/.profile
#cd ~/.vim/bundle/YouCompleteMe/ && python3 ./install.py --all
