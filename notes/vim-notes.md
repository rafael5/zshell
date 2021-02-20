" --------------------------------------------------------------
" Reference: 
" VIM-PLUG:         https://github.com/junegunn/vim-plug 
" NERDTree
" NERD Commenter:   https://github.com/preservim/nerdcommenter
" seoul256:         https://github.com/junegunn/seoul256.vim
" lightline:        https://github.com/itchyny/lightline.vim
" Fuzzy Finder:     https://github.com/junegunn/fzf
" --------------------------------------------------------------



# -----------------------------------------------------------------------------
" vim setup based on:
"  https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c


" PLUGINS -------------------------
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()


" FONTS  -------------------------
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" FUZZY SEARCH --------------------
set rtp+=/usr/local/opt/fzf


" NERDTree on startup ------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
# -----------------------------------------------------------------------------



# VIM
https://www.vim.org/


# VIM
## getting started
https://opensource.com/article/19/3/getting-started-vim
https://opensource.com/downloads/cheat-sheet-vim

## vim plugins
https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
https://www.ubuntupit.com/best-vim-plugins-for-programming/
https://opensource.com/article/19/11/vim-plugins


## vim and python
https://www.vimfromscratch.com/articles/vim-for-python/
https://realpython.com/vim-and-python-a-match-made-in-heaven/
https://www.fullstackpython.com/vim.html


## vim-plugin manager
https://github.com/junegunn/vim-plug/wiki/tutorial


# Configure iTerm2 and Vim
https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c


# References
* https://github.com/preservim/nerdtree
* https://github.com/junegunn/fzf.vim
* https://github.com/itchyny/lightline.vim
* https://github.com/junegunn/vim-plug
* https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
* https://realpython.com/vim-and-python-a-match-made-in-heaven/
* https://www.vim.org/scripts/script.php?script_id=1218
* https://github.com/itchyny/lightline.vim
* https://github.com/junegunn
* https://github.com/junegunn/vim-plug
* https://medium.com/usevim/nerd-tree-guide-bb22c803dcd2
* https://vimawesome.com/?q=cat%3Acode-display




# -----------------------------------------------------------------------------
" vim setup based on:
"  https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c


# install vim
$ brew install vim
# install Vim Plug(in) framework
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# edit .vimrc
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

# start vim
$ vim

# install plugins
:PlugInstall


# install vim fonts
$ git clone https://github.com/powerline/fonts.git --depth=1
$ cd fonts
$ ./install.sh
$ cd ..
$ rm -rf fonts
# edit .vimrc and add font reference
let g:airline_powerline_fonts = 1


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




nerd-tree
nerd-commenter
matchit
tag list
lightline
solarized
auto pairs
ack
fzf
ale (async lint engine)







" -----------------------------------------------------------
" VIM-PLUG
" -----------------------------------------------------------
" define path for plugins
    call plug#begin('~/.vim/plugged')

" declare plugins
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'junegunn/seoul256.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

" initialize
call plug#end()

" --------------------------------------------------------------
" Reference: 
" VIM-PLUG:         https://github.com/junegunn/vim-plug 
" NERDTree
" NERD Commenter:   https://github.com/preservim/nerdcommenter
" seoul256:         https://github.com/junegunn/seoul256.vim
" lightline:        https://github.com/itchyny/lightline.vim
" Fuzzy Finder:     https://github.com/junegunn/fzf
" --------------------------------------------------------------