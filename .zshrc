# Path to your oh-my-zsh configuration.
ZSH="${HOME}/.oh-my-zsh"
DEFAULT_USER='manuel'
DISABLE_AUTO_TITLE='false'
COMPLETION_WAITING_DOTS='true'
DISABLE_UNTRACKED_FILES_DIRTY='true' # This makes Git faster but it can’t notice untracked files well.
HIST_STAMPS='yyyy-mm-dd'

plugins=(
  cabal
  catimg
  colored-man
  colorize
  common-aliases
  compleat
  dircycle
  git
  git-extras
  nyan
  perl
  pep8
  pip
  pyenv
  pylint
  python
  rails
  rvm
  screen
  sprunge
  tmux
  urltools
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
unsetopt BASH_AUTO_LIST
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
  setopt HIST_REDUCE_BLANKS
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
  setopt CORRECT_ALL
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



# History searching with PageUp/Down

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[PageUp]}"   ]] && bindkey "${key[PageUp]}"   up-line-or-beginning-search
[[ -n "${key[PageDown]}" ]] && bindkey "${key[PageDown]}" down-line-or-beginning-search



# TODO: manpath

# User executable and library paths
bin_new_paths=(); function bin_add_path() { [[ -d $1 ]] && bin_new_paths+=($1); }
lib_new_paths=(); function lib_add_path() { [[ -d $1 ]] && lib_new_paths+=($1); }
inc_new_paths=(); function inc_add_path() { [[ -d $1 ]] && inc_new_paths+=($1); }

# Executable paths
bin_add_path "${HOME}/bin"
bin_add_path "${HOME}/stuff/commands"
bin_add_path "${HOME}/.cabal/bin"
bin_add_path "${HOME}/.opt/github/hub/bin"
bin_add_path "${HOME}/.opt/haskell_platform/2013.2.0.0/bin"
bin_add_path "${HOME}/.opt/ghc/7.6.3/bin"
#bin_add_path "${HOME}/.opt/postgresql/9.2.4/bin"
#bin_add_path "${HOME}/.opt/vim/7.3/bin"
#bin_add_path "${HOME}/.opt/gcc/bin"
#bin_add_path "${HOME}/perl5/perlbrew/bin"

# Library paths
#lib_add_path "${HOME}/.opt/postgresql/9.2.4/lib"
#lib_add_path "${HOME}/.opt/gcc/lib"
#lib_add_path "${HOME}/.opt/gcc/lib64"

# Include paths — shouldn’t this be handled by pkg-config?
#inc_add_path "${HOME}/.opt/postgresql/9.2.4/include"

export            PATH="$(IFS=':'; printf '%s' "${bin_new_paths[*]}"):${PATH}"
export LD_LIBRARY_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):${LD_LIBRARY_PATH}"
export     LD_RUN_PATH="$(IFS=':'; printf '%s' "${lib_new_paths[*]}"):${LD_RUN_PATH}"
export  C_INCLUDE_PATH="$(IFS=':'; printf '%s' "${inc_new_paths[*]}"):${C_INCLUDE_PATH}"

#export LD_LIBRARY_PATH="$(ghc-pkg list --simple-output --global | sed -e 's@ @:@g' -e "s@[^:]\+@$HOME/.cabal/lib/i386-linux-ghc-7.7.20130420/&@g"):$(ghc-pkg list --simple-output --global | sed -e 's@ @:@g' -e 's@[^:]\+@/var/local/manuel/haskell/ghc/HEAD/lib/ghc-7.7.20130420/&@g')"



# Environment

[[ ${TERM} == xterm ]] && export TERM='xterm-256color'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export PAGER='less -S' # TODO: use vim as the pager
export EDITOR='vim'
export BC_LINE_LENGTH=0
#export MPD_HOST='@localhost'
#export PGDATA="${HOME}/.opt/postgresql/9.2.4/data"



function prxmonitor() {
  for i in {1..7}
  do
    gkrellm -s '127.0.0.1' -P "$((19150 + i))" &
  done
}

function prxssh() {
  ssh \
    -L 19151:127.0.0.1:19150 \
    -L 19152:127.0.0.1:19152 \
    -L 19153:127.0.0.1:19153 \
    -L 19154:127.0.0.1:19154 \
    -L 19155:127.0.0.1:19155 \
    -L 19156:127.0.0.1:19156 \
    -L 19157:127.0.0.1:19157 \
    pcaaudit.com
}

function v1p() {
  vim -E \
    -c 1p               \
    -c 'echo input("")' \
    -c q                \
    "${@}"
}

function defensa() {
  impressive             \
    --duration 30:00     \
    --minutes            \
    --nologo             \
    --noclicks           \
    --page-progress      \
    -T 0                 \
    --zoom 4             \
    --cache persistent   \
    "${@}"
}
