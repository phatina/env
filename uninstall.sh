#!/bin/bash

[ -L $HOME/.gdbinit ] && unlink $HOME/.gdbinit
[ -L $HOME/.gitconfig ] && unlink $HOME/.gitconfig
[ -L $HOME/.tmux.conf ] && unlink $HOME/.tmux.conf
[ -L $HOME/.vim ] && unlink $HOME/.vim
[ -L $HOME/.vimrc ] && unlink $HOME/.vimrc
[ -L $HOME/.zsh ] && unlink $HOME/.zsh
[ -L $HOME/.zshalias ] && unlink $HOME/.zshalias
[ -L $HOME/.zshenv ] && unlink $HOME/.zshenv
[ -L $HOME/.zshrc ] && unlink $HOME/.zshrc
