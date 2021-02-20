# #!/usr/bin/env bash  <- 'proper' notation
# #!/bin/bash  <- macos 2007 default

# profile -  executed once when login - for all apps - both terminal and nonterminal
# bashrc -   runs only when starting a shell

# Quotes: to be safe, just stick with single quotes when using echo
# Single quote: echo 'literals only' vs double quote echo "literals + variables"

# man | whatis  'commandName'
# 'command' --help
# history|awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -r



## BASH SHELL ALIASES
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html





# FUNS STUFF ON COMMAND LINE
#-------------------------------------------------------------------------------------
# http://www.tecmint.com/20-funny-commands-of-linux-or-linux-is-fun-in-terminal/
# http://lifehacker.com/302197/useful-command-line-tricks-for-mac-users
# http://lifehacker.com/399468/top-10-command-line-tools
# http://lifehacker.com/eight-terminal-utilities-every-os-x-command-line-user-s-1593793109
# http://www.maketecheasier.com/10-funny-and-useless-linux-command/
# http://unix.stackexchange.com/questions/48059/how-to-clean-up-unnecessary-files

# fortune
# fortune | say


clear
echo '                          _________                           '
echo '                              |                               '
echo '     \________________________|________________________/      '
echo '                             (.)                              '
echo '                              "                               '
echo '---------------------------------------------------------------'
echo 'SYS:       path ssh calc'
echo 'MAINT      all: periodic permisssions apps status'
echo 'INFO       ports ipinfo'
echo 'DEV        npm | conda | brew services list/start/stop'
echo '-----------------------------------------------------------------'
echo 'bash version:' $BASH_VERSION





# PATHS
#-------------------------------------------------------------------------------------
# Ensure user-installed binaries are declared (take precedence) before system or dev paths  
# /usr/bin:/bin:/sbin:/usr/sbin
# PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin
# export PATH="/Users/rafael:$PATH"                        # RMR personal bash scripts
# export PATH="/usr/local/sbin:$PATH"                      # brew-installed apps
# export PATH="/usr/local/var:$PATH"		             # source-installed apps (src)
# export PATH="/usr/local/bin:$PATH"		             # binary-installed apps (dmg; Node)

# https://www.cyberciti.biz/faq/appleosx-bash-unix-change-set-path-environment-variable/



