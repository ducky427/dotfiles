#!/bin/zsh

#http://superuser.com/questions/440015/restore-tmux-session-after-reboot

SESSIONNAME="analytics"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -n script -d
    tmux send-keys -t $SESSIONNAME "cd ~/workspace/src/user_proto" C-m
    tmux new-window -d -t 1 -n "neo" -c "~/bin/neo4j/latest/"
    tmux new-window -d -t 2 -n "mongo" -c  "~/bin/mongodb/latest/"
    tmux new-window -d -t 3 -n "git" -c "~/workspace/src/user_proto"

fi

tmux attach -t $SESSIONNAME