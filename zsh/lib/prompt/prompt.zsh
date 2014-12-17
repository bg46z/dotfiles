# Left-handed prompt
PROMPT="%~ %F{160}>>%f%F{136};--%f%F{160>%f "

# Right-handed prompt
#RPROMPT=">>[%T]<<"

# Up-to-the-minute time in RPROMPT
#TMOUT=15
#TRAPALRM () {
#zle reset-prompt
#}

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats 	'%F{160}>>[%F{136}%b|%a%F{160}]<<%f'
zstyle ':vcs_info:*' formats		'%F{160}>>[%F{136}%b%F{160}]<<%f'
zstyle ':vcs_info:*' enable git

# or use pre_cmd, see man zshcontrib
#vcs_info_rprompt() {
	#vcs_info
	#if [ -n "$vcs_info_msg_0_" ]; then
		#echo "${vcs_info_msg_0_}"
		##echo "${vcs_info_msg_0_}%{$reset_color%}$del"
	#else
		#echo "%F{160}>>[%F{136}%T%F{160}]<<%f"
	#fi
#}
RPROMPT=$'$(vcs_info_rprompt)'
