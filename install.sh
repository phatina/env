#!/bin/bash

[ -L $HOME/.gdbinit ] || ln -s $PWD/.gdbinit $HOME
[ -L $HOME/.gitconfig ] || ln -s $PWD/.gitconfig $HOME
[ -L $HOME/.tmux.conf ] || ln -s $PWD/.tmux.conf $HOME
[ -L $HOME/.vim ] || ln -s $PWD/.vim $HOME
[ -L $HOME/.vimrc ] || ln -s $PWD/.vimrc $HOME
[ -L $HOME/.zshalias ] || ln -s $PWD/.zshalias $HOME
[ -L $HOME/.zshenv ] || ln -s $PWD/.zshenv $HOME

# For now, let's use Oh My ZSH
#[ -L $HOME/.zsh ] || ln -s $PWD/.zsh $HOME
#[ -L $HOME/.zshrc ] || ln -s $PWD/.zshrc $HOME
[ -L $HOME/.oh-my-zsh ] || ln -s $PWD/oh-my-zsh $HOME/.oh-my-zsh
[ -L $HOME/.zshrc ] || ln -s $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
