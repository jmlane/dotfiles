#!/bin/bash
# .BASH_PROFILE - jmlane@makeit.ca

# PATH
# Put local binaries in path before system binaries (Homebrew).
PATH=/usr/local/bin:/usr/local/sbin:${PATH}
if [ -d ~/bin ]; then export PATH=~/bin:${PATH}; fi

# RUN COMMANDS
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
