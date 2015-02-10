source ~/.bash/aliases.sh
source ~/.bash/completions.sh
source ~/.bash/paths.sh
source ~/.bash/config.sh
source ~/.bash/bash_ps1.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # ...
        echo "Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
    PERL_MB_OPT="--install_base \"/Users/nicodeceulaer/perl5\""; export PERL_MB_OPT;
    PERL_MM_OPT="INSTALL_BASE=/Users/nicodeceulaer/perl5"; export PERL_MM_OPT;
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    echo "cygwin"
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    echo "msys"
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    echo "win32"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
    echo "freebsd"
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

