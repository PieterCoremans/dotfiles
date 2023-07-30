# Source aliases
source ~/.config/zsh/.aliasrc

# History
HISTSIZE=10000
SAVEHIST=10000
# HISTFILE="$XDG_CACHE_HOME/zsh/history"
# setopt appendhistory inc_append_history 

# Editor
autoload -z edit-command-line
zle -N edit-command-line

# Vi keybinds
bindkey -v
#bindkey -M vicmd v edit-command-line
export KEYTIMEOUT=1

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  # Include hidden files.

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Git stuff for prompt
autoload -Uz vcs_info  # Where do these come from? What else is there?
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%f'
zstyle ':vcs_info:*' enable git
setopt prompt_subst

# Prompt
autoload -U colors && colors
#[[ "$PROMPT" = "%m%# " ]] && PROMPT='[%n@%m]%~%# '    # default prompt
PROMPT='%F{green}%n@%F{cyan}%m:%B%~%b %f%# '
RPROMPT='%D %*'

# Prompt with Git stuff added
PROMPT+='$vcs_info_msg_0_ '
RPROMPT+=' %(?.√.%?)'

# User specific environment
#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
#then
    #PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#fi

#typeset -U path PATH
#path=(~/.local/bin $path)
#export PATH

# zsh completions
fpath=($HOME/.config/zsh/zsh-completions/src $fpath)

# zsh auto suggestions
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

 # zsh syntax highlighting
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
