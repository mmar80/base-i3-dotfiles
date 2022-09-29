" autoload vim-plug plugins
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
call plug#end()

" add lsp support
lua require('lsp_config')

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
"autocm BufWritePre *.go lua goimports(1000)

" add clipboard support
set clipboard+=unnamedplus

" no swap file
set noswapfile

" set line number
set number

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" use 4 spaces instead of tab()
" copy indent from current line when starting new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set hidden buffer
set hidden
