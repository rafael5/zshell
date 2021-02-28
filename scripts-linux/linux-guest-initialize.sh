#!/bin/bash

# guest OS

# update / upgrade - double-quiet mode
echo "------------------------------------------------------------------------------"
echo "SYSTEM UPDATE AND UPGRADE"
echo "------------------------------------------------------------------------------"
#vsudo apt-get install -qq -y update && apt-get install -qq upgrade 
sudo apt-get -qq update
sudo apt-get -qq upgrade 
echo "DONE"


# install apps double-quiet mode
echo "------------------------------------------------------------------------------"
echo " APT-GET INSTALL"
echo "apt-utils curl wget fzf ack tree googler htop neovim lynx nano figlet"
echo "------------------------------------------------------------------------------"
sudo apt-get install -qq -y apt-utils zsh curl wget fzf ack tree googler htop neovim lynx nano figlet
echo "DONE"


# rust
echo "------------------------------------------------------------------------------"
echo " RUST and CARGO"
echo "------------------------------------------------------------------------------"
#remove old rust
sudo apt-get remove cargo rustc rustup
# install rust via rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source cargo path
source $HOME/.cargo/env
# update rust
rustup update
echo "DONE"



# LS deluxe - rust cargo installer
echo "------------------------------------------------------------------------------"
echo "LSD CARGO"
echo "------------------------------------------------------------------------------"
cargo install lsd  
echo "DONE"




# aliases
echo "------------------------------------------------------------------------------"
echo "ALIASES"
echo "------------------------------------------------------------------------------"

alias c='clear;pwd'

# replace ls -> lsd
alias l='lsd -F'
alias la='pwd;l -a'		
alias ll='pwd;l -l'	
alias ..='cd ..;clear;pwd;ls -FG'

alias ydb-run='yottadb -run'




# oh-my-bash
# echo "----------------------------------------------------------------------"
# echo "OH-MY-BASH"
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
# source $HOME/.bashrc
# alias bash-bashrc='nano /root/.bashrc'
# echo "DONE"
# echo "NOTE: set OSH_THEME=powerline-plain in /root/.bashrc "



#oh-my-zsh
#echo "------------------------------------------------------------------------------"
#echo " OH-MY-ZSH"
#echo "------------------------------------------------------------------------------"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#return 1;
#echo "NOTE: set THEME=powerline-plain in /root/.zshrc "
#echo "DONE"

