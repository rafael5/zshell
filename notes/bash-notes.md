
# FUNS STUFF ON COMMAND LINE
# http://www.tecmint.com/20-funny-commands-of-linux-or-linux-is-fun-in-terminal/
# http://lifehacker.com/302197/useful-command-line-tricks-for-mac-users
# http://lifehacker.com/399468/top-10-command-line-tools
# http://lifehacker.com/eight-terminal-utilities-every-os-x-command-line-user-s-1593793109
# http://www.maketecheasier.com/10-funny-and-useless-linux-command/
# http://unix.stackexchange.com/questions/48059/how-to-clean-up-unnecessary-files
# https://en.wikipedia.org/wiki/FIGlet
# https://github.com/Szymongib/bookmark



# bash -----------------------
# need to install latest version (not mac default)
$ brew install bash


# Oh-My-Bash ---------------
# https://github.com/ohmybash/oh-my-bash
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"



# LSD --------------
# replace LS with graphical icons (based on Nerd font)
# https://github.com/Peltoche/lsd
$ brew install lsd



# FZF ----------------
# install fuzzy find  https://github.com/junegunn/fzf
$ brew install fzf
# install useful key bindings and fuzzy completion; say 'yes' to all options:
$  $(brew --prefix)/opt/fzf/install
# the following should be added to .bashrc:
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# add preview window when doing fuzzy search within (1) iterm and (2) vim
===>  TO DO
# fuzzy search in iTerm
fzf <enter>   (then arrow keys; see preview on right)
command **<tab>
vim **<tab>
# add fuzzy search to vim.  add to .vimrc:
set rtp+=/usr/local/opt/fzf



# MULTI-LINE TEXT MESSAGE --------------
msg1="
-----------------------------\n
this is line one\n
this is line two\n
this is line three\n
-----------------------------
"

echo -e $msg1





