```
          ██            ██     ████ ██  ██
         ░██           ░██    ░██░ ░░  ░██
         ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
      ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
     ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
    ░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
    ░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
     ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░
 ```

# Installation
### Download
    git clone git@github.com:triangletodd/dotfiles.git
    cd dotfiles

### Caveats
Any of the stow packages in this repository that have a .bashrc.d folder
require that the provided bash package be stowed or the following line
somewhere in your startup scripts (ie. ~/.bashrc):

```shell
for config in ~/.bashrc.d/*; do
  source "$config"
done
```

### Using my Makefile
I will use the bash package in my example commands that require a package name.

###### Stow all packages
    make stow

###### Restow all packages
    make restow

###### Delete all packages
    make delete

###### Stow a single package
    make stow-bash

###### Restow a single package
    make restow-bash

###### Unstow a single package
    make delete-bash

### Simulation runs
All of the make commands can be prefixed with `dry-` which will do a simulation
run of the command you prefixed.

###### Simulate stowing all packages
    make dry-stow

###### Simulate restowing all packages
    make dry-restow

###### Simulate deleting all packages
    make dry-delete

###### Simulate stowing a single package
    make dry-stow-bash

###### Simulate restowing a single package
    make dry-restow-bash

###### Simulate unstowing a single package
    make dry-delete-bash

# More information
#### GNU Make
- [Homepage](https://www.gnu.org/software/make/)
- [Manual](https://www.gnu.org/software/make/manual/make.html)

#### GNU Stow
- [Homepage](https://www.gnu.org/software/stow/)
- [Manual](https://www.gnu.org/software/stow/manual/stow.html)
