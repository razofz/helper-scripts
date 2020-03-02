#!/bin/bash
# author: Rasmus Olofzon, 2020-03-02
# https://github.com/razofz/helper-scripts 

firefox --new-window &
nohup markserv \
	../../../../../../../../../../../../../../../../../${NOTES_DIR}/knowledge-repo \
	-p 8642 &
sleep 2
vim ${NOTES_DIR}/knowledge-repo/knowledge-repo.md
