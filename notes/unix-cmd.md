
# Unix commands
https://www.tutorialspoint.com/unix/unix-getting-started.htm
https://wiredpen.com/resources/basic-unix-commands-for-osx/
https://maker.pro/linux/projects/basic-unix-commands-to-work-on-mac-terminal
https://learntocodewith.me/command-line/unix-command-cheat-sheet/
https://www.hostinger.com/tutorials/linux-commands
https://cameronnokes.com/blog/the-most-useful-bash-commands-for-front-end-development/
https://linuxhint.com/100_essential_linux_commands/

# signals
https://linoxide.com/linux-how-to/linux-signals-part-1/



file types:     [-]reg  [b]lock [c]har [d]ir [l]ink [p]ipe [s]ocket
file ops:       ls cp mv rm vi cat wc diff more less cat head tail
search:         find fzf
dir ops:        pwd cd mkdir rmdir
permissions:    chown chmod
help:           tldr man apropros help 
edit:           code nano vim
users:          who whois whoami whatis users groups finger passwd uname
system:         hostname login logout shutdown reboot
network:        ping ifconfig netstat lsof
environment:    env
pipes           grep awk
processes:      top htop ps pstree kill
bash:           history


other: 
pushd  popd xargs export cal df  free lscpu lshw locate iostat diff touch wc sleep
split stat touch locate df du diff tar jobs uname open touch
useradd | del | mod


getting started
    login logout
    cal
    passwd
    whoami
    users
    reboot shutdown halt

file types
    -       regular
    b       block
    c       character
    d       directory
    l       symbolic link
    p       pipe
    s       socket

file operations
    ?  *                metacharacters
    . (dotfile)         hidden files
    vi                  create and edit files
    cat                 display file
    wc                  count words in file
    cp                  copy file
    mv                  move / rename
    rm                  remove / delete
    ls                  list files
    diff
    more
 

directory management
    cd                  change directory
    pwd                 present working directory
    ls                  list directories
    mkdir               make directory
    rmdir               remove directory
    mv                  move / rename directory
    .dir                hidden directory


file permission / access modes
    owner | group | other(world)
    rwx   : read-write-execute

    chown           change owner
    chgrp           change group


environment
    set:  upppercase    (TEST = "Unix Programming" )
    read: $ prefix:     (echo $TEST)

    shell env initialization sequence:
    /etc/profile       sysadmin manages
    .profile           user manages

    examples:
    PATH = /bin:/usr/bin    path entries separated by colon (:) 
    PS1="[\u@\h \w]\$"      promary prompt
    PS2 = '>'               secondary prompt

    DISPLAY         identifier for X11 display
    HOME            user home directory
    IFS             internal field separator
    LANG            system locale
    LD_LIBRARY_PATH dynamic linker library path
    PATH            search path for commands: colon separated
    PWD             present working directory as set by cd command
    RANDOM          random number 0 - 32,767
    SHLVL           shell level; increments each time shell started
    TERM            display type
    TZ              time zone
    UID             user ID of current user; initialized at shell startup


pipes and filters
    grep         g/re/p: Globally search for Regular Expression and Print all lines containing
    grep pattern file(s)

    example:
    ls -l | grep "Aug" | sort -
    sort the files in directory modified in "Aug" by order size

    ==> MORE EXAMPLES


    Command + up arrow: jumps to your previous mark
    Command + down arrow: jumps to your next mark
    Command + page up: moves up a page
    Command + page down: moves down a page
    Option + Command + Page Up: moves up a line
    Option + Command + Page Down: moves down a line



