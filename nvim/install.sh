# /bin/bash

cp -rf vim "${HOME}"/.vim
mkdir -p "${HOME}"/.vim/swap
mkdir -p "${HOME}"/.vim/undodir
mkdir -p:x
cp -f coc-settings.json coc.vim init.vim nvimrc.vim "${HOME}"/.config/nvim
nvim +PlugInstall +q +q
