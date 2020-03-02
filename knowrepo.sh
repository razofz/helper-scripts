#!/bin/bash

firefox --new-window &
nohup markserv \
	../../../../../../../../../../../../../../../../../home/raz/data/Dropbox/jobb/bmc/notes/knowledge-repo \
	-p 8642 &
sleep 2
vim /home/raz/data/Dropbox/jobb/bmc/notes/knowledge-repo/knowledge-repo.md
