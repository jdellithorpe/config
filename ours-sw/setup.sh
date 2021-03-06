#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH

echo "Running setup..."

echo -n "  Installing git configuration... "
ln -f -s $SCRIPTPATH/.gitconfig ~/
echo "SUCCESS"

echo -n "  Installing vim configuration... "
ln -f -s $SCRIPTPATH/../global/.vimrc ~/
ln -f -s $SCRIPTPATH/../global/.vim ~/
echo "SUCCESS"

echo -n "  Installing tmux configuration... "
ln -f -s $SCRIPTPATH/../global/.tmux.conf ~/
echo "SUCCESS"

echo -n "  Installing bash configuration... "
cat >> ~/.bashrc <<EOM

source $SCRIPTPATH/../global/.bashrc

if [[ "\$(hostname --short)" == "ours-sw" ]] && [[ -z "\$TMUX" ]] && [[ "\$SSH_CONNECTION" != "" ]]
then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
EOM
echo "SUCCESS"

echo "Setup finished successfully!"
