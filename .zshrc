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

command -v zkubectl > /dev/null && source <(zkubectl completion zsh)



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
bin_add_path "${HOME}/bin"
bin_add_path "${HOME}/stuff/bin"
bin_add_path "${HOME}/stuff/commands"
bin_add_path "${HOME}/.cabal/bin"
bin_add_path "${HOME}/.opt/github/hub/bin"
bin_add_path "${HOME}/stuff/code/repo/github.bus.zalan.do/acid/db-utils"

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
export PAGER='most'
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

function pst() { pstree -pUSlaughs }
function psxe() { ps -eFlyww }
function psx() { ps -Flyww }
function nstl() { sudo netstat -tnlp }
function lines() { tr ' ' '\n' }
function myip() { dig TXT +short 'o-o.myaddr.l.google.com' @'ns1.google.com' | tr -d '"' }



function k() { kubectl "${@}" }

function kg() { k get --show-all --output=wide --show-labels "${@}" }
function kgj() { kg --output=json "${@}" }
function kgy() { kg --output=yaml "${@}" }
function kgn() { kg --output=name "${@}" }

function kgp() { kg pods "${@}" }
function kgpj() { kgj pods "${@}" }
function kgpy() { kgy pods "${@}" }
function kgpn() { kgn pods "${@}" }

function kga() { kg all "${@}" }
function kgaj() { kgj all "${@}" }
function kgay() { kgy all "${@}" }
function kgan() { kgn all "${@}" }

function kd() { k describe "${@}" }
function kD() { k delete "${@}" }
function kE() { k edit "${@}" }
function kC() { k create "${@}" }
function kCf() { kc -f "${@}" }

function kl() { k logs "${@}" }
function klf() { kl --follow "${@}" }
function kt() { k top "${@}" }
function kconf() { k config "${@}" }
function kcfg() { kconf "${@}" }
function kr() { k run "${@}" }
function kpf() { k port-forward "${@}" }

function ke() { k exec -it "${@}" }

function ksh() {
  ke "${@}" -- sh
}

function kbash() {
  ke "${@}" -- bash
}
function kb() { kbash "${@}" }

function kpsql() {
  ke "${@}" -- \
    sudo -i -u 'postgres' -- \
      psql
}
function kq() { kpsql "${@}" }

function k_l() {
  command="${1}"
  selector="${2}"
  if shift && shift
  then
    "${command}" "$(kgpn -l "${selector}" | sed -e 's@pods/@@' | head -n 1)" "${@}"
  else
    echo "usage: ${0} command selector" >&2
    return 1
  fi
}

function k_a() {
  command="${1}"
  application_name="${2}"
  if shift && shift
  then
    k_l "${command}" "application=${application_name}" "${@}"
  else
    echo "usage: ${0} command application_name" >&2
    return 1
  fi
}

function kll() { k_l kl "${@}" }
function kla() { k_a kl "${@}" }
function klfl() { k_l klf "${@}" }
function klfa() { k_a klf "${@}" }
function kel() { k_l ke "${@}" }
function kea() { k_a ke "${@}" }
function kshl() { k_l ksh "${@}" }
function ksha() { k_a ksh "${@}" }
function kbl() { k_l kb "${@}" }
function kba() { k_a kb "${@}" }

function kpgopl() { kla 'postgres-operator' "${@}" }
function kpgoplf() { klfa 'postgres-operator' "${@}" }
function kpguil() { kla 'postgres-operator-ui' "${@}" }
function kpguilf() { klfa 'postgres-operator-ui' "${@}" }

alias kspilos='kgp --selector=''application=spilo'''
alias kspilosj='kgpj --selector=''application=spilo'''
alias kspilosy='kgpy --selector=''application=spilo'''
alias kspilosn='kgpn --selector=''application=spilo'''
function kss() { kspilos "${@}" }
function kssj() { kspilosj "${@}" }
function kssy() { kspilosy "${@}" }
function kssn() { kspilosn "${@}" }

