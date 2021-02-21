
# SHELLS: loading order/precedence
# 1. system (non-login)      .bashrc
# 2. user (login)           [.bash_profile -> .bash_login -> .profile]
# => must brew install bash to have latest correct version

# PATHS: loading order/precedence
# 1. user:                 /usr/local/bin/: /user/local/sbin
# 2. system:               /usr/bin: /bin/bash
# => set path order below


# HELP: UNIX
# -h or -help           # help
# tldr                  # simple help from tldr-pages project
# man | manwin | info   # manual pages in terminal | window | info format
# whatis     KEYWORD    # man -f
# apropros   KEYWORD    # man -k
# navi                  # command autocompletion helper

# UNIX REFERENCE
# https://www.tutorialspoint.com/unix/unix-getting-started.htm
# https://en.wikipedia.org/wiki/Unix
# https://en.wikipedia.org/wiki/List_of_Unix_commands
# https://en.wikipedia.org/wiki/List_of_Unix_daemons
# https://en.wikipedia.org/wiki/Single_UNIX_Specification
# https://en.wikipedia.org/wiki/Comparison_of_operating_systems
# https://en.wikipedia.org/wiki/Comparison_of_Linux_distributions

# FUNS STUFF ON COMMAND LINE
# http://www.tecmint.com/20-funny-commands-of-linux-or-linux-is-fun-in-terminal/
# http://lifehacker.com/302197/useful-command-line-tricks-for-mac-users
# http://lifehacker.com/399468/top-10-command-line-tools
# http://lifehacker.com/eight-terminal-utilities-every-os-x-command-line-user-s-1593793109
# http://www.maketecheasier.com/10-funny-and-useless-linux-command/
# http://unix.stackexchange.com/questions/48059/how-to-clean-up-unnecessary-files



#-------------------------------------------------------------------------------------
# PATH: BREW:  Set in /etc/paths
#-------------------------------------------------------------------------------------
# https://www.cyberciti.biz/faq/appleosx-bash-unix-change-set-path-environment-variable/
# https://superuser.com/questions/324616/how-should-i-set-the-path-variable-on-my-mac-so-the-hombrew-installed-tools-are
# Ensure user-installed binaries are declared (take precedence) before system or dev paths:
# sudo code /etc/paths   <= edit system paths
#       /usr/local/bin   <= homebrew path is before (takes precedence over) system path
#       /usr/bin
#       /bin
#       /usr/sbin
#       /sbin

# brew installed new directories:
# /usr/local/bin/brew
# /usr/local/share/doc/homebrew
# /usr/local/share/man/man1/brew.1
# /usr/local/share/zsh/site-functions/_brew
# /usr/local/etc/bash_completion.d/brew
# /usr/local/Homebrew

# add homebrew system variables
export BREW_BIN=/usr/local/bin 
export BREW_SBIN=/usr/local/sbin 
export BREW_CASK=/usr/local/Caskroom
export BREW_CELLAR=/usr/local/Cellar
export BREW_FRAMEWORKS=/usr/local/Frameworks

# Add homebrew apps to PATH
#export PATH="$BREW_BIN:$PATH"    
#export PATH="$BREW_SBIN:$PATH"   





#-------------------------------------------------------------------------------------
# PATHS: OTHER
#-------------------------------------------------------------------------------------
# export PATH="/Users/rafael:$PATH"                    # RMR personal bash scripts
# export PATH="/usr/local/sbin:$PATH"                  # brew-installed apps
# export PATH="/usr/local/var:$PATH"		           # source-installed apps (src)
# export PATH="/usr/local/bin:$PATH"		           # binary-installed apps (dmg; Node)

# DEV ENVIRONMENT PATHS
# export PATH="/usr/local/bin/npm:$PATH"                        # node
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`              # JAVA
# export GOPATH=$HOME/go                                        # GO
# export PATH=$PATH:$GOPATH/bin                                 # GO
# export PATH="/Users/rafael/mongodb-enterprise-4.4/bin:$PATH"  # Mongodb
# export PATH="/usr/local/mysql/bin:$PATH"                      # mysql installer
# export PATH="$HOME/anaconda3/bin:$PATH"                       # anaconda
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"









# -----------------------------------------------------------------------------
# ALIASES
# -----------------------------------------------------------------------------
# aliases beware!  The order of them is critical, since aliases build on aliases.
# https://stackoverflow.com/questions/22465332/setting-path-environment-variable-in-osx-permanently

# BASH SHELL ALIASES
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html


# create aliases directory variable and add to PATH
export ALIASES=$HOME/zshell/aliases
export PATH="$ALIASES:$PATH"    

# edit aliases
alias aliases-edit='code $ALIASES'

# source aliases
source aliases-macsys.sh
source aliases-bash.sh
source aliases-brew.sh
source aliases-conda.sh
source aliases-docker.sh
source aliases-web.sh



# -----------------------------------------------------------------------------
# python/conda:  initialization
# -----------------------------------------------------------------------------

# Python 3: Conda python
source "$HOME/.conda/conda-initialize"


# Python2:  Apple default python:
alias python2='python2.7'



# -----------------------------------------------------------------------------
#  pipenv:  python virtual environment
# -----------------------------------------------------------------------------
# https://github.com/streamlit/streamlit/wiki/Installing-in-a-virtual-environment#install-pipenv
# > sudo easy_install pip           <== MacOS is missing pip, so must install
# > pip3 install pipenv

# create pipenv:
# > pipenv --python 3.9             ==>  . /Users/rafael/.local/share/virtualenvs/
# > pipenv install <package-name>
# > pipenv shell                    ==> use new environment
# > pipenv -rm                      <== removes pipenv

alias pipenv-webdocs='open https://realpython.com/pipenv-guide'




# --------------------------------------------------
# nvm/mode:  initialization
# --------------------------------------------------
# https://jamesauble.medium.com/install-nvm-on-mac-with-brew-adb921fb92cc
# https://github.com/nvm-sh/nvm#verify-installation

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

alias nvm-help-docs='open https://jamesauble.medium.com/install-nvm-on-mac-with-brew-adb921fb92cc'
alias nvm-usage='open https://github.com/nvm-sh/nvm#usage'
alias nvm-node-versions='echo "nvm ls-remote"'





# --------------------------------------------------
# rust:  initialization
# --------------------------------------------------
source "$HOME/.cargo/env"





# -----------------------------------------
# FZF sourced and defaults
# -----------------------------------------
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# FZF default on startup
# export FZF_DEFAULT_COMMAND='fd --type f'




# -----------------------------------------
# open MAN pages in new terminal window
# -----------------------------------------
# https://robservatory.com/open-unix-man-pages-in-their-own-terminal-window/
function manwin {
    if [ $# -eq 1 ] ;
        then open x-man-page://$1 ;
    elif [ $# -eq 2 ] ;
        then open x-man-page://$1/$2 ;
    fi
}




# -----------------------------------------------------------------------------
# startup
# -----------------------------------------------------------------------------
# cowsay "hello"
# figlet "$BASH_VERSION"

#echo '                          _________                           '
#echo '                              |                               '
#echo '     \________________________|________________________/      '
#echo '                             (.)                              '
#echo '                              "                               '
#echo '---------------------------------------------------------------'

clear
echo '          BASH' $BASH_VERSION; 
macdisk-trim-status
macdisk-smart-status
cal 




