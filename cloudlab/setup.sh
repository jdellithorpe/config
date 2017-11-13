#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo "Running setup..."

cd $SCRIPTPATH
echo -n "  Installing git configuration... "
cp .gitconfig ~/
echo "SUCCESS"

echo -n "  Installing vim configuration... "
cp .vimrc ~/
echo "SUCCESS"

echo -n "  Installing tmux configuration... "
cp .tmux.conf ~/
echo "SUCCESS"

echo "Setup finished successfully!"
