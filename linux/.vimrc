
" -----------------------------------------------------------
" VIM-PLUG: download directory 
" ---------------------------------------------------------
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" --------------------------------------------------------------
" VIM-PLUG: declarations
" --------------------------------------------------------------
" NERDTree
Plug 'preservim/nerdtree'

" lightline 
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'


" Plug 'tpope/vim-sensible'


" seoul256: low-contrast vim color scheme
" https://github.com/junegunn/seoul256.vim
Plug 'junegunn/seoul256.vim'


" Fuzzy Finder
" https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" NERD Commenter 
" https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'


" --------------------------------------------------------------
" VIM-PLUG: ACIVATION
" --------------------------------------------------------------
call plug#end()

