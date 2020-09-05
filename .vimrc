set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

call plug#begin()
Plug 'dart-lang/dart-vim-plugin'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
call plug#end()



set backspace=indent,eol,start

set number
syntax on
set autoindent
set showmatch

set showmode
set showcmd

set ruler
set laststatus=2
set noerrorbells
set visualbell
set title

set noswapfile
set nobackup
set nowb

set autoindent
filetype plugin indent on
set expandtab
set nowrap

set softtabstop=4

set incsearch
set hlsearch
set ignorecase
set smartcase

set linebreak

set confirm

"show status line
set laststatus=2


let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set clipboard=unnamedplus