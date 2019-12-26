# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz promptinit
promptinit
prompt agnoster

export EDITOR='subl'

## Git ##
alias git="hub"
alias git-clean='git branch --merged | grep -v "\*" | grep -v master | grep -v staging | xargs -n 1 git branch -d'
alias gd="git add -A; git difftool HEAD --staged"
alias gcm="git commit -m"
alias gpm="git pull origin master"
alias gps="git pull origin staging"
alias gpo="git push origin head"
alias gco="git checkout"
alias gcob="git checkout -b"

## Ruby ##
export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
eval "$(rbenv init -)"
export RAILS_ENV='development'
export BUNDLER_EDITOR=subl

## Node ##
export PATH="$PATH:`yarn global bin`"
export NODE_ENV='development'
unset npm_config_prefix
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

## Go ##
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Code/gocode
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
