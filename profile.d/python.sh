# Linux-specific paths
if [ "$(uname -s)" = "Linux" ]; then
    if [ -d ${HOME}/code/python/modules ]; then
        PYTHONPATH=${PYTHONPATH}:${HOME}/code/python/modules
        export PYTHONPATH
    fi
fi

plint () {
    if [ "g" = "$1" -a ! -z "$2" ]; then
        pylint $2 2>/dev/null | grep "code has been rated"
    else
        pylint $1 | less
    fi
}


