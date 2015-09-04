CONFDIR=$HOME/code/config/dotconf-ng

copy_dotconf () {
	[ -z "$1" ] && return
	echo "$1 -> $CONFDIR/${1#.}"
	cp "$1" "$CONFDIR/${1#.}"
}

dotconfig_is_missing () {
	[ -f $CONF/{$1#.} ]
	return "$?"
}

show_missing_dotconf () {
	DOTFILES=""
	for file in $(ls -pa | grep '^\..*[^/]$' | xargs)
	do
		dotconfig_is_missing "$file"
		[ "0" = "$?" ] || echo "missing $file"
	done
}
