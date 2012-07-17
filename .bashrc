[ -z "$PS1" ] && return

if [ -f ${HOME}/.termcap ]; then
    TERMCAP=$(< ${HOME}/.termcap)
    export TERMCAP
fi

HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
HISTSIZE=8192
HISTFILESIZE=32768

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

bind -m vi-insert "\C-p":dynamic-complete-history
bind -m vi-insert "\C-n":menu-complete
bind -m vi-insert "\C-l":clear-screen
bind '"\C-v": "\ev"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#if [ -f /etc/bash_completion ]; then
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

newpaths=()

# add cabal-install’s bin to PATH
if [ -d "$HOME/.cabal/bin" ] ; then
        newpaths+=("$HOME/.cabal/bin")
fi

# add ghc-7.4.2’s bin to PATH
if [ -d "/opt/ghc/7.4.2/bin" ] ; then
        newpaths+=("/opt/ghc/7.4.2/bin")
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
        newpaths+=("$HOME/bin")
fi

# MPD (music player dæmon)
export MPD_HOST=iguana@localhost

# Go programming language
export GOBIN="$HOME/.go/src/bin"
export GOOS=linux
export GOARCH=386
export GOROOT="$HOME/.go/src"
newpaths+=("$GOBIN")
newpaths+=("$HOME/.go/src/bin")

# New MH message system
newpaths+=("/usr/bin/mh")

# Ruby 1.8 Gems
newpaths+=("/var/lib/gems/1.8/bin")

export PAGER="less -S"
export EDITOR="vim"
export BC_LINE_LENGTH=0

export PATH="$(IFS=":"; printf "%s" "${newpaths[*]}"):$PATH"
