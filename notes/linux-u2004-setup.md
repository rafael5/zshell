#!/bin/bash

# locale
export LANGUAGE=en\_US.UTF-8
export LANG=en\_US.UTF-8
export LC\_ALL=en\_US.UTF-8
sudo locale-gen en\_US.UTF-8
sudo dpkg-reconfigure locales


# system-optional:
# system update (-y yes to all; -qq double quiet)
sudo apt-get update -y && sudo apt-get upgrade -y


# system-required:
# sudo apt-get install -y build-essential linux-headers-`uname -r`
sudo apt-get install dkms build-essential linux-headers-generic gcc make


# apps: required
sudo apt-get install -y \
    net-tools \
    openssh-server \
    libssl-dev \
    curl \
    wget \
    tree \
    nano \
    vim \
    git \
    fzf \
    ack \
    htop \
    lynx


# snap: install
sudo snap install lsd


# vbox: verify requirements are installed
sudo dpkg -l | grep -E "dkms|linux-headers-$(uname -r)|build-essential"




# VIRTUALBOX GUEST ADDITIONS
# -----------------------------------------
# 1. dpkg from multiverse repository
# sudo add-apt-repository multiverse
# sudo apt install virtualbox-guest-dkms

# 2.  iso file from ubuntu repo
# sudo apt-cache policy virtualbox-guest-additions-iso
# sudo apt install virtualbox-guest-additions-iso
# sudo mkdir /media/cdrom
# sudo mount -t iso9660 /dev/cdrom /media/cdrom
# sudo mount -o loop /usr/share/virtualbox/VBoxGuestAdditions.iso /media/cdrom/
# sudo /media/cdrom/VBoxLinuxAdditions.run

# 3. guest util only
# sudo apt-get install virtualbox-guest-util

sudo reboot


# confirm version of vbox guest additions
sudo ls /opt/
lsmod | grep -i vbox
modinfo vboxguest
lsmod | grep -io vboxguest | xargs modinfo | grep -iw version



# VIRTUALBOX SHARED FOLDERS
# -----------------------------------------
# https://gist.github.com/estorgio/0c76e29c0439e683caca694f338d4003
# https://medium.com/@diegocasmo/virtualbox-shared-folders-ssh-from-osx-host-to-ubuntu-server-guest-tutorial-ef2db1722033

# MAC HOST
# 1. terminal: create folder to share with guest;  no dashes in name; only underscore
mkdir ~/vbox_shared
chmod 777 vbox_shared
# 2. virtualbox GUI: add this folder to shared folders


# LINUX GUEST
#  add user to vbox shared folder (vboxsf) group
sudo adduser $USER vboxsf 
# Grant folder access permission to non-root users.
sudo usermod -aG vboxsf $USER

# verify groups of $USER contains 'vboxsf'
groups

# change folder group ownership
sudo chgrp vboxsf /media/sf_vbox_shared

# verify permissions on the directory:
ls -ld /media/sf_vbox_shared

# symlink from mount point to home directory
sudo ln -s /media/sf_vbox_shared/  ~/vbox_shared



# In a Linux guest, use the following command:
# mount -t vboxsf [-o OPTIONS] sharename mountpoint
sudo mount -t vboxsf vbox_shared  /media/sf_vbox_shared/


# vbox: mount shared folder to ~/shared directory
# sudo mount -t vboxsf shared ~/shared


# virtualbox: install guest additions
# sudo /media/cdrom/./VBoxLinuxAdditions.run




# ----------------------------------------------------------



# shell
sudo apt-get install -y zsh
curl -L http://install.ohmyz.sh | sh


# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# source $HOME/.bashrc
# Set THEME=powerline-plain in /root/.bashrc




# bashrc -------------------------------------------------



# profile ------------------------------------------------





# aliases --------------------------------------------------
alias c='clear;pwd'
# replace ls -> lsd
alias l='lsd -F'
alias la='l -A'
alias ll='l -l'
alias ..='cd ..;clear;pwd;ls -FG'


## Shared folders with host - Set persmissions
https://forums.virtualbox.org/viewtopic.php?f=6&t=79294
sudo usermod -a -G vboxsf <your_username>

https://askubuntu.com/questions/890729/this-location-could-not-be-displayed-you-do-not-have-the-permissions-necessary
sudo adduser $USER vboxsf



# rust ---------------------------------------------------------
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# add to .bashrc
source $HOME/.cargo/env
# update
rustup update
# lsd: build from rust source
# cargo install lsd


