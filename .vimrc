" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'phatina/emacsmodeline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'sickill/vim-monokai'
Plug 'vim-scripts/FuzzyFinder'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/The-NERD-tree'
Plug 'thinca/vim-localrc'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/L9'
Plug 'Valloric/YouCompleteMe'
Plug 'flazz/vim-colorschemes'
Plug 'aklt/plantuml-syntax'

call plug#end()

" ------------------------------------------------------------------------------
" Editor settings
" ------------------------------------------------------------------------------
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set number
set ic
set incsearch
set nowrap
set hidden
set ttimeoutlen=10
set colorcolumn=80
set undofile
set modeline
set hlsearch

" ----------
" Mouse mode
" ----------
if has("mouse")
    set mouse=a
endif

" ---------------------------
" Programming languages setup
" ---------------------------
au BufRead,BufNewFile *.lmi set filetype=python
autocmd Syntax python setlocal foldmethod=indent
autocmd Syntax python normal zR
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType c,cpp normal zR
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

" --------------
" Color settings
" --------------
colorscheme kolor
set cursorline

" --------------------
" GUI/Non-GUI settings
" --------------------
if has("gui_running")
    set lines=65 columns=120
    set guioptions-=T
    set guioptions-=r
    set guifont=Inconsolata-g\ for\ Powerline\ Medium\ 10
    set mousemodel=popup
    set guicursor=n-v-c-i:block-Cursor
    set guicursor+=n-v-c-i:blinkon0

    " -------------
    " windows setup
    " -------------
    map <a-right> <c-w><right>
    map <a-left>  <c-w><left>
    map <a-up>    <c-w><up>
    map <a-down>  <c-w><down>

    " ----------------
    " copy, cut, paste
    " ----------------
    map  <c-s> :w<CR>
    imap <c-s> <c-o><c-s>
    map  <c-c> "+y
    imap <c-c> <c-o>"+y
    map  <c-v> "+gP
    imap <c-v> <c-r><c-o>+
    cmap <c-v> <c-r>+
    map  <c-x> "+x
    imap <c-x> <c-r>+
    cmap <c-x> <c-r>+
    map  <s-Insert> "+gP
    cmap <s-Insert> <c-r>+
    imap <c-a> <c-o>ggVG
    map  <c-a> ggVG
    imap <c-bs> <c-w>
    imap <c-del> <c-o>dw
    map  <c-z> u
    imap <c-z> <c-o>u
endif

" ------------------------------------------------------------------------------
" airline
" ------------------------------------------------------------------------------
set laststatus=2
set ttimeoutlen=20
set noshowmode " hide --INSERT-- etc.
let g:airline_powerline_fonts=1

" ------------------------------------------------------------------------------
" nerdtree
" ------------------------------------------------------------------------------
noremap  <f12> :NERDTreeToggle<cr>
inoremap <f12> <c-o>:NERDTreeToggle<cr>
let g:NERDTreeWinSize=50

" ------------------------------------------------------------------------------
" fuzzy finder
" ------------------------------------------------------------------------------
map  <c-tab> :FufBuffer<cr>
map  <Leader>b :FufBuffer<cr>
map  <Leader>o :FufFile<cr>

" ------------------------------------------------------------------------------
" gitgutter
" ------------------------------------------------------------------------------
:map ]r :GitGutterRevertHunk<cr>

" ------------------------------------------------------------------------------
" YouCompleteMe
" ------------------------------------------------------------------------------
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_insertion = 1

" ------------------------------------------------------------------------------
" Custom commands
" ------------------------------------------------------------------------------
command Gnu set sw=2 ts=2 sts=2 et
command StatusReport e ~/Documents/status-report.txt
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Q qa
