" install junegunn/vim-plug if it is not already installed
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" Plugins
" reload vimrc and run :PlugInstall to install
" to remove, reload vimrc and run :PlugClean 
"""""""""
" vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')
" github copilot
Plug 'github/copilot.vim'
" vim command line interpreter
Plug 'jalvesaq/vimcmdline'
" macaulay2 in vim
Plug '8d1h/vim-macaulay2'
" a colorscheme
Plug 'morhetz/gruvbox'
" tree view
" Plug 'preservim/nerdtree'
" snippets
Plug 'SirVer/ultisnips'
" comment with gcc
Plug 'tpope/vim-commentary'
" fat-finger: auto-correct common spelling mistakes
Plug 'chip/vim-fat-finger'
" change cwd to configured directory
Plug 'airblade/vim-rooter'
" surround words with ysiw) or visualmode selection with S)
Plug 'tpope/vim-surround'
" repeat surround commands
Plug 'tpope/vim-repeat'
" latex compilation with <localleader>ll etc
Plug 'lervag/vimtex'
" status bar
Plug 'itchyny/lightline.vim'
" Rust support
"Plug 'rust-lang/rust.vim'
" fish support
Plug 'dag/vim-fish'
" supertab (to avoid ycm and ultisnips clashing)
Plug 'ervandew/supertab'
" jupyter-vim to edit jupyter notebooks in vim
" does not work so far
"Plug 'jupyter-vim/jupyter-vim'
" jupytext.vim to edit .ipynb files in vim
Plug 'goerz/jupytext.vim'
" YouCompleteMe for autocompletion
Plug 'ycm-core/YouCompleteMe'
"
" git
" git support with :G
" Plug 'tpope/vim-fugitive'
" show git status in nerdtree
" Plug 'Xuyuanp/nerdtree-git-plugin'
" GitHub integration
" Plug 'tpope/vim-rhubarb'
" show lines that change since last commit
" Plug 'mhinz/vim-signify'
"
call plug#end()
" plugin configuration
""""""""""""""""""""""

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_silent_chdir = 1

" NerdTree ignore
set wildignore+=*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target
let NERDTreeRespectWildIgnore=1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
" suppress the quickfix window opening automatically
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname = 'nvr'
"set conceallevel=1
"let g:tex_conecal='abdmg'

" ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips']

" nerdtree
" hide Press ? for help and u for up a dir
let g:NERDTreeMinimalUI=1

" ale
let g:ale_linters = {
  \    'tex': ['chktex', 'lacheck'],
  \    'bib': ['bibclean'],
  \    'rust': ['analyzer']
\}
let g:ale_completion_enabled = 1

" statusline
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
\}

" auto-completion with YouCompleteMe
" packadd YouCompleteMe
let g:ycm_filetype_blacklist = {
      \ 'markdown': 1,
      \ 'text': 1,
      \ 'tex': 1,
      \}

" stop semantic completion (in .tex files, because it clashes with the trigger
" expanding and jumping around snippets)
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'tex': 1
      \}

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" ALE
" only displays messages on current line. Change to 'disabled' to turn off entirely
let g:ale_virtualtext_cursor = 'current' 
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'


" copilot settings
" use <c-n> to accept suggestion 
imap <silent><script><expr> <C-N> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true

" disable copilot in .md files
let g:copilot_filetypes = {
                              \ 'md': v:false,
                              \ }
<
