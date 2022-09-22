fpath=($ZDOTDIR/external $fpath)

autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)

# load zsh-completions from repository in home directory
fpath=(/home/ops/zsh-completions/src $fpath)

source ~/dotfiles/zsh/external/completion.zsh
source ~/dotfiles/zsh/aliases

# set a fancy prompt here
# there are some different ones in $DOTFILES/zsh/external
autoload -Uz prompt_purification_setup; prompt_purification_setup

# push the current dir visited to the stack
setopt AUTO_PUSHD
# do not store dupe dir in stack
setopt PUSHD_IGNORE_DUPS
# do not print dir stack after using pushd or popd
setopt PUSHD_SILENT


# start i3 on startup
if [ "$(tty)" = "/dev/tty1" ];
then
	pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

