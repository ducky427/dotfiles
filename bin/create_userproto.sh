#!/bin/zsh

#http://superuser.com/questions/440015/restore-tmux-session-after-reboot

SESSIONNAME="userproto"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -n script -d
    tmux send-keys -t $SESSIONNAME "cd ~/workspace/src/vagrantadmin" C-m
    tmux new-window -d -t 1 -n "git" -c "~/workspace/src/user_proto"

fi

tmux attach -t $SESSIONNAME