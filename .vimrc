" setup environment before loading vundle plugins
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   " let vundle manage itself
Plugin 'scrooloose/nerdtree'    " nerdtree
Plugin 'ctrlpvim/ctrlp.vim.git' " ctrlp
Plugin 'airblade/vim-gitgutter' " visualize git diff
Plugin 'Valloric/YouCompleteMe' " YouCompleteMe
Plugin 'rking/ag.vim'           " ag
Plugin 'altercation/vim-colors-solarized' " solarized
Plugin 'octol/vim-cpp-enhanced-highlight' " vim cpp enhancments
Plugin 'fatih/vim-go'           " golang

call vundle#end()

syntax on
filetype plugin indent on

" set tab with to 2 spaces
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" set folding
set foldmethod=syntax
set foldlevelstart=20 " make sure all folds are open when opening a file

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

" ycm defaults for auto complete
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
"" don't cache completion items
let g:ycm_cache_omnifunc = 0
"" don't try to autocomplete when typing initial variables
let g:ycm_min_num_of_chars_for_completion = 1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0

" ycm C/C++ settings
let g:ycm_global_ycm_extra_conf = '~/.vim/plugin_defaults/ycm_extra_conf.py'

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
