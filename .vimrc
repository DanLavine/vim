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

call vundle#end()

" color syntax
syntax on
filetype plugin indent on

" set tab with to 2 spaces and line number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number

" store temp files
set dir=/tmp

" nerdtree settings
map <C-n> :NERDTreeToggle<CR> " ctrl-n opens root dir
map <C-m> :NERDTreeFind<CR>   " ctrl-m maps to current file
