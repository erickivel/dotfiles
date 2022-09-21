source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/lualine_config.vim

" Theme
let g:dracula_colorterm = 0
colorscheme dracula
" colorscheme onedark

" Settings
set number
syntax on
set autoindent
set smarttab
set cindent
set tabstop=2
set shiftwidth=2  
set mouse=a
set cursorline
set relativenumber
" Integrate Clipboard
set clipboard+=unnamedplus

" Remap keys
noremap <C-b> :NERDTreeToggle<CR>
vmap <C-c> <plug>NERDCommenterToggle
nmap <C-c> <plug>NERDCommenterToggle
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap j jzz
nnoremap k kzz

" NERDTree Git Plugin
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUseNerdFonts = 1


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
