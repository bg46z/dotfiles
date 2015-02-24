# Left-handed prompt
if [[ $(id -u) -ne 0 ]]; then
	PROMPT="%2~ %F{160}>>%f%F{136};--%f%F{160>%f "
	PROMPT2="%~ %F{160}>%f "
fi
if [[ $(id -u) -eq 0]]; then
	PROMPT="%F{214}%U%Broot%b%u@%m %~ %#%f "

# Up-to-the-minute time in RPROMPT
TMOUT=15
TRAPALRM () {
zle reset-prompt
}

setopt prompt_subst
zstyle ':vcs_info:*' actionformats 	'%F{160}>>[%F{136}%b|%a%F{160}]<<%f'
zstyle ':vcs_info:*' formats		'%F{160}>>[%F{136}%b%F{160}]<<%f'
zstyle ':vcs_info:*' enable git

# Right-handed prompt
RPROMPT=$'$(vcs_info_rprompt)'
