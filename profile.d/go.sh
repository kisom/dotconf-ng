# GoCode

if [ -d ${HOME}/src/go ]; then
        PATH=${PATH}:${HOME}/src/go/bin
elif [ -d /usr/local/go ]; then
        PATH=${PATH}:/usr/local/go/bin
elif [ -d /usr/go ]; then
        PATH=${PATH}:/usr/go/bin
elif [ -d ${HOME}/src/go-tip ]; then
        PATH=${PATH}:${HOME}/src/go-tip/bin
fi

export GOPATH=$HOME

alias gob='go build'
alias gog='go get'
alias gin='go install'
alias gf='go fmt'
alias god='godoc'
alias got='go test'
alias goc='go clean'
alias gocr='go clean ./...'
alias gobr='go build ./...'
alias ginr='go install ./...'
alias gotr='go test ./...'
