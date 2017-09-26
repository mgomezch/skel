# Path to your oh-my-zsh configuration.
ZSH="${HOME}/.oh-my-zsh"
DEFAULT_USER='mgomezch'
DISABLE_AUTO_TITLE='false'
COMPLETION_WAITING_DOTS='true'
DISABLE_UNTRACKED_FILES_DIRTY='false' # This makes Git faster but it can’t notice untracked files well.
HIST_STAMPS='yyyy-mm-dd'

plugins=(
# aws
  bower
  bundler
  cabal
  catimg
  coffee
  colored-man
  colorize
  common-aliases
  compleat
  cpanm
  debian
  dircycle
  django
  docker
  docker-compose
  emoji
  encode64
  gem
  git
  git-extras
  git-flow
  git-hubflow
  github
  gnu-utils
  golang
  gpg-agent
  grunt
  heroku
  kubectl
  mercurial
  nmap
  node
  npm
  nyan
  pep8
  perl
  pip
  postgres
  pyenv
  pylint
  python
  rails
  ruby
  rust
  rvm
  sbt
  scala
  screen
  sprunge
  stack
  sudo
  systemd
  tmux
  urltools
  vagrant
  vim-interaction
  virtualenv
  zsh-nvm
)

# export UPDATE_ZSH_DAYS=13
# DISABLE_AUTO_UPDATE='true'

source "${ZSH}/oh-my-zsh.sh"
source "${HOME}/.zshtheme"



# zsh options

# Changing directories
  setopt AUTO_CD
unsetopt AUTO_PUSHD
unsetopt CDABLE_VARS
  setopt CHASE_DOTS
  setopt CHASE_LINKS
unsetopt POSIX_CD
unsetopt PUSHD_IGNORE_DUPS
unsetopt PUSHD_MINUS
#unsetopt PUSHD_SILENT
unsetopt PUSHD_TO_HOME

# Completion
  setopt ALWAYS_LAST_PROMPT
unsetopt ALWAYS_TO_END
  setopt AUTO_LIST
  setopt AUTO_MENU
  setopt AUTO_NAME_DIRS
unsetopt AUTO_PARAM_KEYS
  setopt AUTO_PARAM_SLASH
unsetopt AUTO_REMOVE_SLASH
  setopt BASH_AUTO_LIST
unsetopt COMPLETE_ALIASES
  setopt COMPLETE_IN_WORD
  setopt GLOB_COMPLETE
  setopt HASH_LIST_ALL
  setopt LIST_AMBIGUOUS
unsetopt LIST_BEEP
unsetopt LIST_PACKED
unsetopt LIST_ROWS_FIRST
  setopt LIST_TYPES
unsetopt MENU_COMPLETE
unsetopt REC_EXACT

# Expansion and globbing
  setopt BAD_PATTERN
  setopt BARE_GLOB_QUAL
  setopt BRACE_CCL
  setopt CASE_GLOB
  setopt CASE_MATCH
unsetopt CSH_NULL_GLOB
  setopt EQUALS
  setopt EXTENDED_GLOB
  setopt GLOB
unsetopt GLOB_ASSIGN
unsetopt GLOB_DOTS
unsetopt GLOB_SUBST
  setopt HIST_SUBST_PATTERN
unsetopt IGNORE_BRACES
unsetopt IGNORE_CLOSE_BRACES
unsetopt KSH_GLOB
unsetopt MAGIC_EQUAL_SUBST
unsetopt MARK_DIRS
  setopt MULTIBYTE
  setopt NOMATCH
unsetopt NULL_GLOB
unsetopt NUMERIC_GLOB_SORT
  setopt RC_EXPAND_PARAM
  setopt REMATCH_PCRE
unsetopt SH_GLOB
  setopt UNSET # :( this should really be set, but it breaks stuff
unsetopt WARN_CREATE_GLOBAL # :( this should really be set, but it breaks stuff

# History
  setopt APPEND_HISTORY
  setopt BANG_HIST
  setopt EXTENDED_HISTORY
# HIST_ALLOW_CLOBBER
  setopt HIST_BEEP
  setopt HIST_EXPIRE_DUPS_FIRST
  setopt HIST_FCNTL_LOCK
  setopt HIST_FIND_NO_DUPS
  setopt HIST_IGNORE_ALL_DUPS
  setopt HIST_IGNORE_DUPS
  setopt HIST_IGNORE_SPACE
  setopt HIST_LEX_WORDS
