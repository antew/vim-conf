set nocompatible               " be iMproved
filetype off                   " required!
set directory=~/.vim/tmp
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
" vim-scripts repos
Bundle 'kien/ctrlp'
Bundle 'pangloss/vim-javascript'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-scripts/mru.vim'
Bundle 'vim-matchit'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/move'
Bundle 'tpope/vim-repeat'
" non github repos
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


syntax enable
set background=dark
colorscheme solarized
set smartindent
set softtabstop=0
set shiftwidth=2
set tabstop=4
set expandtab
set smarttab

let mapleader=","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP C:\Projects\'
let g:ctrlp_clear_cache_on_exit = 0 

" F5 launches current file in browser
nnoremap <silent> <F5> :update<Bar>silent !start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<CR>

" Set default font to Consolas
set guifont=Consolas:h9:cANSI


" Toggle relative line numbering on/off
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set nonumber
        set relativenumber
    endif
endfunc

" Map Ctrl+Left and Ctrl+R to move between tabs
" map Alt+Left and Alt+Right to move tabs.
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


:vmap ,x :%!tidy -q -i --show-errors 0<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
