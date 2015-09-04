#!/bin/sh

add_to_filter () {
	FILTER="$FILTER $1"
}

filteredp () {
	for filter in $FILTER
	do
		[ "$filter" = "$1" ] && return "1"
	done

	return "0"
}

check_basepath () {
	basepath="${1%/*}"
	instpath="$HOME/.$basepath"
	[ $(echo $1 | grep "/$") ]		&& \
		[ ! "$basepath" = "$1" ]	&& \
		[ ! -z "$basepath" ]		&& \
		[ ! -d "$instpath" ]		&& \
		echo "mkdir -p $instpath"	&& \
		mkdir -p "$instpath"
}

# choosing to just blindly copy directories over
newerp () {
	[ -d "$1" ] && return "1"
	[ ! -e "$2" ] && return "1"
	[ "$1" -nt "$2" ] && return "1"
	return "0"
}

add_to_filter README
add_to_filter PACKAGES
add_to_filter personal/
add_to_filter install.sh

for conf in $(ls -p1 | xargs)
do
	instconf="$HOME/.$conf"

	filteredp $conf
	[ "1" = "$?" ] && continue

	newerp $conf $instconf
	[ "1" = "$?" ] || continue

	echo "[+] installing $conf"
	install -C -D -p -v $conf $instconf
done
