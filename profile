# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

HISTFILE="${HOME}/.ksh_history"
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin
PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/games:.
if [ -d /usr/local/go ]; then
	PATH=$PATH:/usr/local/go/bin
fi
if [ -d /usr/local/plan9 ]; then
	PATH=$PATH:/usr/local/plan9/bin
fi
export PATH HOME TERM HISTFILE

GOPATH=${HOME}/git/go export GOPATH
PS1="<\h:\w>\n(\$?) $ " export PS1

if [ -d ${HOME}/.profile.d ]; then
	for conf in $(ls ${HOME}/.profile.d)
	do
		. ${HOME}/.profile.d/$conf
	done
fi

set -o vi
