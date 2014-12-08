" VIM configuration file by Peter Hatina <phatina@gmail.com>
"
" Plugins used:
"   - airline
"   - fuzzyfinder
"   - gitgutter
"   - localrc
"   - nerdtree
"   - trailing-whitespace
"
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
    set guifont=Inconsolata-g\ for\ Powerline\ Medium\ 9
    set mousemodel=popup

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
else
    set term=screen-256color
endif

" ------------------------------------------------------------------------------
" makefile
" ------------------------------------------------------------------------------
map  <f9> :!make<cr>
imap <f9> <esc>:!make<cr>

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

" ------------------------------------------------------------------------------
" fuzzy finder
" ------------------------------------------------------------------------------
map  <c-tab> :FufBuffer<cr>
map  <Leader>b :FufBuffer<cr>
map  <Leader>o :FufFile<cr>