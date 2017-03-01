" System vimrc file for MacVim
"
" Maintainer:	Bjorn Winckler <bjorn.winckler@gmail.com>
" Last Change:	Sat Aug 29 2009

set nocompatible

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
"set backspace+=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
"set langmenu=none
"========================================================================
"myself config
"========================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
"set cursorline
"----------------------------vubudle plugin------------------------------
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/Pydiction'
Plugin 'hdima/python-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/pydoc.vim'
Plugin 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"----------------------------pydict plugin------------------------------
let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'
 
"----------------------------myconfig------------------------------
"bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
let &termencoding=&encoding
set fileencodings=utf-8,big5,gbk

" Mouse and backspace
set bs=2     " make backspace behave like normal again
" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
"noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype on
filetype plugin indent on
syntax on

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
"set color column=80
highlight ColorColumn ctermbg=233

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
"" set smartcase
map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>
"set the font size
set guifont=Courier:h14
"color secheme

syntax enable
set background=dark
"colorscheme solarized
"ctrlp
let g:ctrlp_map = '<c-o>'
set guicursor=n-v-c:ver35-Cursor
