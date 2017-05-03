#!/bin/zsh

git submodule update --init --recursive

# ------------------------------------------------------------------------------
# Various environment
# ------------------------------------------------------------------------------
[ -L $HOME/.gdbinit ] || ln -s $PWD/.gdbinit $HOME
[ -L $HOME/.gitconfig ] || ln -s $PWD/.gitconfig $HOME
[ -L $HOME/.tmux ] || ln -s $PWD/.tmux $HOME
[ -L $HOME/.tmux.conf ] || ln -s $PWD/.tmux.conf $HOME
[ -L $HOME/.vim ] || ln -s $PWD/.vim $HOME
[ -L $HOME/.vimrc ] || ln -s $PWD/.vimrc $HOME
[ -L $HOME/.ycm_extra_conf.py ] || ln -s $PWD/.ycm_extra_conf.py $HOME
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
