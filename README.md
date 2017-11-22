# dotfiles

This is my ``HOME``.  There are many like it, but this one is mine.

## Installation

To set up a home directory, run:

    curl https://triangletodd.github.io/dotfiles/setup.sh | bash -ex

## Technique

This repo started as a fork of https://github.com/stpierre/dotfiles

From @stpierre's README:
>My technique for managing this stuff is based on @rtomayko's, which is outlined  
at https://github.com/rtomayko/dotfiles.  Basically, my HOME is itself a git  
>work tree, with repo data in ``~/.git``.  To prevent ``git status`` from being  
overwhelmingly noisy, I put ``*`` in ``~/.gitignore``.  This is the only  
difference between my approach and @rtomayko. With my approach, ``.gitignore``  
is itself versioned, whereas his approach relies on the (unversioned)  
``.git/info/exclude`` file.
