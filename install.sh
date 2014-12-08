#!/bin/bash

[ -L $HOME/.gdbinit ] || ln -s $PWD/.gdbinit $HOME
[ -L $HOME/.gitconfig ] || ln -s $PWD/.gitconfig $HOME
[ -L $HOME/.tmux.conf ] || ln -s $PWD/.tmux.conf $HOME
[ -L $HOME/.vim ] || ln -s $PWD/.vim $HOME
[ -L $HOME/.vimrc ] || ln -s $PWD/.vimrc $HOME
[ -L $HOME/.zsh ] || ln -s $PWD/.zsh $HOME
[ -L $HOME/.zshalias ] || ln -s $PWD/.zshalias $HOME
[ -L $HOME/.zshenv ] || ln -s $PWD/.zshenv $HOME
[ -L $HOME/.zshrc ] || ln -s $PWD/.zshrc $HOME
