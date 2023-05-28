#!/bin/zsh
set HIST_IGNORE_DUPS

export ZSH_OPT=$ZSH_DIR/opt
export ZSH_VAL=$ZSH_DIR/val
export EDITOR="nano"

source $ZSH_DIR/sh/get_values
source $ZSH_DIR/sh/colors
source $ZSH_DIR/sh/make_opts
make_opts

export HISTMODE=$(zopt -r histmode)
export HISTFILE=$ZSH_DIR/history/zsh_history_$HISTMODE
export HISTSIZE=10000
export SAVEHIST=10000
export NOTEFILE=$ZSH_DIR/notes
export NL=$'\n'
export ISFIRSTCMD=1
export CONNDEVICE=`zopt -r conn-device`



source $ZSH_DIR/sh/aliases
source $ZSH_DIR/sh/commands
source $ZSH_DIR/sh/precmd
source $ZSH_DIR/sh/bindings


if isopton show-welcome; then
   source $ZSH_DIR/welcome
fi

if isopton show-help-cmd; then
   echo -e "\n\tPress "`clr '<ESC>-h' 1`" for to view help page.\n"
fi

# ================================================================================================ #
# basic autocomplete settings
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)