if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My alias
alias :q="exit"

alias ll="ls -l"
alias la="ls -la"
alias lld="lsblk"
alias llu="lsusb"

alias t="tmux"
alias fm="yazi"

alias qwf="sudo iwctl station wlan0 scan"
alias arst="sudo iwctl station wlan0 connect Galaxy"

alias bak='bash ~/WORKFLOW/homeDir/dotScript/repoBackup.sh'

alias ca='sudo st-flash erase'
alias xie='sudo st-flash write build/main.bin 0x8000000'
alias cl='make clean'
alias mk='make'
alias tiao='sudo openocd -f stlink.cfg'

alias done='mk & ca & xie'
