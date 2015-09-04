sudo -k                 # nuke sudo privs
set -o noclobber
EDITOR='emacsclient -c -a "" -nw'
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

### This is fairly old, but I guess it's useful.
if [ -d ${HOME}/scripts ]; then
    PATH=${PATH}:${HOME}/scripts
fi

# Linux-specific paths
if [ "$(uname -s)" = "Linux" ]; then
    if [ -d ${HOME}/code/python/modules ]; then
        PYTHONPATH=${PYTHONPATH}:${HOME}/code/python/modules
        export PYTHONPATH
    fi
fi

PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin:/usr/games

PS1="<`hostname -s`: %~> λ "
PS1="<`hostname -s`: %~> $ "
PS1="%~
(%?) <`hostname -s`:`whoami`> $ "

if [ -x /usr/bin/feh -o -x /usr/local/bin/feh ]
then
	export wpsetters=feh
elif [ -x /usr/bin/Esetroot -o -x /usr/local/bin/Esetroot ]
then
    export wpsetters=Esetroot
fi

if [ "$TERM" = "xterm" ]; then
    TERM="xterm-color"
fi

# clojure
if [ -e /usr/local/bin/clj ]; then
    export CLASSPATH=${CLASSPATH}:${HOME}/.lein/plugins
fi

export PATH PS1 TERM

# grab my source control commands
source ${HOME}/.profile.d/sourcecon.sh

which youtube-dl 2>/dev/null 1>/dev/null
if [ "$?" = "0" ]; then
    ytget () {
        if [ -z "$(echo $1 | sed -ne /youtube/p)" ]; then
            url="http://www.youtube.com/watch?v=$1"
        else
            url=$1
        fi
        youtube-dl -t $url
    }
fi

plint () {
    if [ "g" = "$1" -a ! -z "$2" ]; then
        pylint $2 2>/dev/null | grep "code has been rated"
    else
        pylint $1 | less
    fi
}

# VBoxManage presupposes VBoxHeadless...
which VboxManage 2>/dev/null 1>/dev/null
if [ "$?" = 0 ]; then
    source ~/.virtualbox.zsh
fi

which go 1>/dev/null 2>/dev/null
if [ "$?" = 0 ]; then
    source ~/.profile.d/go.sh
fi

# plan9 from userland
if [ -d "${HOME}/src/plan9" ]; then
        PLAN9=${HOME}/src/plan9 export PLAN9
        export PATH=$PATH:$PLAN9/bin
elif [ -d /usr/local/plan9 ]; then
        PLAN9=/usr/local/plan9 export PLAN9
        export PATH=$PATH:$PLAN9/bin
fi

#if [ -d ${HOME}/.rbenv ]; then
#        source ${HOME}/.rbenv.sh
#fi

# old habits die hard
if [ "$(uname -s)" = "Linux" ]; then
    alias pkg_add="apt-get install"
    alias pkg_find="apt-cache search"
fi


### Ada
if [ -e $HOME/.profile.d/ada.sh ]
then
	source $HOME/.profile.d/ada.sh
fi

### Hackage
if [ -d "$HOME/.cabal" ]; then
	PATH=$HOME/.cabal/bin:$PATH
fi

### vgo
which vgo 2>/dev/null 1>/dev/null
if [ $? -eq 0 ]; then
	export VGOROOT=${HOME}/lib/vgo
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# OPAM configuration
. /home/kyle/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

alias rscope='cscope $(find . -name \*.\[ch\])'
alias rlscope='cscope $(find -L . -name \*.\[ch\])'

export LC_TYPE=en_US.UTF-8
export PATH
