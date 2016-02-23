#!/bin/bash

[ -L $HOME/.gdbinit ] && unlink $HOME/.gdbinit
[ -L $HOME/.gitconfig ] && unlink $HOME/.gitconfig
[ -L $HOME/.tmux ] && unlink $HOME/.tmux
[ -L $HOME/.tmux.conf ] && unlink $HOME/.tmux.conf
[ -L $HOME/.vim ] && unlink $HOME/.vim
[ -L $HOME/.vimrc ] && unlink $HOME/.vimrc
[ -L $HOME/.zshalias ] && unlink $HOME/.zshalias
[ -L $HOME/.zshfunctions ] && unlink $HOME/.zshfunctions
[ -L $HOME/.zshenv ] && unlink $HOME/.zshenv

# For now, let's use Oh My ZSH
[ -L $HOME/.zsh ] && unlink $HOME/.zsh
#[ -L $HOME/.zshrc ] && unlink $HOME/.zshrc
[ -L $HOME/.zshrc ] && unlink $HOME/.zshrc
[ -L $HOME/.oh-my-zsh ] && unlink $HOME/.oh-my-zsh
