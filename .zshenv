typeset -U path

path=(~/bin ~/.local/bin ~/Private/Install/texlive-2012/bin/x86_64-linux $path)
fpath=(~/.zsh/completion $fpath)

if test x"$TERM" = x"xterm"; then
    TERM="xterm-256color"
elif test x"$TERM" = x"screen"; then
    TERM="screen-256color"
fi
