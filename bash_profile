#!/usr/bin/env bash
# .BASH_PROFILE - jmlane@makeit.ca

# Put local packages in path before system binaries (Homebrew).
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export MANPATH=/usr/local/share:${MANPATH}

for bindir in `ls -a ~ |grep -E ^\.?bin$`; do
	[ -d ~/${bindir} ] && export PATH=~/${bindir}:${PATH}
done

# RUN COMMANDS
[ -f ~/.bashrc ] && source ~/.bashrc
