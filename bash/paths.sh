if [ -d "$HOME/opt/local/bin" ]; then
  export PATH="$HOME/opt/local/bin:$PATH"
fi

#MACHINE_TYPE=`uname -m`
#if [ ${MACHINE_TYPE} == 'x86_64' ]; then
#  # 64-bit stuff here
#else
#  # 32-bit stuff here
#fi

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
