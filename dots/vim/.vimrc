" Vundle initialization
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Base plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'   " Git branch
Plugin 'klen/python-mode'
Plugin 'tomtom/tcomment_vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-surround'
Plugin 'chase/vim-ansible-yaml'
Plugin 'majutsushi/tagbar'

" Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'chrisyip/Better-CSS-Syntax-for-Vim'
Plugin 'groenewege/vim-less'
Plugin 'lepture/vim-jinja'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
Plugin 'elzr/vim-json'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'timonv/vim-cargo.git'

" Colors
Plugin 'https://github.com/StyleEX/wombat256.vim.git'

filetype plugin indent on     " required
" end Vundle

set t_Co=256

try
    colorscheme wombat256
catch /^Vim\%((\a\+)\)\=:E185/
endtry


set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Remove trailing spaces
autocmd BufWritePre *.* :%s/\s\+$//e

" Golang
let g:go_disable_autoinstall = 1
let g:go_fmt_fail_silently = 1

" Rust
nmap <F5> :CargoBuild<CR>
nmap <F6> :CargoRun<CR><CR>

" NERDTree
nmap <C-N>x :NERDTreeClose<cr>
nmap <C-N>v :NERDTree<cr>
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']

" Python
let g:pymode_lint_on_fly = 1
let g:pymode_lint_unmodified = 1 " Always checking
let g:pymode_lint_on_write = 1
let g:pymode_folding = 0
let g:pymode_doc = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_regenerate_on_write = 0
" let g:pymode_lint_ignore = "E501,W"
nmap <C-P>f :PymodeLintAuto<cr>

" Bufexplorer
nmap <F7> <Esc>:BufExplorer<cr>
vmap <F7> <esc>:BufExplorer<cr>
imap <F7> <esc>:BufExplorer<cr>

" Windows navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Utilities
nmap 0 ^

" Backup
set nobackup
set nowb
set noswapfile

" Search
set incsearch
set showmatch

" Others
set autoread
set ruler
set mouse=a
set smartcase
set ignorecase
set lazyredraw
set lbr
set tw=500
set termencoding=utf-8
set fileencodings=utf8,cp1251
set encoding=utf8
set foldcolumn=1
set ai
set si
set wrap
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
syntax on
