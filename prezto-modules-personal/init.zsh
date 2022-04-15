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

# Tmux
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"

# Git module mods
alias ga='git add'
alias gc!='git commit --amend'
alias gcm='git checkout master'
alias gd='git diff'
alias gst='git status'
alias gbrr='git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done'
alias gdbtui='gdb -tui'

# Yocto
alias bb='bitbake'

# Function definitions
function mkcd {
    mkdir -p $1 && cd $1
}

PATH=$HOME/Work/cpi/bin:$PATH
