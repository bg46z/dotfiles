#! /bin/zsh

dot() {
	cd ~/.dotfiles/$@
}

ww(){
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
