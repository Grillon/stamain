#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PATH=$PATH:~/bin
set -o vi
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
if [[ -z "$USER" ]]
then
  USER=moi
fi
if [[ -z "$TMUX" ]]
then
	tmux attach || tmux new-session -s "$USER" 
	exit
fi
alias t=todo.sh
source ~/bin/todo_completion
