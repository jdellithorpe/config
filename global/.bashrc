# Useful aliases and functions.
vimf () {
  vim $(find . -name $1)
}

f () {
  find . -name $1
}

g () {
  grep -R -E "$1" ./*
}

# Default git commit message editor.
export EDITOR=vim

# Directory where notes are stored
export NOTES_HOME=$HOME/notes

# CSCOPE database
export CSCOPE_DB=~/cscope.out

# History command output format
export HISTTIMEFORMAT="%Y%m%d %T "
