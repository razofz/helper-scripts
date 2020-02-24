#!/bin/bash
# author: Rasmus Olofzon, 2020-02-24

# function status_msg {
	# printf "\n$(tput setab 233)-$(tput setab 234)-$(tput setab 235)-$(tput setab 236) $(tput setab 237)$1$(tput setab 236) $(tput setab 235)-$(tput setab 234)-$(tput setab 233)-$(tput sgr0)\n\n"
# }
# 
# function error_msg {
	# printf "\n$(tput setab 16)-$(tput setab 52)-$(tput setab 88) $(tput setab 124)  $1 $(tput setab 88)-$(tput setab 52)-$(tput setab 16)-$(tput sgr0)\n\n"
# }

if ! command -v jupytext
then 
	error-msg " The jupytext command is not available. "
	#printf "\n--- The jupytext command is not available. ---\n\n"
	exit 0
fi

mkdir -p notebooks 

status-msg " Exporting .ipynb notebooks to markdown... "
# printf "\n--- Exporting .ipynb notebooks to markdown... ---\n\n"

for notebook in $(ls *.ipynb); 
	do jupytext --to markdown $notebook \
		-o notebooks/$(basename $notebook .ipynb).md ; 
done

status-msg " Done! "
# printf "\n--- Done! ---\n\n"
