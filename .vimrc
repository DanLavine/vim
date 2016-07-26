" color syntax
syntax on

" set tab with to 2 spaces and line number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number

" store temp files
set dir=/tmp

" enable Pathogen
execute pathogen#infect()

" set nerdtree to ctrl-n
map <C-n> :NERDTreeToggle<CR>
