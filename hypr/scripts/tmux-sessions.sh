#!/bin/bash

SESSIONNAME="Falcon OS"
tmux has-session -t $SESSIONNAME &> /dev/null
if [ $? != 0 ] 
 then
    tmux new-session -d -s $SESSIONNAME -n neovim -c "$HOME/Dev/cpp/FalconOS" "nvim ."
    tmux new-window -n terminal -t $SESSIONNAME: -c "$HOME/Dev/cpp/FalconOS"
    tmux select-window -t $SESSIONNAME:1
fi

SESSIONNAME="Pong server"
tmux has-session -t $SESSIONNAME &> /dev/null
if [ $? != 0 ] 
 then
    tmux new-session -d -s $SESSIONNAME -n neovim -c "$HOME/Dev/rust/pong_server" "nvim ."
    tmux new-window -n terminal -t $SESSIONNAME: -c "$HOME/Dev/rust/pong_server"
    tmux select-window -t $SESSIONNAME:1
fi
