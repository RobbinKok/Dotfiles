filetype off

set backspace=indent,eol,start
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
filetype plugin indent on
set nowrap

" tabs and spaces
set softtabstop=4
set tabstop=4
set expandtab
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

" leader key mapping
let mapleader = "\<Space>"

" Filetype specific commands
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <F3> :w<CR>:exec '!node' shellescape(@%,1)<CR>
autocmd FileType javascript imap <buffer> <F3> <esc>:w<CR>:exec '!node' shellescape(@%,1)<CR>

" Nerdtree toggle
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

"Backspace binding
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>


"clipboard
set clipboard=unnamedplus

hi NonText ctermbg=none 
hi Normal guibg=NONE ctermbg=NONE
