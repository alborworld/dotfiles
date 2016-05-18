alias psg='ps -ef | grep'

# System-specific 
os=`uname -s`

case $os in
    "Darwin" )
       alias ls='gls --color=auto'
       alias dircolors='gdircolors'
       ;;
    "Linux"  )
       alias ls='ls --color=auto'
       ;;
esac

alias vi="vim"
alias edit="vim"
alias getoctal="stat -c \"%a %n\""
