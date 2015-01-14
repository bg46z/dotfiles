# System Aliases
alias ls="ls --color=auto"
alias l="ls"
alias ll="l -l"
alias la="l -la"
alias grep="grep --color=auto"
alias rest='echo "rebooting..."; sudo shutdown -r now >& -'
alias shut='echo "powering off..."; sudo shutdown -h now >& -'

# Apt-get aliases
# TODO check OS before loading aliases
alias ag="sudo apt-get"
alias agu="ag update"
alias agd="ag dist-upgrade"
alias agi="ag install"
alias ac="apt-cache"
alias acs="ac search"

# Typo correction...
alias cim="vim"

# Git aliases, a few borrowed from Oh My Zsh!
alias g="git"
alias gl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short --max-count=10" 
alias ga="_git-add" # from functions.zsh
alias gc="git commit"
