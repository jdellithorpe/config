#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH

echo "Running setup..."

echo -n "  Installing git configuration... "
ln -f -s $SCRIPTPATH/.gitconfig ~/
echo "SUCCESS"

echo -n "  Installing vim configuration... "
ln -f -s $SCRIPTPATH/.vimrc ~/
ln -f -s $SCRIPTPATH/.vim ~/
echo "SUCCESS"

echo -n "  Installing tmux configuration... "
ln -f -s $SCRIPTPATH/.tmux.conf ~/
echo "SUCCESS"

echo -n "  Installing bash configuration... "
cat >> ~/.bashrc <<EOM

source $SCRIPTPATH/.bashrc
EOM
echo "SUCCESS"

echo "Setup finished successfully!"
