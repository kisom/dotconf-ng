# aliases for Go development

GOPATH=${HOME}/code/go export GOPATH
PATH=${PATH}:$GOPATH/bin

alias gob='go build'
alias gog='go get'
alias gin='go install'
alias gf='go fmt'
alias god='godoc'
alias got='go test'
alias goc='go clean'
