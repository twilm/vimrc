"| _____                           _                     |
"||_   _|__  _ __ ___  ___  __   _(_)_ __ ___  _ __ ___  |
"|  | |/ _ \| '_ ` _ \/ __| \ \ / / | '_ ` _ \| '__/ __| |
"|  | | (_) | | | | | \__ \  \ V /| | | | | | | | | (__  |
"|  |_|\___/|_| |_| |_|___/   \_/ |_|_| |_| |_|_|  \___| |
"|__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ 

syntax on
:set number
:set relativenumber
:set nocompatible
:set tabstop=4      
nnoremap <space> :
:set background=dark
colorscheme darkblue
"""enables type file detection and allows any related plugins to be started
filetype on
filetype plugin on

"""For showing tabs
"use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4
" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4
" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4
" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4

call plug#begin('~/.vim/plugged')
call plug#begin()
Plug 'https://github.com/WolfgangMehner/git-support'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/vim-syntastic/syntastic'
call plug#end()


"Nerdtree Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"Nerdtree Autostart
"autocmd VimEnter * NERDTree | wincmd p
"TagBarToggle key (F8) 
nmap <F8> :TagbarToggle<CR> 


xmap ga <Plug>(EasyAlign) 
nmap ga <Plug>(EasyAlign)

