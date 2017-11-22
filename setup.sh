#!/usr/bin/env bash
set -e

# Default umask on WSL is duuuuuuumb
umask 0022

dest=${DOTFILES_HOME:-$HOME}

clone=$(mktemp -d)
git clone https://github.com/triangletodd/dotfiles.git $clone
rsync -av --exclude 'README.md' $clone/ $dest/
rm -rf $clone
cd $dest
git update-index --assume-unchanged README.md
git status