unsetopt HIST_NO_FUNCTIONS
unsetopt HIST_NO_STORE
unsetopt HIST_REDUCE_BLANKS
  setopt HIST_SAVE_BY_COPY
  setopt HIST_SAVE_NO_DUPS
  setopt HIST_VERIFY
  setopt INC_APPEND_HISTORY
  setopt SHARE_HISTORY

# Initialisation
unsetopt ALL_EXPORT
  setopt GLOBAL_EXPORT
  setopt GLOBAL_RCS
  setopt RCS

# Input/output
  setopt ALIASES
unsetopt CLOBBER
  setopt CORRECT
unsetopt CORRECT_ALL
unsetopt DVORAK
unsetopt FLOW_CONTROL
unsetopt IGNORE_EOF
  setopt INTERACTIVE_COMMENTS
unsetopt HASH_CMDS
unsetopt HASH_DIRS
unsetopt HASH_EXECUTABLES_ONLY
  setopt MAIL_WARNING
  setopt PATH_DIRS
# PATH_SCRIPT
# PRINT_EIGHT_BIT
unsetopt PRINT_EXIT_VALUE
  setopt RC_QUOTES
unsetopt RM_STAR_SILENT
  setopt RM_STAR_WAIT
  setopt SHORT_LOOPS
unsetopt SUN_KEYBOARD_HACK

# Job Control
  setopt AUTO_CONTINUE
unsetopt AUTO_RESUME
unsetopt BG_NICE
  setopt CHECK_JOBS
unsetopt HUP
  setopt LONG_LIST_JOBS
  setopt MONITOR
  setopt NOTIFY
# POSIX_JOBS

# Prompting
  setopt PROMPT_BANG
  setopt PROMPT_CR
  setopt PROMPT_SP
  setopt PROMPT_PERCENT
  setopt PROMPT_SUBST
  setopt TRANSIENT_RPROMPT

# Scripts and Functions
  setopt C_BASES
# C_PRECEDENCES
# DEBUG_BEFORE_CMD
unsetopt ERR_EXIT
unsetopt ERR_RETURN
  setopt EVAL_LINENO
  setopt EXEC
  setopt FUNCTION_ARGZERO
unsetopt LOCAL_OPTIONS # hmm…
unsetopt LOCAL_TRAPS # hmm…
  setopt MULTI_FUNC_DEF
# MULTIOS
  setopt OCTAL_ZEROES
unsetopt SOURCE_TRACE
unsetopt TYPESET_SILENT
unsetopt VERBOSE
unsetopt XTRACE

# Shell emulation
unsetopt BASH_REMATCH
unsetopt BSD_ECHO
unsetopt CONTINUE_ON_ERROR
unsetopt CSH_JUNKIE_HISTORY
unsetopt CSH_JUNKIE_LOOPS
unsetopt CSH_JUNKIE_QUOTES
# CSH_NULLCMD
unsetopt KSH_ARRAYS
unsetopt KSH_AUTOLOAD
unsetopt KSH_OPTION_PRINT
unsetopt KSH_TYPESET
unsetopt KSH_ZERO_SUBSCRIPT
unsetopt POSIX_ALIASES
# POSIX_BUILTINS
unsetopt POSIX_IDENTIFIERS
unsetopt POSIX_STRINGS
unsetopt POSIX_TRAPS
unsetopt SH_FILE_EXPANSION
# SH_NULLCMD
unsetopt SH_OPTION_LETTERS
unsetopt SH_WORD_SPLIT
  setopt TRAPS_ASYNC

# Zle
  setopt BEEP
  setopt COMBINING_CHARS
  setopt EMACS
unsetopt OVERSTRIKE
unsetopt SINGLE_LINE_ZLE
unsetopt VI
  setopt ZLE



# Completion configuration

zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=* r:|=*' '+l:|=* r:|=*'
zstyle ':completion:*' match-original only
zstyle ':completion:*' max-errors 6 numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original false
zstyle ':completion:*' verbose true

zstyle :compinstall filename "${HOME}/.zshrc"
autoload -Uz compinit
compinit



# History searching with PageUp/Down

