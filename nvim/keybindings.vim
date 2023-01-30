" Keybindings
"""""""""""""
" leaders
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" files
nnoremap <leader>fs :write<CR>
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
nnoremap <leader>s /
" (turn off highlighting till next search)
nnoremap <leader>h :noh<CR>

" clipboard
xnoremap <leader>cy "+y
xnoremap <C-c> "+y
nnoremap <leader>cp "+p
inoremap <C-v> <C-r>+

" autocomplete
"inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

" remap :noh to ESC
nnoremap <ESC> :nohlsearch<CR>

" remap reloading the source file
nnoremap <leader>rr :source ~/.config/nvim/init.vim<CR>

" remap reloading the tex snippets file 
nnoremap <leader>tt :source ~/.config/nvim/UltiSnips/tex.snippets<CR>
