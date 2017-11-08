#!/bin/bash
echo "Running setup..."

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
