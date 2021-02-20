
# Unix commands
https://www.tutorialspoint.com/unix/unix-getting-started.htm


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





https://wiredpen.com/resources/basic-unix-commands-for-osx/
    cd — change directory
    cp — copy files
    ls — see a list of files and folders in your current (working) directory
    mv — move and rename files
    pwd — see your current (working) directory [print working directory]
    rm — remove (delete) a file
    rmdir — remove (delete) a directory


https://maker.pro/linux/projects/basic-unix-commands-to-work-on-mac-terminal

directory
    pwd
    ls
    cd
    mkdir | rmdir
files
    rm
    chmod
    diff
    more
    mv
misc
    date
    echo
    help
    history
    nano
    sudo
    ping
    hostname


https://learntocodewith.me/command-line/unix-command-cheat-sheet/

pwd
mkdir rmdir
ls
find
cd
hostname
less
cp
mv
pushd  popd
grep
xargs
cat
env
export
echo
chown
chmod
apropros
exit
sudo



    Command + up arrow: jumps to your previous mark
    Command + down arrow: jumps to your next mark
    Command + page up: moves up a page
    Command + page down: moves down a page
    Option + Command + Page Up: moves up a line
    Option + Command + Page Down: moves down a line





https://www.hostinger.com/tutorials/linux-commands
https://cameronnokes.com/blog/the-most-useful-bash-commands-for-front-end-development/
https://linuxhint.com/100_essential_linux_commands/

cat
cal
df
help
pwd
ls
uname
ping
mkdir
whatis
who
free
top
echo
finger
groups
head
man
passwd
w
whoami
history
lscpu
mv
ps
kill
tail
env
hostname
lshw
nano
rm
ifconfig
clear
su
wget
last
locate
iostat
pstree
sudo
shutdown
reboot
cd
sort
exit
diff
netstat
lsof
touch
wc
sleep
split
stat

useradd | del | mod



pwd
ls
cat
cd
rm
mkdir
rmdir
touch
mv
cp
rm
chmod
man
locate
find
grep
sudo
df
du
head
tail
diff
tar
chmod
chown
jobs
kill
ping
wget
uname
top
history
man
echo
hostname
useraddd, userdel

alias

lsof
kill

cat
less
open
mkdir
rm
touch
echo
find
grep
alias
history
lsof
kill
man
chmod


signals
https://linoxide.com/linux-how-to/linux-signals-part-1/
