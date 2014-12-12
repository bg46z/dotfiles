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
zstyle ':vcs_info:*' actionformats 	'%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats		'%F{5}[%F{2}%b%F{5}]%f '
#zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
	vcs_info
	if [ -n "$vcs_info_msg_0_" ]; then
		echo "${vcs_info_msg_0_}%{$reset_color%}$del"
	fi
}
RPROMPT=$'$(vcs_info_wrapper)'
