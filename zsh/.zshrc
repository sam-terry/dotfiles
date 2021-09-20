
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/samterry/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/samterry/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/samterry/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/samterry/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


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
alias prof='vi ~/.zshrc'
alias histg='history | grep'
alias py='python'
alias py3='python3'
alias home='cd /Users/samterry/'
alias la='ll -lhFa'

###########################
####### COMMAND PROMPT ####
###########################
autoload -U colors && colors
PROMPT="%{$fg[red]%}☭ %n%{$fg[yellow]%}%t %{$fg[green]%}%~ %{$fg[cyan]%}>> %{$fg[white]%}"


