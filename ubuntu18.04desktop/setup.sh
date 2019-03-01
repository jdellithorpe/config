#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH

# Start with global settings
../global/setup.sh

echo -n "  Overwriting default tmux configuration... "
ln -f -s $SCRIPTPATH/.tmux.conf ~/
echo "SUCCESS"

echo -n "  Installing tmux startup on login configuration... "
cat >> ~/.bashrc <<EOM
if [[ -z "\$TMUX" ]] && [[ "\$SSH_CONNECTION" != "" ]]
then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
EOM
echo "SUCCESS"
