:set number
:set relativenumber
:set mouse=a
:set tabstop=2

call plug#begin()

Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/kabouzeid/nvim-jellybeans'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-telescope/telescope.nvim'

call plug#end()

colorscheme jellybeans

let mapleader = ' '

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree | wincmd p

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
