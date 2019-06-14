# Useful aliases and functions.
alias mc='mvn compile -DskipTests'
alias mcas='mvn compile assembly:single -DskipTests'
alias mi='mvn install -DskipTests'

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

# Execute program in Maven project
# me App
me () {
  sourceFile="$1.java"
  filePath=$(f ${sourceFile})
  package=$(cat ${filePath} | grep -E "package" | awk '{sub(/;/, "", $2); print $2}')
  mainClass=${package}.$1
  shift
  mvn exec:java -Dexec.mainClass="${mainClass}" -Dexec.args="$*"
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

# Add custom scripts directory to path
export PATH=${HOME}/scripts:$PATH

# Use vim on the command line
#set -o vi
