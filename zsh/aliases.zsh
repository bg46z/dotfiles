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
