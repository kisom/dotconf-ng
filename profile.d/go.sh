# aliases for Go development

GOPATH=${HOME} export GOPATH

alias gob='go build'
alias gog='go get'
alias gin='go install'
alias gf='go fmt'
alias god='godoc'
alias got='go test'
alias goc='go clean'

### vgo
which vgo 2>/dev/null 1>/dev/null
if [ $? -eq 0 ]; then
	export VGOROOT=${HOME}/lib/vgo
fi


