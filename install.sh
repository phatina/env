#!/bin/zsh

git submodule update --init --recursive

# ------------------------------------------------------------------------------
# Prezto
# ------------------------------------------------------------------------------
[ -d prezto/modules/zshmarks ] || \
    git clone git@github.com:jocelynmallon/zshmarks.git prezto/modules/zshmarks
[ -d prezto/modules/personal ] || mkdir prezto/modules/personal
cp -f prezto-runcoms/* prezto/runcoms
rm -fr prezto/modules/personal
mkdir prezto/modules/personal
cp -f prezto-modules-personal/* prezto/modules/personal/

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

# -----------------------------------------------------------------------------
# ZSH
# ------------------------------------------------------------------------------
[ -L $HOME/.zsh ] || ln -s -f $PWD/.zsh $HOME/.zsh

# Install Prezto
[ -L $HOME/.zprezto ] || ln -s -f $PWD/prezto $HOME/.zprezto

# Install ZSH dotfiles
setopt EXTENDED_GLOB
for rcfile in prezto/runcoms/^README.md(.N); do
    [ -L $HOME/.$rcfile ] || ln -s -f "$PWD/$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
