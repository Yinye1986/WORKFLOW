#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

udisksctl mount -b /dev/nvme1n1p1 /home/chris/1-WORKSPACE

# Start
alias sudo="sudo "
alias :q="exit"

alias ll="ls -l"
alias la="ls -la"
alias lld="lsblk"

alias vim="nvim"
alias t="tmux"
alias fm="yazi"
