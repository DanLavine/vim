" enable Pathogen
execute pathogen#infect()

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
Plugin 'rking/ag.vim'

call vundle#end()

" color syntax
set hlsearch
syntax on
filetype plugin indent off

" set tab with to 2 spaces
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number
set nowrap


" store temp files
set dir=/tmp

" nerdtree settings
map <C-n> :NERDTreeToggle<CR> " ctrl-n opens root dir
map <C-m> :NERDTreeFind<CR>   " ctrl-m maps to current file

" ycm defaults for auto complete
let g:ycm_min_num_of_chars_for_completion = 99

" ycm C/C++ settings
let g:ycm_global_ycm_extra_conf = '~/.vim/plugin_defaults/ycm_extra_conf.py'

" map quit for typos
:command WQ wq
:command Wq wq
:command W w
:command Q q

" remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
