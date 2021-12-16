###### LOAD ALIASES #######
source ~/.dotfiles/zsh/.zsh_aliases

###########################
###### LOAD COLORS ########
###########################
export CLICOLOR=YES
export LSCOLORS=Gxfxcxdxbxegedabagacad

###########################
####### COMMAND PROMPT ####
###########################
autoload -U colors
colors
PROMPT="%{$fg[red]%}%n %{$fg[yellow]%}%t %{$fg[green]%}%~ %{$fg[cyan]%}>> %{$fg[white]%}"


###########################
### FUNCTION DEFINITIONS ##
###########################

# Compact date-time
cdt() { date +'%Y%m%d-%H%M%S'; }

# Date/timestamps; useful for file names
dstamp() { date +'%Y-%m-%d'; }
tstamp() { date +'%H.m.%S'; }
