#!/bin/bash
DIR=$(mktemp -d)
git clone --depth=1 https://github.com/talyian/dotfiles "$DIR"
. "$DIR/bootstrap.sh"

