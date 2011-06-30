#!/usr/bin/env bash
# .BASHRC - jmlane@makeit.ca
# For use with interactive shells only!
[ -z "$PS1" ] && return

# COLOURS
export CLICOLOR=1 
export COLOUR_NC='\033[0m' # No colour
export COLOUR_BLACK='\033[0;30m'; export COLOUR_GRAY='\033[1;30m'
export COLOUR_RED='\033[0;31m'; export COLOUR_LIGHT_RED='\033[1;31m'
export COLOUR_GREEN='\033[0;32m'; export COLOUR_LIGHT_GREEN='\033[1;32m'
export COLOUR_BROWN='\033[0;33m'; export COLOUR_YELLOW='\033[1;33m'
export COLOUR_BLUE='\033[0;34m'; export COLOUR_LIGHT_BLUE='\033[1;34m'
export COLOUR_PURPLE='\033[0;35m'; export COLOUR_LIGHT_PURPLE='\033[1;35m'
export COLOUR_CYAN='\033[0;36m'; export COLOUR_LIGHT_CYAN='\033[1;36m'
export COLOUR_LIGHT_GRAY='\033[0;37m'; export COLOUR_WHITE='\033[1;37m'

# PROMPTS
export SUDO_PS1='\['${COLOUR_RED}'\]\W \$ \['${COLOUR_NC}'\]'
if [ $(id -u) -eq 0 ]
	then export PS1=${SUDO_PS1}
	else export PS1='\['${COLOUR_GREEN}'\]\W \$ \['${COLOUR_NC}'\]'
fi

# HISTORY
shopt -s histappend
export HISTCONTROL=ignoredups

shopt -s checkwinsize
export PAGER=less
export EDITOR=vi
`type -P vim &>/dev/null` && export EDITOR=vim
`type -P gvim &>/dev/null` && export VISUAL='gvim -f'

# LOCAL RUN COMMANDS
[ -f ~/.bashrc_local ] && source ~/.bashrc_local