alias kspilosprimary='kgp --selector=''application=spilo,spilo-role=master'''
alias kspilosprimaryj='kgpj --selector=''application=spilo,spilo-role=master'''
alias kspilosprimaryy='kgpy --selector=''application=spilo,spilo-role=master'''
alias kspilosprimaryn='kgpn --selector=''application=spilo,spilo-role=master'''
function kssp() { kspilosprimary "${@}" }
function ksspj() { kspilosprimaryj "${@}" }
function ksspy() { kspilosprimaryy "${@}" }
function ksspn() { kspilosprimaryn "${@}" }

alias kspilosreplica='kgp --selector=''application=spilo,spilo-role=replica'''
function kssr() { kspilosreplica "${@}" }
function ksspn() { kssp --output=name "${@}" }
function kssrn() { kssr --output=name "${@}" }
function kssop() { ksspn "${@}" }
function kssor() { kssrn "${@}" }

function kspilo() {
  pg_cluster_name="${1}"
  if shift
  then
    kgp --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloj() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpj --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloy() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpy --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspilon() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpn --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function ks() { kspilo "${@}" }
function ksj() { kspiloj "${@}" }
function ksy() { kspiloy "${@}" }
function ksn() { kspilon "${@}" }

function kspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    kgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloprimaryj() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpj "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloprimaryy() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpy "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloprimaryn() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpn "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function ksp() { kspiloprimary "${@}" }
function kspj() { kspiloprimaryj "${@}" }
function kspy() { kspiloprimaryy "${@}" }
function kspn() { kspiloprimaryn "${@}" }

function kspiloreplica() {
  pg_cluster_name="${1}"
  if shift
  then
    kgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloreplicaj() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpj "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloreplicay() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpy "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kspiloreplican() {
  pg_cluster_name="${1}"
  if shift
  then
    kgpn "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function ksr() { kspiloreplica "${@}" }
function ksrj() { kspiloreplicaj "${@}" }
function ksry() { kspiloreplicay "${@}" }
function ksrn() { kspiloreplican "${@}" }

function klspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    kl "$(kspn "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function klsp() { klspiloprimary "${@}" }
function kspl() { klsp "${@}" }

function kespiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    ke "$(kspn "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function kesp() { kespiloprimary "${@}" }
function kspe() { kesp "${@}" }

function kspiloprimarybash() {
  kesp "${@}" -- bash
}
function kspb() { kspiloprimarybash "${@}" }
function kbsp() { kspb "${@}" }

function kspiloprimarypsql() {
  kesp "${@}" -- \
    sudo -i -u 'postgres' -- \
      psql
}
function kspq() { kspiloprimarypsql "${@}" }
function kqsp() { kspq "${@}" }

function kspilopatronictl() {
  pg_cluster_name="${1}"
  patronictl_command="${2}"
  if shift && shift
  then
    ke "$(ksn "${pg_cluster_name}" | lines | head -n 1)" --container='postgres' -- \
      sudo -i -u 'postgres' -- \
        patronictl "${patronictl_command}" "${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name patronictl_command" >&2
    return 1
  fi
}
function ksc() { kspilopatronictl "${@}" }



function kmini() { kcfg use-context minikube "${@}" }

function mk() { kubectl --context=minikube "${@}" }

function mkg() { mk get --show-all --output=wide --show-labels "${@}" }
function mkgj() { mkg --output=json "${@}" }
function mkgy() { mkg --output=yaml "${@}" }
function mkgn() { mkg --output=name "${@}" }

function mkgp() { mkg pods "${@}" }
function mkgpj() { mkgj pods "${@}" }
function mkgpy() { mkgy pods "${@}" }
function mkgpn() { mkgn pods "${@}" }

function mkga() { mkg all "${@}" }
function mkgaj() { mkgj all "${@}" }
function mkgay() { mkgy all "${@}" }
function mkgan() { mkgn all "${@}" }

function mkd() { mk describe "${@}" }
function mkD() { mk delete "${@}" }
function mkE() { mk edit "${@}" }
function mkC() { mk create "${@}" }
function mkCf() { mkc -f "${@}" }

function mkl() { mk logs "${@}" }
function mklf() { mkl --follow "${@}" }
function mkt() { mk top "${@}" }
function mke() { mk exec -it "${@}" }
function mkconf() { mk config "${@}" }
function mkcfg() { mkconf "${@}" }
function mkr() { mk run "${@}" }
function mkpf() { mk port-forward "${@}" }

function mksh() {
  mke "${@}" -- sh
}

function mkbash() {
  mke "${@}" -- bash
}
function mkb() { mkbash "${@}" }

function mkpsql() {
  mke "${@}" -- sudo -i -u 'postgres' -- psql
}
function mkq() { mkpsql "${@}" }

function mk_l() {
  command="${1}"
  selector="${2}"
  if shift && shift
  then
    "${command}" "$(mkgpn -l "${selector}" | sed -e 's@pods/@@' | head -n 1)" "${@}"
  else
    echo "usage: ${0} command selector" >&2
    return 1
  fi
}

function mk_a() {
  command="${1}"
  application_name="${2}"
  if shift && shift
  then
    mk_l "${command}" "application=${application_name}" "${@}"
  else
    echo "usage: ${0} command application_name" >&2
    return 1
  fi
}

function mkll() { mk_l mkl "${@}" }
function mkla() { mk_a mkl "${@}" }
function mklfl() { mk_l mklf "${@}" }
function mklfa() { mk_a mklf "${@}" }
function mkel() { mk_l mke "${@}" }
function mkea() { mk_a mke "${@}" }
function mkshl() { mk_l mksh "${@}" }
function mksha() { mk_a mksh "${@}" }
function mkbl() { mk_l mkb "${@}" }
function mkba() { mk_a mkb "${@}" }

function mkpgopl() { mkla postgres-operator "${@}" }
function mkpgoplf() { mklfa postgres-operator "${@}" }
function mkpguil() { mkla postgres-operator-ui "${@}" }
function mkpguilf() { mklfa postgres-operator-ui "${@}" }

alias mkspilos='mkgp --selector=''application=spilo'''
alias mkspilosj='mkgpj --selector=''application=spilo'''
alias mkspilosy='mkgpy --selector=''application=spilo'''
alias mkspilosn='mkgpn --selector=''application=spilo'''
function mkss() { mkspilos "${@}" }
function mkssj() { mkspilosj "${@}" }
function mkssy() { mkspilosy "${@}" }
function mkssn() { mkspilosn "${@}" }

alias mkspilosprimary='mkgp --selector=''application=spilo,spilo-role=master'''
alias mkspilosprimaryj='mkgpj --selector=''application=spilo,spilo-role=master'''
alias mkspilosprimaryy='mkgpy --selector=''application=spilo,spilo-role=master'''
alias mkspilosprimaryn='mkgpn --selector=''application=spilo,spilo-role=master'''
function mkssp() { mkspilosprimary "${@}" }
function mksspj() { mkspilosprimaryj "${@}" }
function mksspy() { mkspilosprimaryy "${@}" }
function mksspn() { mkspilosprimaryn "${@}" }

alias mkspilosreplica='mkgp --selector=''application=spilo,spilo-role=replica'''
function mkssr() { mkspilosreplica "${@}" }
function mksspn() { mkssp --output=name "${@}" }
function mkssrn() { mkssr --output=name "${@}" }
function mkssop() { mksspn "${@}" }
function mkssor() { mkssrn "${@}" }

function mkspilo() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgp --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloj() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpj --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloy() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpy --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspilon() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpn --selector="application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mks() { mkspilo "${@}" }
function mksj() { mkspiloj "${@}" }
function mksy() { mkspiloy "${@}" }
function mksn() { mkspilon "${@}" }

function mkspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloprimaryj() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpj "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloprimaryy() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpy "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloprimaryn() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpn "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=master"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mksp() { mkspiloprimary "${@}" }
function mkspj() { mkspiloprimaryj "${@}" }
function mkspy() { mkspiloprimaryy "${@}" }
function mkspn() { mkspiloprimaryn "${@}" }

function mkspiloreplica() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgp "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloreplicaj() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpj "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloreplicay() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpy "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkspiloreplican() {
  pg_cluster_name="${1}"
  if shift
  then
    mkgpn "${@}" --selector="application=spilo,version=${pg_cluster_name},spilo-role=replica"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mksr() { mkspiloreplica "${@}" }
function mksrj() { mkspiloreplicaj "${@}" }
function mksry() { mkspiloreplicay "${@}" }
function mksrn() { mkspiloreplican "${@}" }

function mklspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    mkl "$(mkspn "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mklsp() { mklspiloprimary "${@}" }
function mkspl() { mklsp "${@}" }

function mkespiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    mke "$(mkspn "${pg_cluster_name}")" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function mkesp() { mkespiloprimary "${@}" }
function mkspe() { mkesp "${@}" }

function mkspiloprimarybash() {
  mkesp "${@}" -- bash
}
function mkspb() { mkspiloprimarybash "${@}" }
function mkbsp() { mkspb "${@}" }

function mkspiloprimarypsql() {
  mkesp "${@}" -- sudo -i -u 'postgres' -- psql
}
function mkspq() { mkspiloprimarypsql "${@}" }
function mkqsp() { mkspq "${@}" }

function mkspilopatronictl() {
  pg_cluster_name="${1}"
  patronictl_command="${2}"
  if shift && shift
  then
    mke "$(mksn "${pg_cluster_name}" | lines | head -n 1)" --container='postgres' -- \
      sudo -i -u 'postgres' -- \
        patronictl "${patronictl_command}" "${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name patronictl_command" >&2
    return 1
  fi
}
function mksc() { mkspilopatronictl "${@}" }



# zkubectl

function zk() { zkubectl "${@}" }

function zclusters() {
  zttp \
    'cluster-registry.stups.zalan.do/kubernetes-clusters' \
    | jq -r '
      .items[]
      | select(.alias != "")
      | (
        .alias
        + " "
        + (
          .infrastructure_account
          | sub("^aws:"; "")
        )
      )
    ' \
    | sort -u \
    | column -t
}
function zcs() { zclusters "${@}" }

function zclustersroles() {
  accounts="$(
    zttp 'cluster-registry.stups.zalan.do/infrastructure-accounts' \
      | jq -r \
        '
          .items[]
          | select(
            .owner
            | match("^community/")
          )
          | (
            .name
            + "|" + .owner
          )
        ' \
      | sort
  )"
  clusters="$(
    zttp 'cluster-registry.stups.zalan.do/kubernetes-clusters' \
      | jq -r \
        '
          .items[]
          .alias
          | select(. != "")
        ' \
      | sort
  )"
  join \
    -o '0 1.2' \
    -t '|' \
    -j 1 \
    <(<<<"${accounts}") \
    <(<<<"${clusters}") \
    | column -t -s '|'
}
function zcsrs() { zclustersroles "${@}" }

function zkL() { zk login "${@}" }

# Commonly used clusters:
function zp() { zkL 'playground' }
function zdb() { zkL 'db' }

function zkg() { zk get --show-all --output='wide' --show-labels "${@}" }
function zkgj() { zkg --output='json' "${@}" }
function zkgy() { zkg --output='yaml' "${@}" }
function zkgn() { zkg --output='name' "${@}" }

function zkgN() { zkg nodes "${@}" }
function zkgNj() { zkgj nodes "${@}" }
function zkgNy() { zkgy nodes "${@}" }
function zkgNn() { zkgn nodes "${@}" }

function zkgp() { zkg pods "${@}" }
function zkgpj() { zkgj pods "${@}" }
function zkgpy() { zkgy pods "${@}" }
function zkgpn() { zkgn pods "${@}" }

function zkgA() { zkg all "${@}" }
function zkgAj() { zkgj all "${@}" }
function zkgAy() { zkgy all "${@}" }
function zkgAn() { zkgn all "${@}" }

function zkd() { zk describe "${@}" }
function zkdp() { zkd pods "${@}" }

function zkA() { zk apply "${@}" }
function zkAf() { zka -f "${@}" }
function zkC() { zk create "${@}" }
function zkCf() { zkc -f "${@}" }
function zkD() { zk delete "${@}" }
function zkE() { zk edit "${@}" }

function zkl() { zk logs "${@}" }
function zklf() { zkl --follow "${@}" }
function zkt() { zk top "${@}" }
function zke() { zk exec -it "${@}" }
function zkconf() { zk config "${@}" }
function zkcfg() { zkconf "${@}" }
function zkr() { zk run "${@}" }
function zkpf() { zk port-forward "${@}" }

function zksh() {
  zke "${@}" -- sh
}

function zkbash() {
  zke "${@}" -- bash
}
function zkb() { zkbash "${@}" }

function zkpsql() {
  zke "${@}" -- \
    sudo -i -u 'postgres' -- \
      psql
}
function zkq() { zkpsql "${@}" }

function zk_l() {
  command="${1}"
  selector="${2}"
  if shift && shift
  then
    "${command}" -l "${selector}" "${@}"
  else
    echo "usage: ${0} command selector" >&2
    return 1
  fi
}

function zk_a() {
  command="${1}"
  application="${2}"
  if shift && shift
  then
    zk_l "${command}" "application=${application}" "${@}"
  else
    echo "usage: ${0} command application" >&2
    return 1
  fi
}

function zk_v() {
  command="${1}"
  version="${2}"
  if shift && shift
  then
    zk_l "${command}" "version=${version}" "${@}"
  else
    echo "usage: ${0} command version" >&2
    return 1
  fi
}

# describe resource matching label, application or version:
function zkdl() { zk_l zkd "${@}" }
function zkda() { zk_a zkd "${@}" }
function zkdv() { zk_v zkd "${@}" }

# describe pods matching label, application or version:
function zkdPl() { zk_l zkdp "${@}" }
function zkdPa() { zk_l zkdp "${@}" }
function zkdPv() { zk_l zkdp "${@}" }

# get resource matching label, application or version:
function zkgl() { zk_l zkg "${@}" }
function zkga() { zk_a zkg "${@}" }
function zkgv() { zk_v zkg "${@}" }
function zkglj() { zk_l zkgj "${@}" }
function zkgaj() { zk_a zkgj "${@}" }
function zkgvj() { zk_v zkgj "${@}" }
function zkgly() { zk_l zkgy "${@}" }
function zkgay() { zk_a zkgy "${@}" }
function zkgvy() { zk_v zkgy "${@}" }
function zkgln() { zk_l zkgn "${@}" }
function zkgan() { zk_a zkgn "${@}" }
function zkgvn() { zk_v zkgn "${@}" }

# get pods matching label, application or version:
function zkgpl() { zk_l zkgp "${@}" }
function zkgpa() { zk_a zkgp "${@}" }
function zkgpv() { zk_v zkgp "${@}" }
function zkgplj() { zk_l zkgpj "${@}" }
function zkgpaj() { zk_a zkgpj "${@}" }
function zkgpvj() { zk_v zkgpj "${@}" }
function zkgply() { zk_l zkgpy "${@}" }
function zkgpay() { zk_a zkgpy "${@}" }
function zkgpvy() { zk_v zkgpy "${@}" }
function zkgpln() { zk_l zkgpn "${@}" }
function zkgpan() { zk_a zkgpn "${@}" }
function zkgpvn() { zk_v zkgpn "${@}" }

# get all matching label, application or version:
function zkgAl() { zk_l zkgA "${@}" }
function zkgAa() { zk_a zkgA "${@}" }
function zkgAv() { zk_v zkgA "${@}" }
function zkgAlj() { zk_l zkgAj "${@}" }
function zkgAaj() { zk_a zkgAj "${@}" }
function zkgAvj() { zk_v zkgAj "${@}" }
function zkgAly() { zk_l zkgAy "${@}" }
function zkgAay() { zk_a zkgAy "${@}" }
function zkgAvy() { zk_v zkgAy "${@}" }
function zkgAln() { zk_l zkgAn "${@}" }
function zkgAan() { zk_a zkgAn "${@}" }
function zkgAvn() { zk_v zkgAn "${@}" }

# Run command on the first matching pod given a label selector:
function zk1l() {
  command="${1}"
  selector="${2}"
  if shift && shift
  then
    "${command}" "$(zkgpn -l "${selector}" | sed -e 's@pods/@@' | head -n 1)" "${@}"
  else
    echo "usage: ${0} command selector" >&2
    return 1
  fi
}

# Run command on the first matching pod given the application label:
function zk1a() {
  command="${1}"
  application="${2}"
  if shift && shift
  then
    zk1l "${command}" "application=${application}" "${@}"
  else
    echo "usage: ${0} command application" >&2
    return 1
  fi
}

# Run command on the first matching pod given the version label:
function zk1v() {
  command="${1}"
  version="${2}"
  if shift && shift
  then
    zk1l "${command}" "version=${version}" "${@}"
  else
    echo "usage: ${0} command version" >&2
    return 1
  fi
}

# describe selected pod by label, application or version:
function zkdpl() { zk1l zkdp "${@}" }
function zkdpa() { zk1a zkdp "${@}" }
function zkdpv() { zk1v zkdp "${@}" }

# log on selected pod by label, application or version:
function zkll() { zk1l zkl "${@}" }
function zkla() { zk1a zkl "${@}" }
function zklv() { zk1v zkl "${@}" }

# log --follow on selected pod by label, application or version:
function zklfl() { zk1l zklf "${@}" }
function zklfa() { zk1a zklf "${@}" }
function zklfv() { zk1v zklf "${@}" }

# exec on selected pod by label, application or version:
function zkel() { zk1l zke "${@}" }
function zkea() { zk1a zke "${@}" }
function zkev() { zk1v zke "${@}" }

# exec /bin/sh on selected pod by label, application or version:
function zkshl() { zk1l zksh "${@}" }
function zksha() { zk1a zksh "${@}" }
function zkshv() { zk1v zksh "${@}" }

# exec bash on selected pod by label, application or version:
function zkbl() { zk1l zkb "${@}" }
function zkba() { zk1a zkb "${@}" }
function zkbv() { zk1v zkb "${@}" }

# describe on pod for PostgreSQL Operator:
function zkpgopd() { zkdpa 'postgres-operator' "${@}" }
function zkdpgop() { zkpgopd "${@}" }

# describe on pod for PostgreSQL Operator UI:
function zkpguid() { zkdpa 'postgres-operator-ui' "${@}" }
function zkdpgui() { zkpguid "${@}" }

# log and log --follow on pod for PostgreSQL Operator:
function zkpgopl() { zkla 'postgres-operator' "${@}" }
function zkpgoplf() { zklfa 'postgres-operator' "${@}" }

# log and log --follow on pod for PostgreSQL Operator UI:
function zkpguil() { zkla 'postgres-operator-ui' "${@}" }
function zkpguilf() { zklfa 'postgres-operator-ui' "${@}" }

# get PostgreSQL custom resource instance:
function zkgpg() { zkg postgresql "${@}" }
function zkgpgj() { zkgj postgresql "${@}" }
function zkgpgy() { zkgy postgresql "${@}" }
function zkgpgn() { zkgn postgresql "${@}" }

# describe PostgreSQL custom resource instance:
function zkdpg() { zkd postgresql "${@}" }

# delete or edit PostgreSQL custom resource instance:
function zkDpg() { zkD postgresql "${@}" }
function zkEpg() { zkE postgresql "${@}" }

# get all Spilo pods:
function zkspilos() { zkgpa 'spilo' "${@}" }
function zkspilosj() { zkgpaj 'spilo' "${@}" }
function zkspilosy() { zkgpay 'spilo' "${@}" }
function zkspilosn() { zkgpan 'spilo' "${@}" }
function zkss() { zkspilos "${@}" }
function zkssj() { zkspilosj "${@}" }
function zkssy() { zkspilosy "${@}" }
function zkssn() { zkspilosn "${@}" }

# get all Spilo primary pods:
function zkspilosprimary() { zkgpl 'application=spilo,spilo-role=master' "${@}" }
function zkspilosprimaryj() { zkgplj 'application=spilo,spilo-role=master' "${@}" }
function zkspilosprimaryy() { zkgply 'application=spilo,spilo-role=master' "${@}" }
function zkspilosprimaryn() { zkgpln 'application=spilo,spilo-role=master' "${@}" }
function zkssp() { zkspilosprimary "${@}" }
function zksspj() { zkspilosprimaryj "${@}" }
function zksspy() { zkspilosprimaryy "${@}" }
function zksspn() { zkspilosprimaryn "${@}" }

# get all Spilo replica pods:
function zkspilosreplica() { zkgpl 'application=spilo,spilo-role=replica' "${@}" }
function zkspilosreplicaj() { zkgplj 'application=spilo,spilo-role=replica' "${@}" }
function zkspilosreplicay() { zkgply 'application=spilo,spilo-role=replica' "${@}" }
function zkspilosreplican() { zkgpln 'application=spilo,spilo-role=replica' "${@}" }
function zkssr() { zkspilosreplica "${@}" }
function zkssrj() { zkspilosreplicaj "${@}" }
function zkssry() { zkspilosreplicay "${@}" }
function zkssrn() { zkspilosreplican "${@}" }

# get pods for Spilo by PostgreSQL cluster name:
function zkspilo() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpl "application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloj() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgplj "application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloy() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgply "application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspilon() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpln "application=spilo,version=${pg_cluster_name}" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zks() { zkspilo "${@}" }
function zksj() { zkspiloj "${@}" }
function zksy() { zkspiloy "${@}" }
function zksn() { zkspilon "${@}" }

# get pods for Spilo primary by PostgreSQL cluster name (assuming the spilo-role label is correct):
function zkspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpl "application=spilo,version=${pg_cluster_name},spilo-role=master" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloprimaryj() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgplj "application=spilo,version=${pg_cluster_name},spilo-role=master" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloprimaryy() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgply "application=spilo,version=${pg_cluster_name},spilo-role=master" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloprimaryn() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpln "application=spilo,version=${pg_cluster_name},spilo-role=master" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zksp() { zkspiloprimary "${@}" }
function zkspj() { zkspiloprimaryj "${@}" }
function zkspy() { zkspiloprimaryy "${@}" }
function zkspn() { zkspiloprimaryn "${@}" }

# get pods for Spilo replicas by PostgreSQL cluster name:
function zkspiloreplica() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpl "application=spilo,version=${pg_cluster_name},spilo-role=replica" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloreplicaj() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgplj "application=spilo,version=${pg_cluster_name},spilo-role=replica" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloreplicay() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgply "application=spilo,version=${pg_cluster_name},spilo-role=replica" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkspiloreplican() {
  pg_cluster_name="${1}"
  if shift
  then
    zkgpln "application=spilo,version=${pg_cluster_name},spilo-role=replica" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zksr() { zkspiloreplica "${@}" }
function zksrj() { zkspiloreplicaj "${@}" }
function zksry() { zkspiloreplicay "${@}" }
function zksrn() { zkspiloreplican "${@}" }

# log --follow for primary Spilo pod by PostgreSQL cluster name:
function zklfspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zklf "$(zkspn "${pg_cluster_name}" | sed -e 's@^[^/]*/@@')" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zklfsp() { zklfspiloprimary "${@}" }
function zksplf() { zklfsp "${@}" }
function zklfs() { zklfsp "${@}" }
function zkslf() { zksplf "${@}" }

# log for primary Spilo pod by PostgreSQL cluster name:
function zklspiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zkl "$(zkspn "${pg_cluster_name}" | sed -e 's@^[^/]*/@@')" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zklsp() { zklspiloprimary "${@}" }
function zkspl() { zklsp "${@}" }
function zkls() { zklsp "${@}" }
function zksl() { zkspl "${@}" }

# exec on primary Spilo pod by PostgreSQL cluster name:
function zkespiloprimary() {
  pg_cluster_name="${1}"
  if shift
  then
    zke "$(zkspn "${pg_cluster_name}" | sed -e 's@^[^/]*/@@')" "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkesp() { zkespiloprimary "${@}" }
function zkspe() { zkesp "${@}" }

# exec /bin/sh on primary Spilo pod by PostgreSQL cluster name:
function zkspiloprimarysh() {
  zkesp "${@}" -- sh
}
function zkspsh() { zkspiloprimarybash "${@}" }
function zkshsp() { zkspb "${@}" }

# exec Bash on primary Spilo pod by PostgreSQL cluster name:
function zkspiloprimarybash() {
  zkesp "${@}" -- bash
}
function zkspb() { zkspiloprimarybash "${@}" }
function zkbsp() { zkspb "${@}" }

# exec psql on primary Spilo pod by PostgreSQL cluster name:
function zkspiloprimarypsql() {
  zkesp "${@}" -- \
    su 'postgres' -c 'psql'
}
function zkspq() { zkspiloprimarypsql "${@}" }
function zkqsp() { zkspq "${@}" }

# Run a patronictl command on a Spilo pod by PostgreSQL cluster name:
function zkspilopatronictl() {
  pg_cluster_name="${1}"
  patronictl_command="${2}"
  if shift && shift
  then
    zke "$(zksn "${pg_cluster_name}" | head -n 1 | sed -e 's@^[^/]*/@@')" --container='postgres' -- \
      su 'postgres' -c \
        "patronictl ${patronictl_command} ${pg_cluster_name} ${*}"
  else
    echo "usage: ${0} cluster_name patronictl_command" >&2
    return 1
  fi
}
function zksc() { zkspilopatronictl "${@}" }

# Run a patronictl command on a Spilo pod by PostgreSQL cluster name:
function zkspilopatronictllist() {
  pg_cluster_name="${1}"
  if shift
  then
    zksc "${pg_cluster_name}" list "${@}"
  else
    echo "usage: ${0} cluster_name" >&2
    return 1
  fi
}
function zkscl() { zkspilopatronictllist "${@}" }

# diff outputs of the given command given the first vs. the second matched pod
# name as arguments.  e.g. "zk_diff some_command zkgpan bar" diffs the outputs
# of "foo pod_1" and "foo pod_2" where pod_1 and pod_2 are the output lines of
# "zkgpan bar" (which must be a whitespace- or line-separated list of pod names)
function zk_diff() {
  # Note: command gets wordsplit
  command="${1}"
  if shift
  then
    pods=($("${@}"))
    vimdiff <(${command} "${pods[1]}") <(${command} "${pods[2]}")
  else
    echo "usage: ${0} command selector" >&2
    return 1
  fi
}

# diff pod YAML manifests:
function zkgpydiff() {
  zk_diff zkgpy "${@}"
}

# diff pod descriptions:
function zkdpdiff() {
  zk_diff zkd "${@}"
}

# diff pod descriptions given a label selector:
function zkdpdiffl() {
  zkdpdiff zkgpln "${@}"
}

# diff pod descriptions given the application label:
function zkdpdiffa() {
  zkdpdiff zkgpan "${@}"
}

# diff pod descriptions given the version label:
function zkdpdiffv() {
  zkdpdiff zkgpvn "${@}"
}

typeset -A _zalando_cluster_url_cache
function zc() {
  cluster="${1}"
  command="${2}"
  if shift && shift
  then
    if [[ "${+_zalando_cluster_url_cache[${cluster}]}" != 1 ]]
    then
      _zalando_cluster_url_cache+=( "${cluster}" "$(zttp "cluster-registry.stups.zalan.do/kubernetes-clusters?alias=${cluster}" | jq -r '.items[0].api_server_url')" )
    fi
    "${command}" --server="${(i)_zalando_cluster_url_cache[(k)${cluster}]}" "${@}"
  else
    echo "usage: ${0} command application" >&2
    return 1
  fi
}



function zurl() {
  curl -H "Authorization: Bearer $(ztoken)" "${@}"
}
function zcurl() { zurl "${@}" }

function zttp() {
  http -A 'zign' -a 'https:' --default-scheme='https' "${@}"
}
function zhttp() { zttp "${@}" }



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

function glff() {
  gl --ff-only "${@}"
}

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

function zbetaprs() {
  http \
    'https://api.github.com/search/issues?q=beta+repo:zalando-incubator/kubernetes-on-aws+type:pr+is:open+in:title' \
    | jq -r '
      .items[]
      | (
        .updated_at + " " +
        .html_url + " " +
        .title
      )
    '
}

function zia() {
  zttp "cluster-registry.stups.zalan.do/infrastructure-accounts/aws:$1" \
}

function zias() {
  zttp "cluster-registry.stups.zalan.do/infrastructure-accounts?owner=team/$1" \
}



zle -C all-matches complete-word _my_generic
zstyle ':completion:all-matches::::' completer _all_matches
zstyle ':completion:all-matches:*' old-matches only
_my_generic () {
  local ZSH_TRACE_GENERIC_WIDGET=  # works with "setopt nounset"
  _generic "$@"
}
bindkey '^X^a' all-matches


eval $(thefuck --alias)



if [ -z "${ZSH_COWSAY_DONE+1}" ]
then
  export ZSH_COWSAY_DONE=1
  fortune | cowsay -f elephant
fi
