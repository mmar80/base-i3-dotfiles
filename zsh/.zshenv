# for dotfiles
export XDG_CONFIG_HOME="$HOME/.config"
export DOTFILES="$HOME/dotfiles"

# for specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# for cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history filepath
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# set a GTK theme
export GTK_THEME=Adwaita:dark

# set the location of vim config
export MYVIMRC="$DOTFILES/nvim/init.vim"

# set clang as c compiler 
export CC=/usr/bin/clang

# set gcc as c++ compiler
export CXX=/usr/bin/gcc

# add go to path
export PATH=$PATH:/usr/local/go/bin

# add rustup to path
. "$HOME/.cargo/env"

# add go bin to path
export PATH=$PATH:/usr/local/go/bin
