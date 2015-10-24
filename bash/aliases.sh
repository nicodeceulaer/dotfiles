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

alias l='ls -lAhG'
alias ll='ls -lAhG'

