#!/usr/bin/env bash
#░█    ▌        ▌
#░█    ▛▀▖▝▀▖▞▀▘▛▀▖▙▀▖▞▀▖
#░█  ▗▖▌ ▌▞▀▌▝▀▖▌ ▌▌  ▌ ▖
#░█  ▝▘▀▀ ▝▀▘▀▀ ▘ ▘▘  ▝▀

#░█  If not running interactively, do nothing.
if [[ ! $- == *i* ]]; then return; fi

#░█  Source all files in ~/.bashrc.d && ~/.bashrc.local.d in alphabetical order.
#░█    https://www.gnu.org/software/bash/manual/bashref.html#Filename-Expansion
for config in ~/.bashrc.d/* ~/.bashrc.local.d/*; do
  source "$config"
done
