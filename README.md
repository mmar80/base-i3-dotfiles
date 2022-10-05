# What is this?

This repository contains an opinionated set of config files for quickly setting up a freshly-installed Debian-ishsystem without a desktop environment into a basic i3 desktop environment with standard development tooling.

The setup, after complete, is fully usable as-is. It can also be used as a base system to transition or upgrade to Sway.

## How to use this repository

This repository is intended to be used to assist in setting up newly-formatted Debian systems without a desktop environment. It has been tested on the following distributions:

- Debian 11
- Raspberry Pi OS

## Install dependencies

Install the following through the package manager:

- xorg
- rxvt-unicode
- i3-wm
- i3status
- tree
- locate
- tmux
- git
- chromium (chromium-browser if on Rasbian)
- dmenu
- gnome-themes-standard
- ninja-build
- clang
- zsh
- lxappearance
- cmake
- make
- doxygen
- liblua5.2
- liblua5.2-0-dev
- luarocks
- xwayland
- xdg-desktop-portal-wlr


Install the following from source, using the linked instructions from the repos:

- neovim

Install the following from luarocks:

`sudo luarocks install luasocket`

## Clone and rename the dotfiles repository

Clone the repository in ~ and rename the directory from base-i3-dotfiles to ~/dotfiles.

## Source .zshenv

Run the following to pick up the environment variables before running the installer:

`source ~/dotfiles/zsh/.zshenv`

## Run install.sh 

Change mode on install.sh to executable:

`sudo chmod u+x install.sh`

Run install.sh:

`./install.sh`

Run tree in ~/.config to confirm the symlinks were created correctly.

## Change shell to zsh

Change the shell to zsh:

`chsh -s $(which zsh)`

## Reboot

Reboot and, if successful, you will see the i3 status bar. Use MENU+ENTER to invoke the terminal (unicode-rxvt).

## How does this work?

Xinit invokes i3 in the .zshrc file, which along with .zshenv, are sourced on boot and new shell creation in Zsh. 
