# Prompt
export PS1="\[\033[36;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2 | cut -f1 -d"-")) \$ "

# Editors
export EDITOR='subl'
alias vi='subl'

## rbenv ##
export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
eval "$(rbenv init -)"

## node ##
export NODE_ENV='development'
export PATH="$PATH:`yarn global bin`"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Code/gocode
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Docker
alias dc="docker-compose"

export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

# Google Cloud
if [ -f /Users/jasonfellows/Code/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/jasonfellows/Code/google-cloud-sdk/path.bash.inc'
fi

if [ -f /Users/jasonfellows/Code/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/jasonfellows/Code/google-cloud-sdk/completion.bash.inc'
fi

if [ -f /Users/jasonfellows/Code/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/jasonfellows/Code/google-cloud-sdk/path.bash.inc'
fi

if [ -f /Users/jasonfellows/Code/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/jasonfellows/Code/google-cloud-sdk/completion.bash.inc'
fi

# Shell Shortcuts
alias l.='ls -d .* --color=auto'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'

# Git Shortcuts
alias git="hub"
alias git-clean='git branch --merged | grep -v "\*" | grep -v master | grep -v staging | xargs -n 1 git branch -d'
alias gd="git add -A; git difftool HEAD --staged"
alias gcm="git commit -m"
