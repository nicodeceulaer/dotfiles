source ~/.bash/aliases.sh
source ~/.bash/completions.sh
source ~/.bash/paths.sh
source ~/.bash/config.sh
source ~/.bash/bash_ps1.sh

if [[ $OSTYPE == "linux-gnu" ]]; then
	# linux
    export DINGES=1
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    ### eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
    ### export PERL_MB_OPT="--install_base \"/Users/nicodeceulaer/perl5\""
    ### export PERL_MM_OPT="INSTALL_BASE=/Users/nicodeceulaer/perl5"

    ### handle readlink -f not working according posix on OsX
    export PATH="/usr/local/homebrew/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"


elif [[ $OSTYPE == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    export DINGES=1
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    export DINGES=1
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    export DINGES=1
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
    export DINGES=1
else
    # Unknown.
    echo "unknown OSTYPE : $OSTYPE"
fi

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "/home/nico/.gvm/scripts/gvm" ]] && source "/home/nico/.gvm/scripts/gvm"

