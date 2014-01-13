[ -z "$PS1" ] && return

if [ -f ${HOME}/.termcap ]; then
  TERMCAP=$(< ${HOME}/.termcap)
  export TERMCAP
fi

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



# Prompt

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot="$(cat /etc/debian_chroot)"
fi

PROMPT_DIRTRIM=3

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
then
  PS1='\[\e[01;30m\]\t $(exitcode="$?"; if [[ $exitcode != 0 ]]; then echo "\[\e[31m\]$exitcode "; fi)\[\e[01;32m\]\u@\h\[\e[01;37m\]:\[\e[00;31m\]$(__git_ps1 "(%s)")\[\e[01;34m\]\w\[\e[00m\]\$ '
else
  PS1="(\$?) ${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "
fi

if [ -x /usr/bin/dircolors ]
then
  [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi



# General configuration

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export PAGER='less -S'
export EDITOR='vim'
export BC_LINE_LENGTH=0
#export MPD_HOST=@localhost
#export PGDATA="$HOME/.opt/postgresql/9.2.4/data"

# Bash customization

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=6553500
HISTFILESIZE=6553500

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias please='sudo'

shopt -s                  \
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



# User executable and library paths
bin_new_paths=(); function bin_add_path() { [ -d "$1" ] && bin_new_paths+=($1); }
lib_new_paths=(); function lib_add_path() { [ -d "$1" ] && lib_new_paths+=($1); }
inc_new_paths=(); function inc_add_path() { [ -d "$1" ] && inc_new_paths+=($1); }

# Executable paths
bin_add_path "$HOME/bin"
bin_add_path "$HOME/.cabal/bin"
#bin_add_path "$HOME/.opt/haskell-platform/2012.4.0.0/bin"
#bin_add_path "$HOME/.opt/ghc/4.7.2-bin/bin"
#bin_add_path "$HOME/.opt/postgresql/9.2.4/bin"
#bin_add_path "$HOME/.opt/vim/7.3/bin"
#bin_add_path "$HOME/.opt/gcc/bin"
#bin_add_path "$HOME/perl5/perlbrew/bin"

# Library paths
#lib_add_path "$HOME/.opt/postgresql/9.2.4/lib"
#lib_add_path "$HOME/.opt/gcc/lib"
#lib_add_path "$HOME/.opt/gcc/lib64"

# Include paths
#inc_add_path "$HOME/.opt/postgresql/9.2.4/include"

export            PATH="$(IFS=':'; printf '%s' "${bin_new_paths[*]}"):$PATH"
export LD_LIBRARY_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):$LD_LIBRARY_PATH"
export     LD_RUN_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):$LD_RUN_PATH"
export  C_INCLUDE_PATH="$(IFS=':'; printf '%s' "${inc_new_paths[*]}"):$C_INCLUDE_PATH"

#export LD_LIBRARY_PATH="$(ghc-pkg list --simple-output --global | sed -e 's@ @:@g' -e "s@[^:]\+@$HOME/.cabal/lib/i386-linux-ghc-7.7.20130420/&@g"):$(ghc-pkg list --simple-output --global | sed -e 's@ @:@g' -e 's@[^:]\+@/var/local/manuel/haskell/ghc/HEAD/lib/ghc-7.7.20130420/&@g')"



# Brews

function source_if_exists() {
  if [[ -s "$1" ]]
  then
    source "$1"
  fi
}

source_if_exists "$HOME/perl5/perlbrew/etc/bashrc"
source_if_exists "$HOME/.rvm/scripts/rvm"
source_if_exists "$HOME/.pythonbrew/etc/bashrc"
