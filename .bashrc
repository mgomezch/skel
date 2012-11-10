[ -z "$PS1" ] && return

if [ -f ${HOME}/.termcap ]; then
        TERMCAP=$(< ${HOME}/.termcap)
        export TERMCAP
fi

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
then
        PS1="${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ "
else
        PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "
fi

if [ -x /usr/bin/dircolors ]
then
    [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

if [ -f ~/.bash_aliases ]
then
    . ~/.bash_aliases
fi

#if [ -f /etc/bash_completion ]
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
    . /etc/bash_completion
fi



shopt -s                        \
        autocd                  \
        cdable_vars             \
        cdspell                 \
        checkjobs               \
        checkwinsize            \
        dirspell                \
        extglob                 \
        globstar                \
        histappend              \
        histreedit              \
        histverify              \
        hostcomplete            \
        lastpipe                \
        no_empty_cmd_completion \
        shift_verbose           \

function add_path() { [ -d "$1" ] && newpaths+=($1); }

newpaths=()
add_path "$HOME/bin"
add_path "$HOME/.perl/bin"
add_path "$HOME/.perl6/bin"
add_path "$HOME/.uhc/bin"
add_path "$HOME/.cabal/bin"
add_path "/var/local/manuel/haskell/lib/ghc-7.6.1-bin/bin"
add_path "/var/local/manuel/haskell/ghc/7.6.1-bin/bin"
add_path "/var/lib/gems/1.8/bin"
add_path "/var/lib/gems/1.9.1/bin"
add_path "/usr/bin/mh"



# Go programming language
export GOBIN="$HOME/.go/src/bin"
export GOOS=linux
export GOARCH=386
export GOROOT="$HOME/.go/src"
add_path "$GOBIN"


# MPD (music player dæmon)
#export MPD_HOST=xyzzy@localhost


# General configuration
export PAGER="less -S"
export EDITOR="vim"
export BC_LINE_LENGTH=0

# Bash configuration
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=8192
HISTFILESIZE=32768


export PATH="$(IFS=":"; printf "%s" "${newpaths[*]}"):$PATH"
