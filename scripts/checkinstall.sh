#/bin/bash
set -e

check=("git" "nvim" "wget" "python3" "ranger" "gcc" "npm" "unzip" "tmux")
for i in "${check[@]}"
do
	if [[ $(which $i | wc -l) -eq 0 ]];
	then
		echo "No $i"
	else
		echo "Yes $i"
	fi
done
