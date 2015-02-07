source ~/.bash/completion_scripts/git_completion
complete -C ~/.bash/completion_scripts/rake_completion -o default rake
complete -C ~/.bash/completion_scripts/project_completion -o default c
complete -C ~/.bash/completion_scripts/capistrano_completion -o default cap
source /usr/local/etc/bash_completion.d/hg-completion.bash

# ssh host tab completion
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
