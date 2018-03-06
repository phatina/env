#!/bin/zsh

git submodule update --init --recursive
[ -d prezto/modules/personal ] || mkdir prezto/modules/personal
cp -n prezto-runcoms/* prezto/runcoms
cp -n prezto-modules-personal/* prezto/modules/personal

# ------------------------------------------------------------------------------
# Various environment
# ------------------------------------------------------------------------------
[ -L $HOME/.gdbinit ] || ln -s -f $PWD/.gdbinit $HOME
[ -L $HOME/.gitconfig ] || ln -s -f $PWD/.gitconfig $HOME
[ -L $HOME/.tmux ] || ln -s -f $PWD/.tmux $HOME
[ -L $HOME/.tmux.conf ] || ln -s -f $PWD/.tmux.conf $HOME
[ -L $HOME/.vim ] || ln -s -f $PWD/.vim $HOME
[ -L $HOME/.vimrc ] || ln -s -f $PWD/.vimrc $HOME
[ -L $HOME/.ycm_extra_conf.py ] || ln -s -f $PWD/.ycm_extra_conf.py $HOME
[ -L $HOME/.config/nvim ] || ln -s $PWD/.config/nvim $HOME

# -----------------------------------------------------------------------------
# ZSH
# ------------------------------------------------------------------------------

# Install Prezto
[ -L $HOME/.zprezto ] || ln -s $PWD/prezto $HOME/.zprezto

# Install ZSH dotfiles
setopt EXTENDED_GLOB
for rcfile in prezto/runcoms/^README.md(.N); do
    [ -L $HOME/.$rcfile ] || ln -s "$PWD/$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
