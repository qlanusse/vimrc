set nocompatible              " required for vumdle usage

" Filetype detection off
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Python autocomplete
Plugin 'davidhalter/jedi-vim'
" Use tab for completion
Plugin 'ervandew/supertab'

" NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" HTML-css autocomplete
Plugin 'mattn/emmet-vim'

" Python indentation
Plugin 'Vimjas/vim-python-pep8-indent'

" Haskell indentation
Plugin 'neovimhaskell/haskell-vim'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Nerdtree plugin config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Encoding
set encoding=utf-8

" Mapping
map k gk
map j gj
set clipboard=unnamedplus

" Activate modelines
set modeline

" Tabulation config
set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line
 "" Filetype configs
au FileType yaml,yml,css,haskell,c set ts=2 sts=2 sw=2 expandtab
au FileType htm,html,htmldjango set ts=4 sts=4 sw=4 expandtab

" Status line configuration
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Visual Syntax
syntax on
let python_highlight_all=1
set colorcolumn=79 

" Colors
set bg=dark

" Line numbers
set nu!

" Disable that annoying bell
set belloff=all
