#/bin/bash
set -e

if [[ -f $HOME/.tmux.conf ]];
then
	"Tmux config's already installed"
else
	cp configs/.tmux.conf $HOME/
fi	
