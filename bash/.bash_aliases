###########################
########## ALIASES ########
###########################




###########################
########## NAVIGATION #####
###########################

alias home='cd ~'
alias docs='cd ~/Documents'
alias desk='cd ~/Desktop' 
alias apps='cd /Applications'
alias dev='cd ~/Documents/Development'
alias up='cd ..;pwd'
alias ..='cd ..;pwd'
alias ....='cd ../..;pwd'
alias ......='cd ../../..;pwd'
alias ........='cd ../../../..;pwd'
alias ..........='cd ../../../../..;pwd'





###########################
########## SHORTCUTS ######
###########################

alias v='vim'
alias l='ls -lhF'
alias ll='ls -lahF'
alias c='clear'
alias cl='clear;pwd;l'
alias s='source ~/.bash_profile'
alias brc='vim ~/.dotfiles/bash/.bashrc'
alias vrc='vim ~/.dotfiles/vim/.vimrc'
alias oa='vim ~/.dotfiles/bash/.bash_aliases'
alias histg='history | grep'
alias py='python'
alias py3='python3'
alias cpv='rsync -ah --info=progress2'
alias j='jobs'
alias k='kill'
alias cpv='rsync -ah --progress'
alias lc='wc -l'
alias xx='exit'
alias h='home'
alias tns='tmux new-ses -s'
alias ga='git add'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias tkt='tmux kill-ses -t'
alias tls='tmux ls'
alias bpr='vim ~/.bash_profile'
alias gstatus="git status"

###########################
######### TWEAKS ##########
###########################

alias mkdir='mkdir -p'
alias calendar='cal' # Both forms should serve the same function
alias grep='ggrep -P' # Use Perl regular expressions with grep

###########################
###### CORRECTIONS ########
###########################

alias deks='deks'
alias dosc='docs'
alias hoem='home'
alias cd..='cd ..'

