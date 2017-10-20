# .bashrc

# Vi-mode for terminal
set -o vi

# Shell Functions
git() {
  if [[ $@ == "lola" ]]; then
    command git log --graph --decorate --pretty=oneline --abbrev-commit --all
  else 
    command git "$@"
  fi
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
## Set colors
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi
alias today='date "+%a %b %d %Y (%j)"'
alias jfi='find . -name'
sd() {
  if [[ $@ == "-" ]]; then
    command popd
  else
    command pushd "$@"
  fi
}

# Standard path additions
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/sbin
export PATH=$PATH:$HOME/scripts
export LD_LIBRARY_PATH=/usr/local/lib:$HOME/lib:$HOME/local/lib
export LIBRARY_PATH=/usr/local/lib:$HOME/lib:$HOME/local/lib

# Java
export JAVA_HOME=$HOME/applications/jdk
export PATH=$JAVA_HOME/bin:$PATH

# Notes
export NOTES_HOME=$HOME/notes

# Maven
export PATH=$PATH:/home/jdellit/applications/apache-maven/bin

EDITOR=vim
export EDITOR
