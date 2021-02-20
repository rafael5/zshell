" vim setup based on:
"  https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c
"  https://www.ianbashford.net/post/vimandpython/



" VIM-PLUG -------------------------
call plug#begin('~/.vim/plugged')

    " nerdtree
    Plug 'scrooloose/nerdtree'

    " fuzzy search
    Plug 'junegunn/fzf'

    " move around text
    Plug 'easymotion/vim-easymotion'

    " code folding
    Plug 'tmhedberg/SimpylFold'

    " auto indentation
    Plug 'vim-scripts/indentpython.vim'

    " syntax check on save
    Plug 'scrooloose/syntastic'

    " airline theme    
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " python mode
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()


" FONTS  -------------------------
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" FZF: SET RUNTIME PATH  --------------
set rtp+=/usr/local/opt/fzf


" NERDTree on startup ------------------
" autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" split terminal  =>  how?  link to documentation
set splitbelow
set splitright

" python specific ==> how?  link to documentation
highlight BadWhitespace ctermbg=red guibg=red


" sounds good to me...
set encoding=utf-8
let python_highlight_all=1
syntax on


