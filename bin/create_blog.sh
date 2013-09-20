#!/bin/zsh

#http://superuser.com/questions/440015/restore-tmux-session-after-reboot

SESSIONNAME="blog"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -n script -d
    tmux send-keys -t $SESSIONNAME "cd ~/workspace/src/ducky427.github.com" C-m
    tmux new-window -d -t 1 -n "dash" -c "~/workspace/src/dartdash"
fi

tmux attach -t $SESSIONNAME