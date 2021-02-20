#!/bin/bash

# aliases beware!  The order of them is critical, since aliases build on aliases.
# https://stackoverflow.com/questions/22465332/setting-path-environment-variable-in-osx-permanently



#  ---------------------------------------------------------------------------
#   Bash shortcuts
#
#   bash-
#   unix-
#   help:           man manwin tldr navi
#   find:           fd fzf qfind googler lynx
#   directory:      ranger nnn tree cd 
#   list files:     ls
#   print:          cat bat
#   processes:      btm htop ps- top- 
#   disk use:       du df ncdu
#   open files:     lsof
#   paths:          path
#   node:           nvm npm yarn
#   fun:            cmatrix spark bastet task
#  ---------------------------------------------------------------------------
alias m='clear; sh ~/zshell/scripts/bash-shortcuts.sh'

alias printline='printf %"$COLUMNS"s | tr " " "-"'


alias bash-webguide='echo "UNIX/BASH WEB GUIDE"; open https://www.tutorialspoint.com/unix/unix-getting-started.htm'
alias bash-info='echo "SHELL: " $SHELL; echo "BASH_VERSION: "; echo $BASH_VERSION'

alias bash-bashrc="code ~/.bashrc"
alias bash-profile="code ~/.profile"
alias bash-ohmybash='code $OSH; open https://github.com/ohmybash/oh-my-bash/blob/master/themes/THEMES.md'
alias bash-reload='source ~/.bashrc'


# alias sys-info='echo "paths- ports- utils- maint- | info"'
# alias network-info='echo "curl ipinfo.io/ipaddress";open http://ipinfo.io/;open http://www.speedtest.net'


# https://en.wikipedia.org/wiki/List_of_Unix_commands
# https://www.tutorialspoint.com/unix/unix-useful-commands.htm
# https://www.tutorialspoint.com/unix/unix-getting-started.htm

# https://www.educative.io/blog/bash-shell-command-cheat-sheet
# https://www.thegeekstuff.com/2010/11/50-linux-commands/
# https://www.ubuntupit.com/best-linux-commands-to-run-in-the-terminal/
# https://www.hostinger.com/tutorials/linux-commands

# https://bash.cyberciti.biz/guide/Menu_driven_scripts
# https://www.kingcomputerservices.com/unix_101/shell_programming_and_simple_menus_part_1.htm
# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_06.html





#------------------------------------------------------------------------------
# LIST FILES  (ls -> lsd)
#------------------------------------------------------------------------------
# info:    LS replaced with LSD (ls deluxe)
# req:     install LSD (mac: brew install; linux: dpkg install)

# replace ls with lsd
alias ls='lsd'        

# shorten ls to l; add -F modifier
alias l='ls -F'          # Full (/=directory; @=symlink; *=executable)

# derivatives
alias ll='l -l'          # main long
alias l.='l -d .*'       # dot
alias ll.='l -l -d .*'   # dot long
alias la='l -a '         # all
alias lla='l -al '       # all long

# clear screen prior:
alias cl='c;l '
alias cl.='c; l.'
alias cll='c; ll'
alias cll.='c; ll.'
alias cla='c; la'
alias cll='c; ll'

# non-hidden files in current directory
alias num-files='echo "number of files in pwd: "; echo $(ll | wc -l)'       
alias num-dotfiles='echo "number of dotfiles in pwd: "; echo $(ll. | wc -l)'


# ls [-ABCFGHLOPRSTUW@abcdefghiklmnopqrstuwx1]
# F = FULL: dir/  executable*   symlink@  socket=  whiteout%  FIFO|
# a = all entries
# A = all entries except . and ..
# l = long format
# G = colorized (unnecessary with LSD)
# S = sort by size
# t = sort by time






#------------------------------------------------------------------------------
# CHANGE DIRECTORY  (cd)
#------------------------------------------------------------------------------
alias c='clear'
alias home='cd ~ ; pwd'
alias ..='cd ..;clear;pwd;ls'
alias ...='cd ..;cd ..;clear;pwd;ls'
alias ....='cd ..;cd ..;cd ..;clear;pwd;ls'



#------------------------------------------------------------------------------
# TREE (tree)
#------------------------------------------------------------------------------
alias tree1='tree -L 1'
alias tree2='tree -L 2'
alias tree3='tree -L 3'
#directories only
alias tree1d='tree -L 1 -d'
alias tree2d='tree -L 2 -d'
alias tree3d='tree -L 3 -d'