# DEV ENVIRONMENT PATHS
# export PATH="/usr/local/bin/npm:$PATH"                        # node
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`              # JAVA
# export GOPATH=$HOME/go                                        # GO
# export PATH=$PATH:$GOPATH/bin                                 # GO
# export PATH="/Users/rafael/mongodb-enterprise-4.4/bin:$PATH"  # Mongodb
# export PATH="/usr/local/mysql/bin:$PATH"                      # mysql installer
# export PATH="$HOME/anaconda3/bin:$PATH"                       # anaconda
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"



# MYSQL + APACHE + PHP:  Correct installation  <== DO NOT USE BREW!!
# https://www.dyclassroom.com/howto-mac/how-to-install-apache-mysql-php-on-macos-catalina-10-15
# https://coolestguidesontheplanet.com/fastest-way-to-install-wordpress-on-osx-10-6/
# https://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-macos-sierra/






# NODE 
#-------------------------------------------------------------------------------------
# DO NOT INSTALL VIA BREW; Brew messes with NPM package management !!!
# To fix messed up installation:  https://gist.github.com/DanHerbert/9520689

# Install from https://nodejs.org/en/
# Node.js was installed at:    /usr/local/bin/node
# npm was installed at:       /usr/local/bin/npm
# Make sure that /usr/local/bin is in your $PATH.

# NPM install path problems because two node binaries are on the system
# https://github.com/npm/npm/issues/14372
# https://stackoverflow.com/questions/14803978/npm-global-path-prefix
#   npm config set scripts-prepend-node-path true
#   npm config get prefix

# alias node-dir='cd /Users/rafael/node/npm_modules-link@;ll;echo "changing to node module directory"'
# alias node-info='echo "node-dir" '


# Node:  React Native
# https://facebook.github.io/react-native/docs/getting-started.html#content

# /usr/local/bin/gulp -> /usr/local/lib/node_modules/gulp/bin/gulp.js





# JULIA and JUNO  (Atom editor)
# https://docs.julialang.org/en/v1/
# https://towardsdatascience.com/julias-package-manager-is-awesome-23b9c02e3a0b
# http://docs.junolab.org/latest/
# http://weavejl.mpastell.com/stable/
# https://atom.io/
# http://ucidatascienceinitiative.github.io/IntroToJulia/





# MySQL: 
#-------------------------------------------------------------------------------------
# Do NOT install with brew;  It is IMPOSSIBLE to configure socket connection; 
# USE native installer
# https://dev.mysql.com/doc/mysql-osx-excerpt/8.0/en/osx-installation-pkg.html




# GO
#-------------------------------------------------------------------------------------
# https://github.com/abourget/getting-started-with-golang/blob/master/Getting_Started_for_MAC_OS_X.md
# http://www.golangbootcamp.com/book/get_setup
# http://www.golangbootcamp.com/book/_single-page




# FUNCTIONS
#-------------------------------------------------------------------------------------
# http://murphymac.com/tree-command-for-mac/




# Useful commands
#-------------------------------------------------------------------------------------# http://ss64.com/osx/
# http://www.infoworld.com/d/applications/top-20-os-x-command-line-secrets-power-users-202466?page=0,3
# http://www.howtogeek.com/forum/topic/mac-terminalcmd-commands
#
# locate        find file
# lsof -i ls    open file: reveal open TCP and UDP ports and apps using them
# open          launch apps or directory/path
# opendiff      compare and merge files and directories
# pgrep pkill   find or signal a program or process by name
# qlmanage -p   quick look / preview of file
# shutdown       restart mac
# systemsetup   system configs/preferences
# textutil -info MyWordFile display file info
# textutil -convert html MyWorldFile -output /tmp/webfile.html    convert file to html
# top
# uptme   time since last reboot










#=============  VA DATA PROJECTS - RETIRED 2018 ====


# VICS - Veteran Integrated Care Services [VAGRANT VERSION]
#-------------------------------------------------------------------------------------
alias vics='clear; sh ~/vics.sh'

# Server Status
alias vics-reload='cd ~/vagrant/VICSServer/setup; vagrant reload'
alias vics-halt='cd ~/vagrant/VICSServer/setup; vagrant halt'
alias vics-status='cd ~/vagrant/VICSServer/setup; vagrant status'

# Server Access:  IP 10.2.2.222
# web ssh: Install on guest VM: sudo apt-get install shellinabox ==> Requires port 4200 to be opened
alias vics-webssh='echo "VICSServer ssh user/pass: vdp/vdp"; open https://10.2.2.222:4200/'
alias vics-ssh='echo "VICSServer ssh user/pass: vdp/vdp"; vagrant ssh'
# or:  ssh vdp@10.2.2.222'

# Web Clients
alias vics-model='open http://10.2.2.222:9000/schema'
alias vics-query='open http://10.2.2.222:9000/query'
alias vics-router='open http://10.2.2.222:9012'

# CPRS Client (wine)
#user/pass:  fakedoc1 / 1doc!@#$ -> fakedoc1#
alias cprs-client='cd ~/.wine/drive_c/Program\ Files/CPRS_1_0_31_116; wine CPRSChart.exe'




# nodeVISTA  - [DOCKER VERSION]
#-------------------------------------------------------------------------------------
alias nv='clear; sh ~/nv.sh'

# Server Status
alias nv-reload='docker restart nodevista999'
alias nv-status='docker ps'

# Server Access
# Direct terminal:
alias nv-ssh='echo "Entering nodeVISTA VM command line; type 'exit' to finish"; docker exec -it nodevista999 bash'
# Web terminal: Requires installation in guest VM:  sudo apt-get install shellinabox
# alias nv-ssh-web='echo "nodeVISTA ssh user/pass: vdp/vdp"; open https://10.2.2.100:4200/'


# VISTA Data Model
# VDM Browser (old name: Fileman Schema Browser)
alias vdm-browser='open http://localhost:9100/schema'
# VDM Query (old name: FMQL Query)
alias vdm-query='open http://localhost:9100/query'


# CPRS Client
# Win Emulation: Install Wine
# https://www.davidbaumgold.com/tutorials/wine-mac/
alias cprs-client='cd /Users/rafael/.wine/drive_c/Program Files/cprs30/CPRS; wine CPRSChart.exe'
# Win VM: Install Win10 in Virtualbox from ISO and label "Win10-CPRS"
# https://www.microsoft.com/en-us/software-download/windows10ISO
# alias cprs-vm='VBoxManage startvm "Win10-CPRS"'
# For both Windows methods, follow CPRS installation instructions
# http://vistadataproject.info/demo/#cprs--rpc-server-installation
# alias win10-vm='VBoxManage startvm "Win10"'



# Cliical Services
# alias nv-cs-demo=' echo "Starting MVDM Clinical Services demo"; br; cd ~/git/rafael5/vdp/nodeVISTAClients/console; node console.js '
# alias nv-cs-status='cd ~/git/rafael5/vdp/nodeVISTAClients/console; curl http://localhost:9030'
# echo "    <==    If the response is no authentication token, the service is working correctly and ON; 
# If there is no respoinse, or failure to connect, the clinical service is OFF."
