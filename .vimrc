" setup environment before loading vundle plugins
set nocompatible
filetype off

call plug#begin('~/.vim/bundle')

" nerdtree
Plug 'preservim/nerdtree', { 'tag': '6.10.16' }
" ctrlp
Plug 'ctrlpvim/ctrlp.vim', { 'tag': '1.81'}
" visualize git diff
Plug 'airblade/vim-gitgutter', { 'tag': '0597380f6b22f43a3ea6ff8364d5c239bb2504ea'}
" YouCompleteMe
" Plug 'ycm-core/YouCompleteMe', { 'tag': 'f35a30d4e22783050944c89b666e481d016cd4e1' }
" solarized
Plug 'altercation/vim-colors-solarized', { 'tag': '528a59f26d12278698bb946f8fb82a63711eec21' }
" vim cpp enhancments
Plug 'octol/vim-cpp-enhanced-highlight', { 'tag': '27e0ffc215b81fa5aa87eca396acd4421d36c060' }
" golang
Plug 'fatih/vim-go', { 'tag': 'v1.26' }

call plug#end()

syntax on
filetype plugin indent on

" set tab with to 2 spaces
set autoindent
set cindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" set folding
"set foldmethod=syntax
"set foldlevelstart=20 " make sure all folds are open when opening a file

" set numbers
set number

" do not wrap lines
set nowrap

" set search highlight
set hlsearch

" store temp files
set dir=/tmp

" set file names
set laststatus=2

" nerdtree settings
map <C-n> :NERDTreeToggle<CR> " ctrl-n opens root dir
map <C-\> :NERDTreeFind<CR>   " ctrl-\ maps to current file
let NERDTreeShowHidden=1

" remap auto complete (golang)
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
"au filetype go inoremap <C-space> <C-x><C-o>
au filetype go inoremap <C-@> <C-x><C-o>

"" ycm defaults for auto complete
""" turn on tag completion
"let g:ycm_collect_identifiers_from_tags_files=1
""" complete syntax keywords
"let g:ycm_seed_identifiers_with_syntax=1
""" don't cache completion items
"let g:ycm_cache_omnifunc = 0
""" don't try to autocomplete when typing initial variables
"let g:ycm_min_num_of_chars_for_completion = 1
""" turn of auto command id fuzzy completion
"let g:ycm_min_num_identifier_candidate_chars = 100
""" load ycm conf by default
"let g:ycm_confirm_extra_conf=0

" ycm C/C++ settings
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugin_defaults/ycm_extra_conf.py'

" remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" C++ colors
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

" solarized colors
colorscheme solarized

" map quit for typos
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Go settings
let g:go_fmt_command = "goimports"
let g:go_fmt_experimental = 1
