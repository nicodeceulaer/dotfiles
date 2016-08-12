export PATH="~/bin:~/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

if [ -d "$HOME/opt/local/bin" ]; then
  export PATH="$HOME/opt/local/bin:$PATH"
fi

#MACHINE_TYPE=`uname -m`
#if [ ${MACHINE_TYPE} == 'x86_64' ]; then
#  # 64-bit stuff here
#else
#  # 32-bit stuff here
#fi

export LD_LIBRARY_PATH=/home/beq03881/opt/lib:$LD_LIBRARY_PATH
export LD_RUN_ATPH=/home/beq03881/opt/lib:$LD_RUN_PATH

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"