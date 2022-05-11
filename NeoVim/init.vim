" source $HOME/.config/nvim/vim-plug/plugins.vim
lua require('plugins')
lua require('keymaps')

" Configs
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive  
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
"set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
set nobackup nowritebackup
set noshowmode

"Treesitter
lua <<EOF

require'nvim-treesitter.configs'.setup {
  
  ensure_installed = "all",

  highlight = {
    enable = true,
    disable = {},
    -- additional_vim_regex_highlighting = false,
  },
  indent = { 
  enable = true,
  },
}

EOF

" Vim Keymaps TODO: convert to lua
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'

" airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
