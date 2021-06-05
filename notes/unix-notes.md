
# UNIX REFERENCE
# https://www.tutorialspoint.com/unix/unix-getting-started.htm
# https://en.wikipedia.org/wiki/Unix
# https://en.wikipedia.org/wiki/List_of_Unix_commands
# https://en.wikipedia.org/wiki/List_of_Unix_daemons
# https://en.wikipedia.org/wiki/Single_UNIX_Specification
# https://en.wikipedia.org/wiki/Comparison_of_operating_systems
# https://en.wikipedia.org/wiki/Comparison_of_Linux_distributions



# POSIX: PORTABLE OPERATING SYSTEM INTERFACE
# ---------------------------------------------------------
# https://en.wikipedia.org/wiki/POSIX
* POSIX-Certified
  * AIX
  * HP-UX
  * macOS
  * Solaris
* POSIX-compliant (mostly)
    * Android
    * BeOS
    * Darwin (core of macOS and iOS)
    * FreeBSD
    * Linux
    * OpenSolaris
  

# FILE TYPES (POSIX)
# ---------------------------------------------------------
# https://en.wikipedia.org/wiki/Unix_file_types
* [-]   regular
* [d]   directory
* [l]   symbolic link
* [p]   FIFO (named pipe)
* [b]   block (device file)
* [c]   character (device file)
* [s]   socket



# TEXT PROCESSING
# ---------------------------------------------------------
https://www.baeldung.com/linux/grep-sed-awk-differences
* grep
* awk
* sed


# SYMLINKS
# ---------------------------------------------------------
https://linuxize.com/post/how-to-remove-symbolic-links-in-linux/
* link     <file or directory/ >
* unlink   <symlink name>    

# usage:
# 1. do not append trailing slash "/" on directory names
# 2. never use rm -r to remove symlinks.  It will remove contents of source directory!



# HISTORY
# ---------------------------------------------------------
# https://unix.stackexchange.com/questions/104257/how-can-i-recall-a-numbered-history-command-for-edit

* history
* !nnn              # recall and execute history # nnn