bindkey '^[[5~' history-beginning-search-backward
bindkey '^[[6~' history-beginning-search-forward



# TODO: manpath

# User executable and library paths
bin_new_paths=(); function bin_add_path() { [[ -d $1 ]] && bin_new_paths+=($1); }
lib_new_paths=(); function lib_add_path() { [[ -d $1 ]] && lib_new_paths+=($1); }
inc_new_paths=(); function inc_add_path() { [[ -d $1 ]] && inc_new_paths+=($1); }
inf_new_paths=(); function inf_add_path() { [[ -d $1 ]] && inf_new_paths+=($1); }
man_new_paths=(); function man_add_path() { [[ -d $1 ]] && man_new_paths+=($1); }

# Executable paths
bin_add_path "${HOME}/.rvm/bin"
bin_add_path "${HOME}/.pyenv/bin"
bin_add_path "${HOME}/.cargo/bin"
bin_add_path "${HOME}/.rakudobrew/moar-nom/install/share/perl6/site/bin"
bin_add_path "${HOME}/bin"
bin_add_path "${HOME}/stuff/bin"
bin_add_path "${HOME}/stuff/commands"
bin_add_path "${HOME}/.cabal/bin"
bin_add_path "${HOME}/.opt/github/hub/bin"
bin_add_path "${HOME}/.opt/texlive/2013/bin/i386-linux"
bin_add_path "${HOME}/.opt/TogglDesktop"
bin_add_path "${HOME}/perl5/perlbrew/bin"

# Library paths
#lib_add_path "${HOME}/.opt/gcc/lib64"

# Include paths — shouldn’t this be handled by pkg-config?
#inc_add_path "${HOME}/.opt/postgresql/9.2.4/include"

# GNU texinfo paths
#inf_add_path "${HOME}/.opt/texlive/2013/texmf-dist/doc/info"

# Manual paths
#man_add_path "${HOME}/.opt/texlive/2013/texmf-dist/doc/man"

export            PATH="$(IFS=':'; printf '%s' "${bin_new_paths[*]}"):${PATH}"
export LD_LIBRARY_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):${LD_LIBRARY_PATH}"
export     LD_RUN_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):${LD_RUN_PATH}"
export  C_INCLUDE_PATH="$(IFS=':'; printf '%s' "${inc_new_paths[*]}"):${C_INCLUDE_PATH}"
export        INFOPATH="$(IFS=':'; printf '%s' "${inf_new_paths[*]}"):${INFOPATH}"
export         MANPATH="$(IFS=':'; printf '%s' "${man_new_paths[*]}"):${MANPATH}"



# Environment

[[ ${TERM} == xterm ]] && export TERM='xterm-256color'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export PAGER='less -S'
export LESS='-r'
export EDITOR='vim'
export BC_LINE_LENGTH=0



function v1p() {
  vim -E \
    -c 1p               \
    -c 'echo input("")' \
    -c q                \
    "${@}"
}



command -v pyenv &>/dev/null && {
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
}

command -v thefuck &>/dev/null && eval "$(thefuck --alias)"

[[ -x "$HOME/.rakudobrew/bin/rakudobrew" ]] && eval "$(~/.rakudobrew/bin/rakudobrew init -)"

function source_if_exists() {
  [[ -s "${1}" ]] && source "${1}"
}
source_if_exists "${HOME}/.nix-profile/etc/profile.d/nix.sh"
source_if_exists "${HOME}/perl5/perlbrew/etc/bashrc"
source_if_exists "${HOME}/.gvm/scripts/gvm"
source_if_exists "${HOME}/.rvm/scripts/rvm"
source_if_exists "${HOME}/stuff/code/repo/github.bus.zalan.do/bocytko/teams-helpers/teams-helpers"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"



alias sqitch-surveys='docker run -it -v ~/.sqitch:/root/.sqitch -v "$PWD:/src" --rm matteofigus/docker-sqitch sqitch'

alias pst='pstree -pUSlaughs'

alias psxe='ps -eFlyww'

alias psx='ps -Flyww'

alias nstl='sudo netstat -tnlp'

alias lines="tr ' ' '\n'"

