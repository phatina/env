typeset -U path

path=(~/bin ~/.local/bin $path)
fpath=(~/.zsh/completion $fpath)

if test x"$TERM" = x"xterm"; then
    TERM="xterm-256color"
elif test x"$TERM" = x"screen"; then
    TERM="screen-256color"
fi

GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
