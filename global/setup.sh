#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo "Running setup..."

cd $SCRIPTPATH
echo -n "  Installing git configuration... "
ln -s .gitconfig ~/
echo "SUCCESS"

echo -n "  Installing vim configuration... "
ln -s .vimrc ~/
ln -s .vim ~/
echo "SUCCESS"

echo -n "  Installing tmux configuration... "
ln -s .tmux.conf ~/
echo "SUCCESS"

echo -n "  Installing bash configuration... "
cat >> ~/.bashrc <<EOM

source $SCRIPTPATH/.bashrc
EOM
echo "SUCCESS"

echo "Setup finished successfully!"
