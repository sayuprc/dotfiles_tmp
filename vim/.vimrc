scriptencoding utf-8

"--------------------------------------
" Set Dein 
"--------------------------------------
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
	call dein#begin('~/.vim/bundles')

	call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

	call dein#add('scrooloose/nerdtree')

	" call dein#add('vim-airline/vim-airline')
	" call dein#add('vim-airline/vim-airline-theme')
	" call dein#add('ryanoasis/vim-devicons')

	call dein#add('itchyny/lightline.vim')

	call dein#add('cohama/lexima.vim')
	
	call dein#add('tyru/open-browser.vim')

	" 背景画像
	" call dein#add('miyakogi/seiya.vim')

	"call dein#add('Shougo/deoplete.nvim')
	"call dein#add('roxma/nvim-yarp')
	"call dein#add('roxma/vim-hug-neovim-rpc')
	"call dein#add('lvht/phpcd.vim')

	" call dein#add('w0rp/ale')

	call dein#end()
	call dein#save_state()
endif

syntax enable
filetype plugin indent on

if dein#check_install()
	call dein#install()
endif

if len(dein#check_clean()) > 0
	call map(dein#check_clean(), "delete(v:val, 'rf')")
	call dein#recache_runtimepath()
endif

"--------------------------------------
" Set File Encode
"--------------------------------------
set fenc=utf-8
set encoding=utf-8

"--------------------------------------
" Set Colorscheme
"--------------------------------------
set background=dark
" colorscheme iceberg
colorscheme wombat

"--------------------------------------
" Enable use backspace
"--------------------------------------
set backspace=indent,eol,start

"--------------------------------------
" Settings
"--------------------------------------
set nobackup
set nowritebackup
set noundofile
set noswapfile

set hidden

set showmatch

set noshowmode

set title

set tabstop=2
set shiftwidth=2

set smartcase

set noerrorbells visualbell t_vb=

set wildmenu

set clipboard+=unnamed

"--------------------------------------
" NERDTree
"--------------------------------------
let NERDTreeShowHidden = 1

"--------------------------------------
" lightline
"--------------------------------------
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\ 	'left': [
\			['mode', 'paste'],
\			['readonly', 'filename', 'modified']
\		],
\	},
\}

"--------------------------------------
" Open browser
"--------------------------------------
let mapleader = ","
nmap <leader>b <Plug>(openbrowser-smart-search)
vmap <leader>b <Plug>(openbrowser-smart-search)

"--------------------------------------
" seiya
"--------------------------------------
" let g:seiya_auto_enable = 1
" highlight Normal ctermbg=none
" highlight LineNr ctermbg=none
" highlight SignColumn ctermbg=none
" highlight VertSplit ctermbg=none
" highlight NonText ctermbg=none

"--------------------------------------
" ale
"--------------------------------------
"let g:ale_fix_on_save = 1
"let g:ale_linters = {
"	\ 'php': ['phpcs', 'php']
"	\}

"--------------------------------------
" Keymap
"--------------------------------------
inoremap jj <Esc>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <silent>- :split<CR>
nnoremap <silent><Bar> :vsplit<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent><Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

nnoremap <Esc><Esc> :set nohlsearch<CR>

nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"--------------------------------------
" autocmd
"--------------------------------------
autocmd GUIEnter * setlocal visualbell t_vb=

autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o

autocmd FileType php setlocal tabstop=4 shiftwidth=4

autocmd FileType html xml inoremap <buffer> </ </<C-x><C-o>

