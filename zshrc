sudo -k                 # nuke sudo privs
set -o noclobber
export EDITOR='emacsclient -c -a "" -nw'
export CLICOLOR=1
eval $(dircolors)

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/Users/kisom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
#bindkey -v
# End of lines configured by zsh-newuser-install
PATH=/usr/local/bin:${PATH}
if [ -d ${HOME}/bin ]; then
    PATH=${HOME}/bin:${PATH}
fi

PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin:/usr/games

#PS1="<`hostname -s`: %~> λ "
#PS1="<`hostname -s`: %~> $ "
PS1="%~
(%?) <`hostname -s`:`whoami`> $ "

if [ -x /usr/bin/Esetroot -o -x /usr/local/bin/Esetroot ]; then
    export wpsetters=Esetroot
fi

if [[ "$TERM" = "xterm" ]]; then
    TERM="xterm-color"
fi

export PATH PS1 TERM

export LC_TYPE=en_US.UTF-8

if [ -x ${HOME}/bin/gpg-agent.sh  -a -z "$(pgrep gpg-agent)" ]; then
        ${HOME}/bin/gpg-agent.sh
fi

export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# OPAM configuration
. /home/kyle/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`

PROFILES=$HOME/.profile.d
if [ -d $PROFILES ]
then
	for profile in $(ls $PROFILES/*.sh)
	do
		source $profile	
	done
fi
