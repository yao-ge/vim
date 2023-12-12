#!/bin/bash

apt-get update -y 
apt-get upgrade -y
apt-get install build-essential cmake vim-nox python3-dev clang libclang-dev clang-tidy clang-format -y
apt-get install mono-complete nodejs default-jdk npm gnutls-bin xdg-utils curl -y
apt-get install golang git -y
apt-get remove
apt-get autoremove

#npm i -g install instant-markdown-d

if [ ! -d ~/.vim/bundle ]
then
	mkdir -p ~/.vim/bundle
fi

if [ ! -d ~/.vim/autoload ]
then
	mkdir -p ~/.vim/autoload
    cp ./pathogen.vim ~/.vim/autoload/
	#wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim ~/.root/autoload/
fi

cp ./vimrc_latest ~/.vimrc

# get bundle
apt-get install gnutls-bin
export GIT_SSL_NO_VERIFY=1
git config --global http.sslVerify false
git config --global http.postBuffer 1048576000
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ ! -d ~/.vim/bundle/nerdtree ]
then
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi
if [ ! -d ~/.vim/bundle/nerdtree-git-plugin ]
then
	git clone --recursive https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
fi
if [ ! -d ~/.vim/bundle/vim-devicons ]
then
	git clone --recursive https://github.com/ryanoasis/vim-devicons.git ~/.vim/bundle/vim-devicons
fi
if [ ! -d ~/.vim/bundle/syntastic ]
then
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
fi
if [ ! -d ~/.vim/bundle/vim-airline ]
then
	git clone --depth=1 https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
fi
if [ ! -d ~/.vim/bundle/vim-colors-solarized ]
then
	git clone --recursive https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi
if [ ! -d ~/.vim/bundle/YouCompleteMe ]
then
	git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
	go env -w GO111MODULE=on
	go env -w GOPROXY=https://goproxy.cn,direct
	echo "export GO111MODULE=on" >> ~/.profile
	echo "export GOPROXY=https://goproxy.cn" >> ~/.profile
	echo "export GOPROXY=https://goproxy.cn" >> ~/.profile
	cd ~/.vim/bundle/YouCompleteMe/ && python3 ./install.py --clangd-completer --force-sudo
fi
