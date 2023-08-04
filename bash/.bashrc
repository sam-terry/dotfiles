#####################################
############## PATH #################
#####################################

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin/:$PATH"





#####################################
############ FUNCTIONS ##############
#####################################

# Compact date-time
cdt() { date +'%Y%m%d-%H%M%S'; }

# Date/timestamps; useful for file names
dstamp() { date +'%Y-%m-%d'; }
tstamp() { date +'%H.m.%S'; }

# Move contents of dir into its parent and delete it
turnout() {
	if [ -f $1 ]; then
		exit;
	else
		PARENT=$(cd $1; cd ..;pwd);
		mv $1/* $PARENT;
		rm -r PARENT;
	fi
}


# Print full path for every file in directory
paths() {
	if [ -z $1 ]; then
		dir=$(pwd)	
	else	
		dir=$@
	fi

	for d in $dir; do
		for e in $(ls $d); do
			printf "$d/$e\n";
		done
	done
}
