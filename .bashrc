#~/.bashrc
#
if [[ ! $- == *i* ]]; then return; fi

for conf in $HOME/.bashrc.d/*; do source $conf; done;

for conf in $HOME/.bashrc.d/*; do echo $conf; done;
