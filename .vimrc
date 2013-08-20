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
