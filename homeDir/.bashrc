#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# alias
alias sudo="sudo "
alias :q="exit"

alias ll="ls -l"
alias la="ls -la"
alias lld="lsblk"

alias vim="nvim"
alias t="tmux"
alias fm="yazi"
