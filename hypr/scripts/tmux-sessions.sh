#!/bin/bash

SESSIONNAME="falcon"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
    tmux new-session -d -s $SESSIONNAME -n neovim -c "$HOME/Dev/Falcon" "nvim ."
    tmux new-window -n terminal -t $SESSIONNAME: -c "$HOME/Dev/Falcon"
    tmux select-window -t $SESSIONNAME:1
fi

