
# If LSD command exists, alias ls to lsd
type lsd >/dev/null 2>&1 && echo "lsd exists; aliasing ls->lsd" && alias ls=lsd


# alternative: not work
 if command -v lsd &> /dev/null
 then
     echo "LSD was found; LS will be aliased to LSD"
      alias ls='lsd'
      type ls  && type lsd
      exit
fi


# POSIX command lookup example
CMDS="tar ls lsd  /path/to/other/command"
for i in $CMDS
do
    # command -v will return >0 when the $i is not found
    command -v $i >/dev/null && continue || { echo "$i command not found."; }
done
 

# function: check path to commands
pathto () {
        DIRLIST=`echo $PATH|tr : ' '`
        for e in "$@"; do
                for d in $DIRLIST; do
                        test -f "$d/$e" -a -x "$d/$e" && echo "$d/$e"
                done
        done
}
