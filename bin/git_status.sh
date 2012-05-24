#!/bin/bash
for gitdir in $(find `pwd` -name .git); do
	workdir=${gitdir%/*}
	res=$(git --git-dir=$gitdir --work-tree=$workdir status | grep -E '^# (Changes|Changed|Untracked)')
	stat=""
	grep -e 'Untracked' <<<$res >/dev/null 2>&1
	if [ $? -eq 0 ] ; then
		stat="[Untracked]"
	fi
	grep -e 'Changed' <<<$res >/dev/null 2>&1
	if [ $? -eq 0 ] ; then
		stat="$stat [Modified]"
	fi
	grep -e 'Changes' <<<$res >/dev/null 2>&1
	if [ $? -eq 0 ] ; then
		stat="$stat [Staged]"
	fi

	if [ -n "$stat" ] ; then
		echo "$workdir : $stat"
	fi
done
