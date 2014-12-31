#!/bin/bash

function backp_file {
	if [ -f $1 ]; then
		if [ ! -h $1 ]; then
			echo "Moving old $1 ...";
			mv $1 $1.old.`date +"%s"`
		else
			echo "Removing old $1 symlink ..."
			rm $1
		fi
	else
		echo "Doesn't exist - skipping"
	fi
}

GREEN='\033[0;32m'   # green
PURPL='\033[0;35m'   # purple
RED='\033[0;31m'     # red
YELLO='\033[1;33m'   # yellow
RESET='\033[0m'      # no color


if command -v fish >/dev/null; then
	echo -e "===$PURPL FISH Shell Found $RESET\n"
	echo -e "${YELLO}Notice:${RESET} Make sure '!tty_tickets' is added to 'Defaults' in the 'sudoers' file.\n"
	echo -e "===$GREEN Done $RESET\n\n"
fi


#	echo -e "===$PURPL Installing/Replacing Config Files $RESET\n"
#
#	echo -e "===$GREEN Done $RESET\n\n"
