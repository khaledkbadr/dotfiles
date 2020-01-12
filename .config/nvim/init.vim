" =============================================================================
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
Plug 'caksoylar/vim-mysticaltutor'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'plasticboy/vim-markdown'

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
" =============================================================================
" # Settings
" =============================================================================
:set number
