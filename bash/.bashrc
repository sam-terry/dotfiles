#####################################
############## PATH #################
#####################################

export PATH="/opt/homebrew/bin:$PATH"






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
