" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set number " show line numbers
set relativenumber " and relative line numbers

" Show tabs
set list
set listchars=tab:>-

set showmatch " highlight matching

set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editin
set shiftwidth=2 " indenting operations use two spaces
set expandtab " tabs are spaces

" move to start or end of the line
nnoremap B ^
nnoremap E $

function! NumberToggle()
  if(&relativenumber == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
"https://news.ycombinator.com/item?id=13101691
"escapes and then jumps to the mark at which insert mode last was
inoremap jk <Esc>`^
