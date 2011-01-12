set nocompatible
silent! call pathogen#runtime_append_all_bundles()

colorscheme twilight
set guifont=Monaco:h16

set nowrap
set showcmd
set showmode
set number
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2
set wildignore=*.swp,*.scssc,*.sassc
set guioptions=acgimrLt
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

syntax enable
filetype on
filetype plugin on
filetype indent on

"ruby syntax highlighting for watchr scripts
au BufRead,BufNewFile *.watchr set filetype=ruby

let mapleader = ','

map <silent> ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
