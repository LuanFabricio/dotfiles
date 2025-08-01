#!/bin/bash

SESSION_NAME=$1
SESSION_PATH=$2
if [ -z "$1" ]; then
	echo "Erro! The first argument should be the session name."
	exit
fi

#if [[ $SESSION_PATH -eq 0 ]]; then
if [ -z $2 ]; then
	echo "Session path not found."
	SESSION_PATH=$PWD
fi

echo $2
echo $SESSION_NAME
echo $SESSION_PATH
echo $PWD
echo $PWD/$SESSION_PATH

if !tmux has-session -t $SESSION_NAME 2> /dev/null; then
	echo "Session already exists attaching..."
else
	cd $SESSION_PATH
	tmux new -d -s $SESSION_NAME 'nvim . && zsh ' $3
	tmux new-window
	tmux rename-window -t 1 nvim
fi
tmux at -t $SESSION_NAME
