# ~/.bashrc: executed by bash(1) for non-login shells.

export LESS='-xfr'
export EDITOR=vim

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
export HISTCONTROL=ignoredups
eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias l='ls $LS_OPTIONS -Fahl'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if [ `id -u` -eq 0 ]; then
  export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/bin/X11:/usr/games"
fi
# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
   PATH=~/bin:"${PATH}"
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Load in the git branch prompt script.
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[1;39m\]" "\n\[\e[0;39m\]$ "'

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w$(git_branch)\[\033[00m\]\n\$ ' 
# git
#function git_branch {
#    _branch="$(git branch 2>/dev/null | sed -e "/^\s/d" -e "s/^\*\s//")"
#    test -n "$_branch" && echo -e " \e[0;32m[git::$_branch]"
#}

export TERM=xterm
