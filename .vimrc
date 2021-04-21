set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin indent on

call plug#begin()
Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'pineapplegiant/spaceduck'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'sharkdp/bat'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'sheerun/vim-polyglot'
call plug#end()

    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

   colorscheme spaceduck
    let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ }
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

" tabs and spaces
set softtabstop=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent
set copyindent
set shiftwidth=4

set incsearch
set hlsearch
set ignorecase
set smartcase

set linebreak

set confirm
set nohlsearch
set scrolloff=8
"show status line
set laststatus=2

"leader key ampping
let mapleader = "\<Space>"

" filetype specific commands
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <F3> :w<CR>:exec '!node' shellescape(@%,1)<CR>
autocmd FileType javascript imap <buffer> <F3> <esc>:w<CR>:exec '!node' shellescape(@%,1)<CR>

" Berdtree toggle
map <F2> :NERDTreeToggle<CR>

" Windows switching
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Telescope binding
map <C-f> <cmd>Telescope find_files<cr>
nnoremap <S-f> <cmd> Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Ultisnips triggers
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"clipboard
set clipboard=unnamedplus

hi NonText ctermbg=none 
hi Normal guibg=NONE ctermbg=NONE
