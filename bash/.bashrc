###########################
####### COMMAND PROMPT ####
###########################

# Color code:
# Gray -- \[\033[31m\]
# Red -- \[\033[31m\] 
# Green -- \[\033[32m\]
# Yellow -- \[\033[33m\] 
# Blue -- \[\033[34m\]
# Magenta --\[\033[35m\]
# Cyan -- \[\033[36m\]
# White -- \[\033[37m\]

# Formatting (continues until end of prompt or until new formatting is specified)
# Bold -- \[\033[1;XXm\]
# Regular -- \[\033[0;XXm\]


#PS1='\[\033[1;31m\]\n\u \[\033[36m\]\W\[\033[35m\] \$ \[\033[37m\]'



#############################
######## FUNCTIONS ##########
#############################

turnout() {
	if [[ -f $1 ]]; then
		exit 0;
	else
		mv $1/* .;
		rm -rf $1/;
	fi;
}


# Helper functions for detecting uncommitted changes in git repos
__git_prompt_git() {
	GIT_OPTIONAL_LOCKS=0 command git "$@"
}


parse_git_dirty() {
	FLAGS=('--porcelain')
	STATUS=$(__git_prompt_git status ${FLAGS} 2> /dev/null | tail -n 1)

	if [[ -n $STATUS ]]; then 
		echo "dirty";
	else
		echo "clean";
	fi
}	


# Wrappers for cd builtin; checks for uncommited changes
cd () { builtin cd "$@" && chpwd; }

chpwd () {
	if [[ "$(parse_git_dirty)" == "dirty" ]]; then
		PS1="\[\033[44m\]\[\033[1;37m\]\u@\h \[\033[1;32m\]\[\033[41m\] \[\033[1;37m\]\w \[\033[43m\]\[\033[1;31m\] ✘ \[\033[40m\]\[\033[0;33m\] ❯❯ \[\033[00m\]"
	else
		PS1="\[\033[44m\]\[\033[1;37m\]\u@\h \[\033[1;32m\]\[\033[41m\] \[\033[1;37m\]\w \[\033[42m\]\[\033[1;30m\] ✔︎ \[\033[40m\]\[\033[0;33m\] ❯❯ \[\033[00m\]"
	fi
}


# Wrappers for rm; checks to see if removal updated repo
rm () { builtin rm "$@" && chpwd; }


# Wrapper for git commit and restore; updates prompt when changes are committed or discarded
git() {
	if [ $# -gt 0 ] && [ "$1" == "commit" ] ; then
		if [ $2 == "-m" ] || [ $3 == "-m" ]; then
			argcount=$(($#-1));
			command git commit ${@:2:$argcount-1} "${@: -1}\""
			chpwd;
		fi;
	elif [ $# -gt 0 ] && [ "$1" == "restore" ] ; then
		command git $@;
		chpwd;
	else
		command git $@;
	fi
}


			
# Wrapper for vim; updates prompt when changes are made within a repo
vim() {
	command vim $@;
	chpwd;
}

###### LOAD ALIASES #######
source ~/.dotfiles/bash/.bash_aliases




# Update prompt at startup
cd .



