
# Adds local/bin to PATH:
export PATH="$PATH:$HOME/.local/bin/:$HOME/.local/bin/personal"

# Default programs:
export EDITOR="nvim"
export TERMINAL="gnome-terminal"
export BROWSER="brave-browser"
export READER="zathura"
export FILE="ranger"

# Home clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export ZDOTDIR="$HOME/.config/zsh"
# export HISTFILE="$XDG_DATA_HOME/history"

export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

export HISTFILE="$XDG_CACHE_HOME/history"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python

# Other settings:
export GPGRECIPIENT="pieter@pietercoremans.xyz"
