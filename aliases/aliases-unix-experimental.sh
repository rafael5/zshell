#!/usr/bin/env bash








#   1.  FILE AND FOLDER MANAGEMENT
#  ---------------------------------------------------------------------------
alias numFiles='echo $(ls -1 | wc -l)'       # Count of non-hidden files in current dir
alias make1mb='truncate -s 1m ./1MB.dat'     # Creates a file of 1mb size (all zeros)
alias make5mb='truncate -s 5m ./5MB.dat'     # Creates a file of 5mb size (all zeros)
alias make10mb='truncate -s 10m ./10MB.dat'  # Creates a file of 10mb size (all zeros)







#   2.  SEARCHING
#  ---------------------------------------------------------------------------
alias qfind="find . -name "                 # qfind:    Quickly search for file





w


#   3.  PROCESS MANAGEMENT
#  ---------------------------------------------------------------------------

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"






#   4.  NETWORKING
#  ---------------------------------------------------------------------------

alias netCons='lsof -i'                                   # Show all open TCP/IP sockets
alias lsock='sudo /usr/sbin/lsof -i -P'                   # Display open sockets
alias lsock-UDP='sudo /usr/sbin/lsof -nP | grep UDP'      # Display only open UDP sockets
alias lsock-TCP='sudo /usr/sbin/lsof -nP | grep TCP'      # Display only open TCP sockets
alias ipInfo-en0='ifconfig getpacket en0'                 # Get info on connections for en0
alias ipInfo-en1='ifconfig getpacket en1'                 # Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'              # All listening connections
alias showBlocked='sudo ipfw list'                        # All ipfw rules inc/ blocked IPs



#   5.  SYSTEMS OPERATIONS & INFORMATION
#  ---------------------------------------------------------------------------

alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user



#   6.  DATE & TIME MANAGEMENT
#  ---------------------------------------------------------------------------

alias bdate="date '+%a, %b %d %Y %T %Z'"
alias cal3='cal -3'
alias da='date "+%Y-%m-%d %A    %T %Z"'
alias daysleft='echo "There are $(($(date +%j -d"Dec 31, $(date +%Y)")-$(date +%j))) left in year $(date +%Y)."'
alias epochtime='date +%s'
alias mytime='date +%H:%M:%S'
alias secconvert='date -d@1234567890'
alias stamp='date "+%Y%m%d%a%H%M"'
alias timestamp='date "+%Y%m%dT%H%M%S"'
alias today='date +"%A, %B %-d, %Y"'
alias weeknum='date +%V'




#   8.  WEB DEVELOPMENT
#  ---------------------------------------------------------------------------

alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:       Shows apache error logs


