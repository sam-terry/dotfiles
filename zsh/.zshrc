###########################
########## ALIASES ########
###########################
alias docs='cd ~/Documents'
alias desk='cd ~/Desktop' 
alias deks='deks'
alias dosc='docs'
alias v='vim'
alias ll='ls -lhF'
alias cl='clear'
alias up='cd ..'
alias cd..='cd ..'
alias s='source ~/.zshrc'
alias prof='vim ~/dotfiles/.zshrc'
alias histg='history | grep'
alias py='python'
alias py3='python3'
alias home='cd /Users/samterry/'
alias la='ll -lhFa'

###########################
####### COMMAND PROMPT ####
###########################
autoload -U colors && colors
PROMPT="%{$fg[red]%} %n%{$fg[yellow]%}%t %{$fg[green]%}%~ %{$fg[cyan]%}>> %{$fg[white]%}"


