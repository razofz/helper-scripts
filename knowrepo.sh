#!/bin/bash
# author: Rasmus Olofzon, 2020-03-03
# https://github.com/razofz/helper-scripts 

firefox --new-window &
sleep 2
nohup markserv \
	../../../../../../../../../../../../../../../../..${NOTES_DIR}/knowledge-repo \
	-p 8642 &
vim ../../../../../../../../../../../../../../../../..${NOTES_DIR}/knowledge-repo/knowledge-repo.md
