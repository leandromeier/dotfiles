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
" run ':Copilot enable' in neovim to enable 
Plug 'github/copilot.vim'
" a colorscheme
Plug 'morhetz/gruvbox'
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
" supertab (to avoid ycm and ultisnips clashing)
"Plug 'ervandew/supertab'
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
" let g:ycm_filetype_blacklist = {
"       \ 'markdown': 1,
"       \ 'text': 1,
"       \ 'tex': 1,
"       \}

" " stop semantic completion (in .tex files, because it clashes with the trigger
" " expanding and jumping around snippets)
" let g:ycm_filetype_specific_completion_to_disable = {
"       \ 'tex': 1
"       \}

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'


" " copilot settings
" " use <c-n> to accept suggestion 
imap <silent><script><expr> <C-N> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true

" disable copilot in .md files
let g:copilot_filetypes = {
                              \ 'xml': v:false,
                              \ 'markdown': v:false,
                              \ 'tex': v:false,
                              \ }
