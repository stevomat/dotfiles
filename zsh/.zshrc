#!/bin/sh

# path: ~/.zshrc

export LANG=en_US.UTF-8
export LANGUAGE=en

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

export ZDOTDIR=$HOME/.config/zsh
setopt appendhistory

# options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# completions
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
#zstyle ':completion::complete:lsof:*' menu yes select
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' #'m:{a-z}={A-Za-z}'
zmodload zsh/complist
#compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# init Functions
source "$ZDOTDIR/zsh-functions"

# add files
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"
#zsh_add_file "zsh-exports"
#zsh_add_file "zsh-vim-mode"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "unixorn/fzf-zsh-plugin"

source "$ZDOTDIR/plugins/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh"

# use the vi navigation keys in menu completion
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
