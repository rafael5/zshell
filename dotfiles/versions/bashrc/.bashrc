# -----------------------------------------------------------------------------
# OH-MY-BASH
# -----------------------------------------------------------------------------
# https://github.com/ohmybash/oh-my-bash
# Path to your oh-my-bash installation.
export OSH=~/.oh-my-bash



# ---------------------------------------------------------------------
# THEMES
# ---------------------------------------------------------------------
# https://github.com/ohmybash/oh-my-bash/blob/master/themes/THEMES.md
# random powerline-plain simple bakke agnoster envy purity 
OSH_THEME="clean"


# ---------------------------------------------------------------------
# COMPLETIONS
# ---------------------------------------------------------------------
completions=(
  ssh
)

# ---------------------------------------------------------------------
# ALIASES
# ---------------------------------------------------------------------
aliases=(
  general
  ls
  b4p
  mac-apps
  mac-docker
  mac-conda
  mac-vbox
  mac-brew
)


# ---------------------------------------------------------------------
# PLUGINS
# ---------------------------------------------------------------------
plugins=(
  bashmarks
)

source $OSH/oh-my-bash.sh


# -----------------------------------------------------------------------------
# ALIASES
# -----------------------------------------------------------------------------
alias bash-bashrc='code ~/.bashrc'
alias bash-omybash='code ~/.oh-my-bash'
alias bash-aliases='code ~/.oh-my-bash/aliases'
alias bash-themes='echo "choose theme and then include in bashconfig-bashrc";open https://github.com/ohmybash/oh-my-bash/blob/master/themes/THEMES.md'
alias bash-info='echo "bashconfig -bashrc  -omybash -aliases -themes -env"'
alias bash-env='env | less'



# --------------------------------------------------------------
# PATHS
# --------------------------------------------------------------
# for user-installed software
export PATH=~/.local/bin:$PATH


# ---------------------------------------------------------------------
# VIM
# ---------------------------------------------------------------------
# https://stackoverflow.com/questions/1447334/how-to-add-nerdtree-to-your-vimrc
alias vim-info='echo "vim  vim-tree  vim-config  '
alias vim-tree='vim -c "NERDTree" $1'
alias vim-config='code ~/.vim/; code ~/.vimrc'



# ---------------------------------------------------------------------
# Fuzzy Search
# ---------------------------------------------------------------------
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_OPTS="-m"
FZF_DEFAULT_OPTS+=" --color='light'"
FZF_DEFAULT_OPTS+=" --height 40%"
FZF_DEFAULT_OPTS+=" --bind 'ctrl-u:preview-up,ctrl-d:preview-down,ctrl-o:toggle+up,ctrl-i:toggle+down,ctrl-space:toggle-preview'"
FZF_DEFAULT_OPTS+=" --preview 'head -500 {}'"
FZF_DEFAULT_OPTS+=" --preview-window=:hidden"



# ---------------------------------------------------------------------
# BASHMARKS
# ---------------------------------------------------------------------
# https://github.com/huyng/bashmarks
source ~/.local/bin/bashmarks.sh
alias bashmarks-info='echo " [s]ave [g]oto [d]elete [p]rint-dir <bookmark_name>  [l]ist-all  " '



# ---------------------------------------------------------------------
# TREE
# ---------------------------------------------------------------------
# must intall tree on mac via brew
alias tree-1='tree -L 1'
alias tree-2='tree -L 2'
alias tree-3='tree -L 3'




# ---------------------------------------------------------------------
# GOOGLER
# ---------------------------------------------------------------------
# must install via brew or apt-get
# https://github.com/jarun/googler





# ---------------------------------------------------------------------
# USER CONFIGURATION
# ---------------------------------------------------------------------
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='nano'
# else
#   export EDITOR='nano'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"





# ---------------------------------------------------------------------
# BASH OPTIONS
# ---------------------------------------------------------------------
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder




# ---------------------------------------------------------------------
# STARTUP
# ---------------------------------------------------------------------
# source .profile
# source ~/m.sh



# -----------------------------------------------------------------------------
# BASH SHELL
# -----------------------------------------------------------------------------
# must install on mac via brew on mac for current version (mac has 2007 version)
# https://www.fosslinux.com/42541/bash-script-examples.htm

# OTHER SHELLS: not compatible with POSIX or bash
# https://en.wikipedia.org/wiki/Comparison_of_command_shells
# zsh        https://en.wikipedia.org/wiki/Z_shell
# fish       https://en.wikipedia.org/wiki/Fish_(Unix_shell)
# pwsh       https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-macos?view=powershell-7.1

# #!/usr/bin/env bash  <- 'proper' notation
# #!/bin/bash  <- macos default; 2007 version

# profile -  executed once when login - for all apps - both terminal and nonterminal
# bashrc -   runs only when starting a shell

# Quotes: to be safe, just stick with single quotes when using echo
# Single quote: echo 'literals only' vs double quote echo "literals + variables"

# start latest brew-installed bash
# >bash
