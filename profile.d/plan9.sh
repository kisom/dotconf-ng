# plan9 from userland
if [ -d "${HOME}/src/plan9" ]; then
        PLAN9=${HOME}/src/plan9 export PLAN9
        export PATH=$PATH:$PLAN9/bin
elif [ -d /usr/local/plan9 ]; then
        PLAN9=/usr/local/plan9 export PLAN9
        export PATH=$PATH:$PLAN9/bin
fi


