#~/.bashrc
#
if [[ ! $- == *i* ]]; then return; fi

for conf in $HOME/.bashrc.d/*; do [[ -f "$conf" ]] && source $conf; done;
