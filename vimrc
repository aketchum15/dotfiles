call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype indent on
filetype plugin on

let mapleader=","

set relativenumber
set number

set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set signcolumn=number

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set ignorecase
set smartcase
set incsearch

set scrolloff=5

set wildmenu
set wildignore+=*.jpg,*.png,*.bmp,*.gif,*.jpeg

set splitright
set splitbelow

set clipboard=unnamedplus

set termguicolors
syntax on
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight

"auto resize splits when window is resized
au VimResized * :wincmd =

"clear highlighting from search
nnoremap <silent> <space><space> :noh<enter>

"allow for , usage with leader as ,
noremap , <leader>,

"use Control + {h j k l} to navigate splits
nnoremap <C-h> <C-w><h>
nnoremap <C-j> <C-w><j>
nnoremap <C-k> <C-w><k>
nnoremap <C-l> <C-w><l>

"telescope maps 
nnoremap <leader>f :Telescope find_files<enter>


"coc maps
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction





