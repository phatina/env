#!/bin/zsh

# Configuration files
configs=($HOME/.gdbinit \
         $HOME/.gitconfig \
         $HOME/.tmux \
         $HOME/.tmux.conf \
         $HOME/.vim \
         $HOME/.vimrc \
         $HOME/.zshrc \
         $HOME/.zprezto \
         $HOME/.zshenv \
         $HOME/.zlogin \
         $HOME/.zlogout \
         $HOME/.zpreztorc \
         $HOME/.zprofile \
         $HOME/.zshalias)

for config in $configs; do
    [ -L $config ] && unlink $config
done
