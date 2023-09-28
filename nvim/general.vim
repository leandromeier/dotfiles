" General settings
"""""""""""""""""""
set nocompatible " don't force VI rules
set scrolloff=5 " How many lines at the boundary
set relativenumber " relative line numbers
set number " absolute line number in current line
set breakindent " stay indented after line break
set expandtab " spaces rather than tabs
set shiftwidth=2 " tabs are replaced by 2 spaces
set tabstop=2 " tab characters encode 2 spaces
set ruler " always display cursor position
let &showbreak='---->' " line break symbols
set timeoutlen=1000 ttimeoutlen=0 " no delay for visual mode
set hlsearch " highlight searched terms
set incsearch " highlight as you type
set laststatus=2 " make lightline appear
set showcmd " show what command you're typing
set smartindent
set cursorline
set showmatch " show matching brackets
set autoindent " indent a new line the same amount as the line just typed

filetype plugin indent on " make vim recognize filetypes
syntax on " syntax highlighting

" allow + and * to copy to clipboard
" replace xclip by wl-clipboard
let g:clipboard = {
  \   'name': 'wl-clipboard',
  \   'copy': {
  \      '+': 'wl-copy',
  \      '*': 'wl-copy',
  \    },
  \   'paste': {
  \      '+': 'wl-paste',
  \      '*': 'wl-paste',
  \   },
  \ }


" hide the double insert mode. This mostly fixes the flickering text issue with vimtex, now it's only the cursor flickering
set noshowmode
