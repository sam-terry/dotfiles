###### LOAD ALIASES #######
source ~/.dotfiles/zsh/.zsh_aliases



###########################
####### COMMAND PROMPT ####
###########################
autoload -U colors && colors
PROMPT="%{$fg[red]%} %n%{$fg[yellow]%}%t %{$fg[green]%}%~ %{$fg[cyan]%}>> %{$fg[white]%}"


