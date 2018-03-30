# Personal alias
alias ls='ls -GF --color'
alias ll='ls -GFhl --color'
alias grep='grep --color'
alias m='make'
alias mm='make -j4'
alias e='vim'
alias ee='gvim'
alias cp_ycm_extra_conf='cp ~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py .'

# Directory movement
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias gdbtui='gdb -tui'
alias ipython='ipython --no-confirm-exit'

# Git module mods
alias ga='git add'
alias gc!='git commit --amend'
alias gcm='git checkout master'
alias gd='git diff'
alias gst='git status'

# Function definitions
function mkcd {
    mkdir -p $1 && cd $1
}
