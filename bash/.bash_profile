# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '


export VISUAL=vim
export EDITOR="$VISUAL"

# Python related stuff
# export PATH="/home/bernhard/.pyenv/bin:$PATH"

# Erlang related stuff
# source $HOME/.evm/scripts/evm

# Java related stuff
# export JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64/bin/java
# export PATH=$JAVA_HOME/bin:$PATH

# Elixir related stuff
# export PATH="$HOME/.exenv/bin:$PATH"
# eval "$(exenv init -)"
