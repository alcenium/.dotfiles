" Normal settings
set exrc
set nowrap
set number
set wildmenu
set nohlsearch
set ignorecase
set termguicolors
set relativenumber

" File management system!
set nobackup
set undofile
set noswapfile
set undodir=~/.config/nvim/undodir

" Variables settings
set mouse=a
set path+=**
set cmdheight=2
set scrolloff=8
set shiftwidth=4
set laststatus=2
set history=1000
set wildmode=full
set wildoptions+=pum
set wildoptions+=tagfile

" Keymap
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

" Neovide configs
set guifont=FiraMono\ Nerd\ Font:h8
let g:neovide_refresh_rate=140
let g:neovide_transparency=0.9
let g:neovide_remember_window_size = v:true
let g:neovide_cursor_animation_length=0.08
let g:neovide_cursor_trail_length=0.8
let g:neovide_cursor_antialiasing=v:false
let g:neovide_cursor_vfx_mode = "railgun"

" Plugins
call plug#begin()

Plug 'ayu-theme/ayu-vim'

" Initialize plugin system
call plug#end()

" Color scheme
let ayucolor="dark"
colorscheme ayu
