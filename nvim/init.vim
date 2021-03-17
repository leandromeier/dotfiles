
let g:snipMate = {'snippet_version': 1}

let g:python3_host_prog =  '/usr/bin/python3.9'

"let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips", "UltiSnips","my_snippets"]
"let g:UltiSnipsExpandTrigger='<tab>'

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/keybindings.vim

"disable compatibility to old-time vi
"set nocompatible 		
"show matching brackets
set showmatch
"highlight search results
set hlsearch
"width for autoindents
set shiftwidth=4
"indent a new line the same amount as the line just typed
set autoindent
"line numbers
set number
"auto column border (try out what this does)
"set cc=80
"auto-indenting depending on filetype
"does not work yet, need to figure out plugins first
"set filetype plugin indent on