alias k='kubectl'
alias kg='k get -a -o wide --show-labels'
alias kga='kg all'
alias kgj='kg -o json'
alias kgaj='kga -o json'
alias kd='k describe'
alias kD='k delete'
alias kc='k create'
alias kcf='kc -f'
alias kl='k logs'
alias klf='kl --follow'
alias kt='k top'
alias ke='k exec -it'
alias kconf='k config'
alias kcfg='kconf'
alias kr='k run'
alias kpf='k port-forward'

alias kmini='kcfg use-context minikube'

alias mk='kubectl --context=minikube'
alias mkg='mk get -a -o wide --show-labels'
alias mkga='mkg all'
alias mkgj='mkg -o json'
alias mkgaj='mkga -o json'
alias mkd='mk describe'
alias mkD='mk delete'
alias mkc='mk create'
alias mkcf='mkc -f'
alias mkl='mk logs'
alias mklf='mkl --follow'
alias mkt='mk top'
alias mke='mk exec -it'
alias mkconf='mk config'
alias mkcfg='mkconf'
alias mkr='mk run'
alias mkpf='mk port-forward'

alias zk='zkubectl'
alias zkg='zk get -a -o wide --show-labels'
alias zkgo='zkg --output=''jsonpath={.items..metadata.name}'''
alias zkgp='zkg pods'
alias zkgpo='zkgp --output=''jsonpath={.items..metadata.name}'''
alias zkga='zkg all'
alias zkgj='zkg -o json'
alias zkgaj='zkga -o json'
alias zkd='zk describe'
alias zkD='zk delete'
alias zkc='zk create'
alias zkcf='zkc -f'
alias zkl='zk logs'
alias zklf='zkl --follow'
alias zkt='zk top'
alias zke='zk exec -it'
alias zkconf='zk config'
alias zkcfg='zkconf'
alias zkr='zk run'
alias zkpf='zk port-forward'

alias zkspilos='zkgp --selector=''application=spilo'''
alias zkss='zkspilos'
alias zksso='zkss --output=''jsonpath={.items..metadata.name}'''
alias zkspilosprimary='zkgp --selector=''application=spilo,spilo-role=master'''
alias zkspilosreplica='zkgp --selector=''application=spilo,spilo-role=replica'''
alias zkssp='zkspilosprimary'
alias zkssr='zkspilosreplica'
alias zksspo='zkssp --output=''jsonpath={.items..metadata.name}'''
alias zkssro='zkssr --output=''jsonpath={.items..metadata.name}'''
alias zkssop='zksspo'
alias zkssor='zkssro'

function zkspilo() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgp --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zks='zkspilo'

function zkspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zksp='zkspiloprimary'

function zkspiloreplica() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zksr='zkspiloreplica'
alias zksro='zksr'

function zkspilopods() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpo --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zkso='zkspilopods'

function zkspiloprimarypods() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpo "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zkspo='zkspiloprimarypods'
alias zksop='zkspo'

function zkspiloreplicapods() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zksro='zkspiloreplicapods'
alias zksor='zksro'

function zklspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zkl "$(zkspo "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zklsp='zklspiloprimary'
alias zkspl='zklsp'

function zkespiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zke "$(zkspo "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
  fi
}
alias zkesp='zkespiloprimary'
alias zkspe='zkesp'

function zkbash() {
  zke "${@}" -- bash
}
alias zkb='zkbash'

function zkspiloprimarybash() {
  zkesp "${@}" -- bash
}
alias zkspb='zkspiloprimarybash'
alias zkbsp='zkspb'

function zkpsql() {
  zke "${@}" -- sudo -i -u postgres -- psql
}
alias zkq='zkpsql'

function zkspiloprimarypsql() {
  zkesp "${@}" -- sudo -i -u postgres -- psql
}
alias zkspq='zkspiloprimarypsql'
alias zkqsp='zkspq'

function zkspilopatronictl() {
  pg_cluster_name="${1}"
  patronictl_command="${2}"
  if shift && shift
  then
    zke "$(zkso "${pg_cluster_name}" | lines | head -n 1)" -- sudo -i -u postgres -- patronictl "${patronictl_command}" "${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name patronictl_command" >&2
  fi
}
alias zksc='zkspilopatronictl'

function loop_mksh() {
  while true
  do
    if \
      sudo VBoxManage showvminfo --machinereadable minikube \
      | grep -m1 -q '^VMState="paused"'
    then
      mke "${1}" -- bash -c 'TERM=xterm bash'
      echo 'Exited kubectl exec'
    fi
    sleep_tagged minikube_vbox
  done
}

