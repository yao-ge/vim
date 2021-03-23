## vim config

cp vimrc ~/.vimrc

mkdir ~/.vim

cd ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

go into vim and :PluginInstall and wait


## youcompelteme安装失败：
cd vundle/YouCompleteMe

git submodule update --init --recursive

python install.py

## nerdtree 字体：
brew tap homebrew/cask-fonts

brew install font-hack-nerd-font --cask

修改iterm profile -> text -> Use a different font for non-ASCII text -> DroidSansMono Nerd Font
