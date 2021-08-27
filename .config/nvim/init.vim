set nocompatible
call plug#begin()
Plug 'dart-lang/dart-vim-plugin'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'beeender/Comrade'
if has('nvim')
  Plug 'Shougo/deoplete.nvim'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()


    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc

let g:doeplete#enable_at_startup = 1
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


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set clipboard=unnamedplus
