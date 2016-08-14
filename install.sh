#!/bin/bash

git submodule init
git submodule update

# ------------------------------------------------------------------------------
# Various environment
# ------------------------------------------------------------------------------
[ -L $HOME/.gdbinit ] || ln -s $PWD/.gdbinit $HOME
[ -L $HOME/.gitconfig ] || ln -s $PWD/.gitconfig $HOME
[ -L $HOME/.tmux ] || ln -s $PWD/.tmux $HOME
[ -L $HOME/.tmux.conf ] || ln -s $PWD/.tmux.conf $HOME
[ -L $HOME/.vim ] || ln -s $PWD/.vim $HOME
[ -L $HOME/.vimrc ] || ln -s $PWD/.vimrc $HOME

# ------------------------------------------------------------------------------
# ZSH
# ------------------------------------------------------------------------------
[ -L $HOME/.zshalias ] || ln -s $PWD/.zshalias $HOME
[ -L $HOME/.zshfunctions ] || ln -s $PWD/.zshfunctions $HOME
[ -L $HOME/.zshenv ] || ln -s $PWD/.zshenv $HOME
[ -L $HOME/.zsh ] || ln -s $PWD/.zsh $HOME
#[ -L $HOME/.zshrc ] || ln -s $PWD/.zshrc $HOME
[ -L $HOME/.oh-my-zsh ] || ln -s $PWD/oh-my-zsh $HOME/.oh-my-zsh
[ -L $HOME/.zshrc ] || ln -s $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc

# Append alias file to main rc
cat << EOF >> ~/.zshrc

# Command aliases
source ~/.zshalias
source ~/.zshfunctions
source ~/.zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/custom/plugins/zshmarks/zshmarks.plugin.zsh
EOF