#------------------------------------------------------------------------------
# DISK USAGE (du; df)
#------------------------------------------------------------------------------
alias du-cmd='echo "df  df-depth1  du-short"'
alias df='echo "disk space free - human readable"; df -h'
alias du-depth1='echo "disk usage - depth 1 - human readable"; du -d 1 -h'
alias du-short='echo "disk usage - short - human readable"; du -sh *'




#------------------------------------------------------------------------------
# LIST OPEN FILES (lsof)
#------------------------------------------------------------------------------
# An open file may be a:
# 1. file
# 2. block
# 3. character
# 4. directory
# 5. text reference
# 6. library
# 7. network socket or stream:  UDP, TCP, IP, UNIX

alias lsof='lsof -i -P -n | sort'
alias lsof-TCP='lsof -i | grep LISTEN | grep "TCP \*:" | sort'
alias lsof-OPEN='lsof -i | grep ESTABLISHED | sort'
alias lsof-LISTEN='lsof -i -P | grep LISTEN | sort'
alias lsof-UDP='lsof -nP | grep UDP'  # display open UDP sockets
alias lsof-TCP='lsof -nP | grep TCP'  # display open TCP sockets
alias lsof-TCPIP='lsof -i'            # all open TCP/IP sockets

# Internet socket: IPv4, IPv6; NFS file; or UNIX domain socket.
# REG CHR DIR  IPv4 IPv6 unix PIPE systm 


#  NETWORKING - <UNTESTED>
#  ---------------------------------------------------------------------------
alias netCons='lsof -i'                                   # Show all open TCP/IP sockets
alias lsock='sudo /usr/sbin/lsof -i -P'                   # Display open sockets
alias lsock-UDP='sudo /usr/sbin/lsof -nP | grep UDP'      # Display only open UDP sockets
alias lsock-TCP='sudo /usr/sbin/lsof -nP | grep TCP'      # Display only open TCP sockets
alias ipInfo-en0='ifconfig getpacket en0'                 # Get info on connections for en0
alias ipInfo-en1='ifconfig getpacket en1'                 # Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'              # All listening connections
alias showBlocked='sudo ipfw list'                        # All ipfw rules inc/ blocked IPs





#------------------------------------------------------------------------------
# PROCESS STATUS (ps; top; htop)
#------------------------------------------------------------------------------
alias ps-mem-hogs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias ps-cpu-hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

alias top='top -o cpu'                              # order by cpu
alias top-mem-hogs='top -l 1 -o rsize | head -20'   # find memory hogs
alias top-10sec='top -l 9999999 -s 10 -o cpu'       # top update q10 seconds
alias top-min='top -R -F -s 10 -o rsize'            # minimizes top resource use
 


#------------------------------------------------------------------------------
# PATH
#------------------------------------------------------------------------------
alias path='echo -e ${PATH//:/\\n}'               # echo all executable Paths



#------------------------------------------------------------------------------
# FIND
# ---------------------------------------------------------------------------
alias qfind="find . -name "                 # quickly search for file




#------------------------------------------------------------------------------
# FUZZY FIND
#------------------------------------------------------------------------------
# requires:         fzf   (mac: brew install)





#------------------------------------------------------------------------------
# OPTIONS:                                  preferred options for of UNIX commands
#------------------------------------------------------------------------------
alias show_options='shopt'                  # display bash options settings
alias fix_stty='stty sane'                  # Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # Make tab-completion case-insensitive

# file management
alias rm='rm -i'
alias mv='mv -i'                            # require confirmation
alias cp='cp -i'
alias ln='ln -i'
alias cp='cp -iv'                           
alias mv='mv -iv'                           
alias mkdir='mkdir -pv'                     

# permissions
alias chown='chown --preserve-root'         #parenting changing perms on
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmod+x='sudo chmod +x'


alias less='less -FSRXc'                    
alias nano='nano -W'                        
alias wget='wget -c'                        # resume download by default
alias grep='grep --color=auto'              # colorize grep command




#------------------------------------------------------------------------------
# WORD COUNT (wc)
#------------------------------------------------------------------------------
alias wc-hidden='echo $(ls -1 | wc -l)'    # count of non-hidden files in current dir
alias wc-chars='wc -c'                     # count chars in file
alias wc-words='wc -w'                     # count words in file
alias wc-lines='wc -l'                     # count lines in file





