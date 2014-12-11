#! /bin/zsh

function dot() {
cd ~/.dotfiles/$1
}

function ww(){
local url="https://www.duckduckgo.com"
if (( $# > 0 ))
then url="${url}/?q=";
	while [[ $# -gt 0 ]]; do 
		url="${url}$1+"; 
		shift; 
	done; 
	url=${url%?}; 
fi

xdg-open "$url" 2> /dev/null
}

function _git-add(){
if (( $# > 0))
then 
	git add $@
else
	git add -A
fi
}
