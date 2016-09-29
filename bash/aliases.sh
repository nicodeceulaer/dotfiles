if [[ -f ~/.zsh/aliases ]]; then
  . ~/.zsh/aliases
fi

# alternative to "rails" command to use templates
function railsapp {
  template=$1
  appname=$2
  shift 2
  rails $appname -m http://github.com/ryanb/rails-templates/raw/master/$template.rb $@
}

# misc
alias reload='. ~/.bash_profile'

# fix htop screen update issues in htop
alias htop='TERM=screen htop'

# tmux attach
# tmux has problems finding back the socket, so lets give it a proper name before
export TMUX_TMPDIR=${HOME}/tmp/tmux
mkdir -p $TMUX_TMPDIR
alias tma='tmux attach || tmux'

# extract any zip
Extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#for *BSD/darwin/OSX
export CLICOLOR=1
LS_COLOR_OPTION="-G"
ls --color=auto &> /dev/null && LS_COLOR_OPTION="--color"

alias l='ls -lAh ${LS_COLOR_OPTION}'
alias ll='ls -lAh ${LS_COLOR_OPTION}'
alias lt='ls -lAh -lt ${LS_COLOR_OPTION}'
alias hgrep='history | grep '
