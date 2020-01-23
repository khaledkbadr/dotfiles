" # PLUGINS
" =============================================================================
"
" Load vim-plug
call plug#begin()

" VIM enhancements
Plug 'editorconfig/editorconfig-vim'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
" Themes
Plug 'caksoylar/vim-mysticaltutor'
" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'

" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'plasticboy/vim-markdown'
" for open policy agent
Plug 'tsandall/vim-rego'
call plug#end()


 " =============================================================================
" # Colors
" =============================================================================
colorscheme mysticaltutor
" Mapping
" Ctrl-Space for completions. Heck Yeah!
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
        \ "\<lt>C-n>" :
        \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
        \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
        \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Start and end of the remapping
noremap H ^
noremap L $
vnoremap L g_
" map Enter and Shift+Enter to insert new lines without going to insert mod
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" =============================================================================
" # Settings
" =============================================================================
:set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up. 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" File Find {{{

set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set hidden
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
nnoremap <c-p> :FZF<cr>
" }}}

set grepprg=rg\ --vimgrep\ $*
" =============================================================================
" # Golang Settings
" =============================================================================
let g:go_fmt_command = "goimports"
