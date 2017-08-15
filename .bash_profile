# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/bin:$PATH

export PATH
unset USERNAME

stty -ixon

alias sudo="sudo -E"
alias sudox11="xauth add $(xauth -f $SUDO_USER/.Xauthority list|tail -1)"
alias getdockernic="echo -n "ifindex: " && ip link |grep $(nsenter --net=$(docker inspect --format='{{.NetworkSettings.SandboxKey}}' $(docker ps -a|grep a6e7|cut -d ' ' -f 1)) ethtool -S eth0|grep ifindex|cut -d ':' -f 2-3)|cut -d ':' -f 1-2"
