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
