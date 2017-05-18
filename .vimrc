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

call vundle#end()

syntax on
filetype plugin indent off

" set tab with to 2 spaces
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

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
map <C-m> :NERDTreeFind<CR>   " ctrl-m maps to current file

" ycm defaults for auto complete
let g:ycm_min_num_of_chars_for_completion = 99

" ycm C/C++ settings
let g:ycm_global_ycm_extra_conf = '~/.vim/plugin_defaults/ycm_extra_conf.py'

" remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" color syntax
"syntax on
"filetype plugin indent on

" C++ colors
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


" solarized colors
syntax enable
colorscheme solarized

" map quit for typos
:command WQ wq
:command Wq wq
:command W w
:command Q q
