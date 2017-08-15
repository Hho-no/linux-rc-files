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
