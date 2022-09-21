call plug#begin('~/.config/nvim/autoload/plugged')

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'

"Better Syntax Support
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

"File Explorer (Must be in this order)
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'Xuyuanp/nerdtree-git-plugin' " Git Integration

"File icons
Plug 'ryanoasis/vim-devicons'

"Auto pairs for '(' '[' and '{'
Plug 'jiangmiao/auto-pairs'

"Line
Plug 'nvim-lualine/lualine.nvim'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tab navigator
Plug 'christoomey/vim-tmux-navigator'

" Commenter
Plug 'scrooloose/nerdcommenter'

call plug#end()
