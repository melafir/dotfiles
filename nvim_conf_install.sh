#/bin/bash
set -e
NVIMDIR="$HOME/.config/nvim/"
if [[ -d $NVIMDIR ]];
then
	echo "NVIM config dir exist"
else
	mkdir -p $NVIMDIR
	cp -r kickstart/* $NVIMDIR
fi
