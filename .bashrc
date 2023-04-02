#begin moth edits ==============================================================================================================
alias decrypt='ls -la | nms -a'

echo hiya
echo ==============================================================
echo error of the day!
fortune
echo ==============================================================
echo disk status!!!!
echo ==============================================================
df -h
echo ==============================================================
#color for man pages

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# some aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias woo='fortune'
alias lsd="ls -alF | grep /$"
alias unmount="umount"
alias cls="clear"
# helpful history settings:
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTIGNORE=ls:ll:la:l:cd:pwd:exit:mc:su:df:clear:cls

# creates a temp dir and cds into it
alias td='pushd $(mktemp -d)'

#find out what is taking so much space on your drives!
alias diskspace="du -S | sort -n -r |more"

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

#easy directory traversal
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#end moth edits ===============================================================================================================================
