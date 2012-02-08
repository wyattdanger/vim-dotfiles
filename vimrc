set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'shemerey/vim-peepopen'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'wyattdanger/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'

" vim-scripts repos
" Bundle 'L9'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ




" Customizations
"
" Sets how many lines of history VIM has to remember
set history=300
set ttyfast
set hidden

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
cmap w!! w !sudo tee % >/dev/null

" Fast editing of the .vimrc
" map <leader>e :e! ~/.vim_runtime/vimrc<cr>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc
autocmd! bufwritepost .vimrc source ~/.vim/vimrc

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=1 "The commandbar height

set hid "Change buffer - without saving

"Browser Refresh
let g:RefreshRunningBrowserDefault = 'chrome'
map <silent><leader>r :RRB<CR>

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set visualbell t_vb=

syntax enable "Enable syntax hl

" Set Fonts
set shell=/bin/bash

" Highlight current line
:set cursorline

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set guioptions-=R  "remove right-hand scroll Bar
  set guioptions-=r  "remove right-hand scroll Bar
  set guioptions-=l  "remove right-hand scroll Bar
  set guioptions-=L  "remove right-hand scroll bar
  set showtabline=0
  set t_Co=256
  set background=dark
  " colorscheme molokai2
  colorscheme solarized

  set nu
else
  colorscheme zellner
  set background=dark
  
  set nonu
endif

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" for CSS, also have things in braces indented:
autocmd FileType css,less set smartindent
" for HTML, generally format text, but if a long line has been created
" leave it alone when editing:
autocmd FileType html set formatoptions+=tl
" for both CSS and HTML, use genuine tab characters for 
" indentation, to make files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=2

set lbr
set autoindent "Auto indent
set wrap linebreak nolist

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch buffers with L and H easily
map L :bn<cr>
map H :bp<cr>

" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

