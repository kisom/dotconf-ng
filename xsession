if [ -e ${HOME}/.background ]; then
	BACKGROUND="$(cat ${HOME}/.background)"
	Esetroot -f ${BACKGROUND}
fi

xrdb ${HOME}/.Xdefaults &
xmodmap ${HOME}/.xmodmaprc

if [ -x /usr/local/bin/xscreensaver ]; then
	xscreensaver -no-splash &
fi

exec /usr/local/bin/spectrwm
