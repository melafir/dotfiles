#/bin/bash
set -e

if [[ $(which nvim | wc -l) -eq 0 ]]; then
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	tar -xf nvim-linux64.tar.gz
	rm nvim-linux64.tar.gz
	mv nvim-linux64 /opt/
	if [[ ! -d $HOME/.local/bin/ ]];
	then
		mkdir -p $HOME/.local/bin/
		ln -s /opt/nvim-linux64/bin/nvim $HOME/.local/bin/nvim
	fi
	echo "PATH=$HOME/.local/bin/:$PATH" >> $HOME/.bashrc
	source $HOME/.bashrc
else
	echo "Nvim installed!!!"
fi
