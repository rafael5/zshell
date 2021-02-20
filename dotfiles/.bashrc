#!/bin/bash


# -----------------------------------------
# bash login sequence
# -----------------------------------------
# https://www.thegeekstuff.com/2008/10/execution-sequence-for-bash_profile-bashrc-bash_login-profile-and-bash_logout/

#  /etc/profile
#  ~/.bash_profile
#  ~/.bashrc
#  ~/.bash_login
#  ~/.profile



# -----------------------------------------
# oh-my-bash
# -----------------------------------------
# https://github.com/ohmybash/oh-my-bash

# path to oh-my-bash installation.
export OSH=$HOME/zshell/oh-my-bash

# theme:   simple agnoster powerline powerline-plain
OSH_THEME="powerline-plain"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

completions=(
)

aliases=(
)

plugins=(
)

source $OSH/oh-my-bash.sh
# -----------------------------------------



# source profile
source ~/.profile

