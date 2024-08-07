" Keybindings
"""""""""""""
" leaders
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" files
nnoremap <leader>fs :write<CR>
nnoremap <leader>jj :write<CR>
inoremap <C-l> <esc>:write<CR>a

" opening things
nnoremap <leader>op :NERDTreeToggle<CR>
nnoremap <leader>ot :silent !alacritty &<CR>

" windows
nnoremap <leader>ww <C-w><C-w>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k

" quitting
nnoremap <leader>qq :q<CR>
nnoremap <leader>qw :wq<CR>
nnoremap <leader>qf :q!<CR>
nnoremap <leader>qQ :q!<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>qA :qa!<CR>

" git
nnoremap <leader>ga :G add .<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gp :G push<CR>
nnoremap <leader>gf :G pull<CR>

" searching
nnoremap <leader>s  /
" turn off highlighting till next search
nnoremap <leader>h  :noh<CR>
nnoremap <ESC>      :nohlsearch<CR>

" clipboard
xnoremap <leader>cy "+y
xnoremap <C-c> "+y
nnoremap <leader>cp "+p
inoremap <C-v> <C-r>+

" autocomplete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

" remap reloading the source file
nnoremap <leader>rr :source ~/.config/nvim/init.vim<CR>

" remap reloading the tex snippets file 
nnoremap <leader>tt :call UltiSnips#RefreshSnippets()<CR>


" remap compiling with xelatex 
nnoremap <leader>lx :!xelatex %<CR>

" remap compiling with lualatex 
nnoremap <leader>lu :!lualatex %<CR>


nnoremap <silent><leader>x :put =trim(execute(input(':', '', 'command')))<CR>

"vimcmdline mappings
let cmdline_map_start = '<Enter>'
let cmdline_map_send = '<Enter>'
let cmdline_map_send_and_stay  = '<LocalLeader><Enter>'

 
" easycomplete
nnoremap <leader>e :EasyCompleteEnable<CR>
nnoremap <leader>d :EasyCompleteDisable<CR>
"nnoremap <C-k> :EasyCompleteNextDiagnostic<CR>
"nnoremap <C-j> :EasyCompletePreviousDiagnostic<CR>
"noremap gr EasyCompleteReference<C>
"noremap gd :EasyCompleteGotoDefinition<CR>
"noremap rn :EasyCompleteRename<CR>
"noremap gb :BackToOriginalBuffer<CR>
