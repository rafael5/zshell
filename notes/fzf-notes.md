https://github.com/junegunn/fzf


# install fuzzy find  https://github.com/junegunn/fzf
$ brew install fzf

# install useful key bindings and fuzzy completion; say 'yes' to all options:
$  $(brew --prefix)/opt/fzf/install

#  add to .bashrc:
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# add to .vimrc:
set rtp+=/usr/local/opt/fzf


# USAGE: fuzzy search in iTerm
fzf <enter>   (then arrow keys; see preview on right)
command **<tab>
vim **<tab>



# TO DO: add preview window when doing fuzzy search within (1) iterm and (2) vim
