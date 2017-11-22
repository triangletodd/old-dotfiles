# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, do nothing.
if [[ ! $- == *i* ]]; then return; fi

# Source all files in ~/.bashrc.d in alphabetical order.
#   https://www.gnu.org/software/bash/manual/bashref.html#Filename-Expansion
for conf in $HOME/.bashrc.d/*; do
  if [[ -f "$conf" ]]; then
    source $conf
  fi
done
