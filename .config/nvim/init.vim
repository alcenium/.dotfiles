set exrc
set nowrap
set number
set wildmenu
set nohlsearch
set ignorecase
set relativenumber

" File management system!
set nobackup
set undofile
set noswapfile
set undodir=~/.config/nvim/undodir

set mouse=a
set path+=**
set tabstop=4
set cmdheight=2
set scrolloff=8
set shiftwidth=4
set laststatus=2
set history=1000
set wildmode=full
set wildoptions+=pum
set wildoptions+=tagfile

nnoremap <Space> <Nop>
let mapleader = " "

imap jj <Esc>
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <Leader>s :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>e :E<CR>
nmap <Leader>f :find 
nmap <Leader><Leader> :
nnoremap <Leader>h :previous<CR>
nnoremap <Leader>l :next<CR>
nnoremap <Leader>H :first<CR>
nnoremap <Leader>L :last<CR>
