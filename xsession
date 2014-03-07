export PATH=$PATH:${HOME}/bin:${HOME}/code/go/bin
eval `/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh`
export GNOME_KEYRING_CONTROL
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_PID
xmodmap ~/.xmodmaprc
xrdb ~/.Xdefaults
exec /usr/bin/ssh-agent /home/kyle/src/stumpwm/stumpwm
