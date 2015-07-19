" Use Vim settings, instead of Vi settings.
" This setting must be placed as early as possible, it has side effects.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Begin Vundle plugins.
" Let Vundle manage Vundle, required.
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-startify'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ngmy/vim-rubocop'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'

" End Vundle plugins.
call vundle#end()
filetype plugin on
filetype indent on

" Leader.
let mapleader=','

" Custom maps.
noremap <Leader>w :update<Return>
noremap <Leader>s :wall<Return>
noremap <Leader>q :bdelete<Return>
noremap <Leader>a :edit #<Return>
noremap <Leader>r :edit!<Return>

" Automatically jump to end of pasted text.
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Color scheme.
syntax enable
set background=dark
let base16colorspace=256
colorscheme base16-solarized

" Current line.
set cursorline
highlight CursorLine guibg=#003F30
highlight Cursor guibg=Green

" Associate file extensions.
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" Highlighting and completion for MiniTest.
set completefunc=syntaxcomplete#Complete

" Make it obvious where 80 characters is.
set textwidth=80
set colorcolumn=+1

set guifont=Inconsolata\ Medium\ 14
" For MacVim.
if has('gui_macvim')
  set guifont=Inconsolata:h16
endif

set encoding=utf-8
set ruler
set laststatus=2
set cmdheight=2
"set hidden
set wildmenu
set showcmd
set autowrite

" Searching.
set hlsearch
set ignorecase
set smartcase
set incsearch
highlight Search ctermbg=28 ctermfg=0

" Clear search with Escape key.
nnoremap <Esc> :nohlsearch<Return><Esc>

set nobackup
set nowritebackup
set noswapfile

" Remove spaces at the end and convert tabs to spaces before saving.
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :retab

" Softtabs, 2 spaces.
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Line numbers.
set relativenumber
set number
set numberwidth=5
set scrolloff=5

" CtrlP settings.
map <Leader>b :CtrlPBuffer<Return>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Netrw settings.
" Caution: liststyle 3 leaves multiple dirs in the buffer.
"let g:netrw_liststyle=3

" vim-airline settings.
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" vim-indent-guides settings.
"let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" vim-expand-region settings.
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Open splits to right and bottom, which feels more natural.
set splitbelow
set splitright

" All splits at least 1 line and current one 10 lines.
set winminheight=1
set winheight=10

" Remove menu bar, toolbar, and right and left scroll bars.
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Curated by @mauroporrasp
