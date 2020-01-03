if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if command -v opam > /dev/null; then
    eval $(opam config env)
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    setxkbmap -option ctrl:swapcaps
fi

if grep -q "Microsoft" /proc/version; then
    export DISPLAY=:0
    export LIBGL_ALWAYS_INDIRECT=1
    alias emacs='emacs -nw'
fi

. ~/.bash.d/completion/git-completion.sh
. ~/.bash.d/completion/tmux-completion.sh
. ~/.bash.d/completion/aws-completion.sh
# . ~/.bash.d/completion/kube-completion.sh


[ -e ~/.bashrc ] && . ~/.bashrc
