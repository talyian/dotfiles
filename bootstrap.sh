#!/bin/bash
SELF="${BASH_SOURCE[0]}"
DIR=$(dirname "$SELF")
pushd "$DIR" >/dev/null

(cat <<EOF

tmux/.tmux.conf        ~/.tmux.conf
bash/.bash_profile     ~/.bash_profile
emacs/.emacs           ~/.emacs
emacs/.emacs.d/init.el ~/.emacs.d/init.el

EOF
) | while read src dest; do
    src=$(readlink -f "$src")
    dest="${dest/#\~/$HOME}"
    if [[ ! -f "$src" ]]; then continue; fi
    if   [[ -e "$dest" ]]; then echo "file exists: $dest"
    elif [[ -h "$dest" ]]; then echo "link exists: $dest"
    else echo "moving file: $dest"; ln -s "$src" "$dest"
    fi
done
popd >/dev/null
