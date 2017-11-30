# Useful aliases and functions.
vimf () {
  vim \$(find . -name \$1)
}

f () {
  find . -name \$1
}

g () {
  grep -R -E "\$1" ./*
}

# Default git commit message editor.
export EDITOR=vim
