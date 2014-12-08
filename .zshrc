# ZSH configuration file by Peter Hatina <phatina@gmail.com>

# ------------------------------------------------------------------------------
# Core configuration
# ------------------------------------------------------------------------------

# Command aliases
source ~/.zshalias

# Bash-style word deletion <ctrl+w>
autoload -U select-word-style
select-word-style bash

# Load commands options completion
autoload -U compinit && compinit
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# Case-insensitive completion (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
       'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Initialize colors
autoload -U colors && colors

# Bash-like comments
setopt interactivecomments

# Exports variables
export GREP_OPTIONS='--color=auto'
export PAGER='less'

# Set up large history
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.zsh_history

# Allow for functions in the prompt
setopt PROMPT_SUBST

# -----------------------------------------------------------------------------
# Prompts
# -----------------------------------------------------------------------------

# Git prompt
source ~/.zsh/git-prompt/gitstatus.sh
ZSH_THEME_GIT_PROMPT_NOCACHE=1

# Set the prompt
PROMPT=$'[%F{cyan}%n%F{default}@%F{green}%m%F{default} %c%F{default}]$(git_super_status) (%(?,%F{green}%?,%F{red}%?))%F{default} $ '
# RPROMPT='%* [%(?,%F{green}%?,%F{red}%?)%f]'

# -----------------------------------------------------------------------------
# Key bindings
# -----------------------------------------------------------------------------

bindkey '^[[1;5C' emacs-forward-word
bindkey '\e[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[3~'   delete-char
#bindkey '^[[3;5~' kill-word
#bindkey '^?'      backward-kill-word

typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
