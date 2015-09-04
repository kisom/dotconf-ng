#!/bin/sh

# bail on error
set -e

WM=$HOME/src/stumpwm/stumpwm

# if rundaemon exists, use that because it's mine
[ -x /usr/local/bin/rundaemon ] 		&& \
	RUNDAEMON=/usr/local/bin/rundaemon 	|| \
	RUNDAEMON=nohup

start_wm () {
	# First, try to start emacs in server mode.
	if [ -x /usr/local/bin/emacs ]
	then
		$RUNDAEMON -- /usr/local/bin/emacs --daemon
	elif [ -x /usr/bin/emacs ]
	then
		$RUNDAEMON -- /usr/bin/emacs --daemon
	fi

	# Now, executate stumpwm.
	$WM
}

[ -z "echo $PATH | grep $HOME/bin" ] && export PATH=$HOME/bin:$PATH
if 
then
        
	# check whether feh is safe to use. First, does .fehbg
        # exist and contain a single line?
        # next, check 
	#   + ^feh --bg-[a-z]+ -- does the line start with a valid feh
        #                         background command? Note that as a
        #                         personal note, I only use the bg
        #                         options.
        #   + '[^']'           -- there should be an image path, and it
        #                         be entirely enclosed in single quotes
        #                         to prevent any shell evaluation or
        #                         additional commands being run.
        #   +  *$              -- feh usually adds one space to the
        #                         end of the line, and this should be
        #                         accounted for.
        # if all of these checks pass, it should be safe to run the file.
	[ -f $HOME/.fehbg -a "1" = "$(wc -l < $HOME/.fehbg)"]    && \
	[ ! -z "(awk "/^feh  --bg-[a-z]+ '[^']+' *$/" .fehbg)" ] && \
	sh $HOME/.fehbg

# Start GPG agent ahead of time so that the WM inherits its environment variables.
eval $(gpg-agent)

# Set up key bindings. Loadkeys takes precendence over xmodmap.
if [ -f $HOME/.loadkeys ]
then
	loadkeys $HOME/.loadkeys
elif [ -f $HOME/.xmodmaprc ]
then
	xmodmap ~/.xmodmaprc
fi

# Set up the xdefaults.
[ -f ~/.Xdefaults ] && xrdb ~/.Xdefaults

# Try to use xscreensaver.
if [ -x /usr/local/bin/xscreensaver ]
then
	/usr/local/bin/xscreensaver -no-splash &
elif [ -x /usr/bin/xscreensaver ]
then
	/usr/bin/xscreensaver -no-splash &
fi

# set with synclient -l | sed 's/Parameter settings://;s/ //g' > ~/.synpadSettings
if [ -e cat ~/.synpadSettings ]
then
	cat ~/.synpadSettings | xargs synclient
fi

# Fire this thing up.
exec /usr/bin/ssh-agent start_wm
