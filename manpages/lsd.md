NAME

    lsd - An ls command with a lot of pretty colors and some other stuff.

USAGE:
    lsd [FLAGS] [OPTIONS] [--] [FILE]...

FLAGS:
    -a, --all               Do not ignore entries starting with .
    -A, --almost-all        Do not list implied . and ..
        --classic           Enable classic mode (no colors or icons)
    -L, --dereference       When showing file information for a symbolic link, show information for the file the link references rather
                            than for the link itself
    -d, --directory-only    Display directories themselves, and not their contents (recursively when used with --tree)
    -X, --extensionsort     Sort by file extension
        --help              Prints help information
    -h, --human-readable    For ls compatibility purposes ONLY, currently set by default
        --ignore-config     Ignore the configuration file
    -F, --classify          Append indicator (one of */=>@|) at the end of the file names
    -i, --inode             Display the index number of each file
    -l, --long              Display extended file metadata as a table
        --no-symlink        Do not display symlink target
    -1, --oneline           Display one entry per line
    -R, --recursive         Recurse into directories
    -r, --reverse           Reverse the order of the sort
    -S, --sizesort          Sort by size
    -t, --timesort          Sort by time modified
        --total-size        Display the total size of directories
        --tree              Recurse into directories and present the result as a tree
    -V, --version           Prints version information
    -v, --versionsort       Natural sort of (version) numbers within text

OPTIONS:
        --blocks <blocks>...            Specify the blocks that will be displayed and in what order [possible values: permission, user,
                                        group, size, date, name, inode]
        --color <color>...              When to use terminal colours [default: auto]  [possible values: always, auto, never]
        --date <date>...                How to display date [possible values: date, relative, +date-time-format] [default: date]
        --depth <num>...                Stop recursing into directories after reaching specified depth
        --group-dirs <group-dirs>...    Sort the directories then the files [default: none]  [possible values: none, first, last]
        --icon <icon>...                When to print the icons [default: auto]  [possible values: always, auto, never]
        --icon-theme <icon-theme>...    Whether to use fancy or unicode icons [default: fancy]  [possible values: fancy, unicode]
    -I, --ignore-glob <pattern>...      Do not display files/directories with names matching the glob pattern(s). More than one can be
                                        specified by repeating the argument [default: ]
        --size <size>...                How to display size [default: default]  [possible values: default, short, bytes]
        --sort <WORD>...                sort by WORD instead of name [possible values: size, time, version, extension]