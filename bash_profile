#!/usr/bin/env bash
# .BASH_PROFILE - jmlane@makeit.ca

# Put local binaries in path before system binaries (Homebrew).
PATH=/usr/local/bin:/usr/local/sbin:${PATH}

for bindir in `ls -a ~ |grep -E ^\.?bin$`; do
	[ -d ~/${bindir} ] && export PATH=~/${bindir}:${PATH}
done

# RUN COMMANDS
[ -f ~/.bashrc ] && source ~/.bashrc
