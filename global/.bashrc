# Useful aliases and functions.
alias mc='maven compile -DskipTests'
alias mi='maven install -DskipTests'

vimf () {
  vim $(find . -name $1)
}

f () {
  find . -name $1
}

g () {
  grep -R -E "$1" ./*
}

gclone() {
  git clone https://github.com/jdellithorpe/$1.git
}

# Default git commit message editor.
export EDITOR=vim

# Directory where notes are stored
export NOTES_HOME=$HOME/notes

# CSCOPE database
export CSCOPE_DB=~/cscope.out

# History command output format
export HISTTIMEFORMAT="%Y%m%d %T "

export PS1="[\[\e[94m\]\w\[\e[m\]]\n[\[\e[32m\]\t\[\e[m\]][\[\e[33m\]\!\[\e[m\]]\[\e[31m\]\u\[\e[m\]@\[\e[37m\]\h\[\e[m\]$ "
