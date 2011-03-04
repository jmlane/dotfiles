#!/bin/bash
# .BASHRC - jmlane@makeit.ca
# For use with interactive shells only!
[ -z "$PS1" ] && return

# COLOURS
export CLICOLOR=1 
export COLOUR_NC='\e[0m' # No colour
export COLOUR_WHITE='\e[1;37m'
export COLOUR_BLACK='\e[0;30m'
export COLOUR_BLUE='\e[0;34m'
export COLOUR_LIGHT_BLUE='\e[1;34m'
export COLOUR_GREEN='\e[0;32m'
export COLOUR_LIGHT_GREEN='\e[1;32m'
export COLOUR_CYAN='\e[0;36m'
export COLOUR_LIGHT_CYAN='\e[1;36m'
export COLOUR_RED='\e[0;31m'
export COLOUR_LIGHT_RED='\e[1;31m'
export COLOUR_PURPLE='\e[0;35m'
export COLOUR_LIGHT_PURPLE='\e[1;35m'
export COLOUR_BROWN='\e[0;33m'
export COLOUR_YELLOW='\e[1;33m'
export COLOUR_GRAY='\e[1;30m'
export COLOUR_LIGHT_GRAY='\e[0;37m'

# PROMPTS
export SUDO_PS1="\[${COLOUR_RED}\]\w \\$ \[${COLOUR_NC}\]"
if [ $(id -u) -eq 0 ]; then export PS1=${SUDO_PS1};
else export PS1="\[${COLOUR_GREEN}\]\w \\$ \[${COLOUR_NC}\]"; fi

shopt -s checkwinsize
export PAGER=less
export EDITOR=vi
`type -P vim &>/dev/null` && export EDITOR=vim
`type -P mvim &>/dev/null` && alias gvim=mvim # Prefer MacVim over GVim
`type -p gvim &>/dev/null` && export VISUAL=gvim

# LOCAL RUN COMMANDS
if [ -f ~/.bashrc_local ]; then source ~/.bashrc_local; fi