function loop_mklf() {
  while true
  do
    if \
      sudo VBoxManage showvminfo --machinereadable minikube \
      | grep -m1 -q '^VMState="paused"'
    then
      mklf --tail=100 "${1}"
      echo 'Exited kubectl logs'
    fi
    sleep_tagged minikube_vbox
  done
}

function work-hours() {
  cat "${@:-${HOME}/work.yaml}" | yaml2json - | jq '((([.[] | ."Home time",."Office time" | .Ranges | .[]? | .Duration | strings | ((capture("(?<amount>[0-9]+)m") | .amount | tonumber), (capture("(?<amount>[0-9]+)h") | .amount | tonumber | . * 60))] | add) // 0) - (8 * 60 * ([.[] | .Day | values] | length))) / 60'
}

function work-expenses() {
  cat "${@:-${HOME}/work.yaml}" | yaml2json - | jq '([ .. | .Amount? | strings | capture("(?<amount>[0-9]+)") | .amount | tonumber] | add) // 0'
}

function work-hours-plot() {
  cat "${@:-${HOME}/work.yaml}" | yaml2json - | jq -r 'map_values(((([."Home time",."Office time" | .Ranges | .[]? | .Duration | strings | ((capture("(?<amount>[0-9]+)m") | .amount | tonumber), (capture("(?<amount>[0-9]+)h") | .amount | tonumber | . * 60))]) | add // 0) / 60)) | to_entries | .[] | .key + " " + (.value | tostring)' | sort -n | gnuplot -p -e 'set xdata time; set timefmt "%Y-%m-%d"; set offset graph 0.05, 0.05, 0.05, 0.05; set xzeroaxis; set arrow 1 from graph 0,first 8 to graph 1,first 8 nohead; set title ""; plot "<cat" using 1:2 notitle'
}

function work-expenses-plot() {
  cat "${@:-${HOME}/work.yaml}" | yaml2json - | jq -r 'map_values(.. | .Amount? | (strings | capture("(?<amount>[0-9]+)") | .amount | tonumber) // 0) | to_entries | .[] | .key + " " + (.value | tostring)' | sort -n | gnuplot -p -e 'set xdata time; set timefmt "%Y-%m-%d"; set offset graph 0.05, 0.05, 0.05, 0.05; set xzeroaxis; set title ""; plot "<cat" using 1:2 notitle'
}

alias ag-zalando-hostname="ag -ui '([a-z]([a-z0-9]*|[a-z0-9-]*[a-z0-9]+)\.)+(pp|zalan\.do|zalando\.([a-z][a-z][a-z]?|co\.[a-z][a-z])|zalando)\b\.?(?=[^.a-z0-9]|$)'"

function ghclone() {
  (
    cd ~/stuff/code/repo/github.com &&
    git clone "git@github.com:${1}" "${1}"
  )
}

function cdg() {
  cd ~/"stuff/code/repo/github.com/${1}"
}

function zclone() {
  (
    cd ~/'stuff/code/repo/github.bus.zalan.do' &&
    git clone "git@github.bus.zalan.do:${1}" "${1}"
  )
}

function cdz() {
  cd ~/"stuff/code/repo/github.bus.zalan.do/${1}"
}

function docker_pids() {
  if [[ "${#}" != 1 ]]
  then
    printf 'Usage: %s CONTAINER\n' "${0}"
    return 1
  fi
  awk \
    '/NSpid/ { print $2, $3; }' \
    $(
      pgrep \
        --parent "$(docker inspect --format '{{.State.Pid}}' "${1}")" \
        2> /dev/null \
      | sed -e 's@.*@/proc/&/status@'
    ) \
  | column -t
}



zle -C all-matches complete-word _my_generic
zstyle ':completion:all-matches::::' completer _all_matches
zstyle ':completion:all-matches:*' old-matches only
_my_generic () {
  local ZSH_TRACE_GENERIC_WIDGET=  # works with "setopt nounset"
  _generic "$@"
}
bindkey '^X^a' all-matches


# Fix ag, aliased to apt-get in the Ubuntu Oh My Zsh plugin:
unalias ag

eval $(thefuck --alias)
