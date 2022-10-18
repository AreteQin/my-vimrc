syntax on

"set relativenumber
set number
set wrap
set cursorline
set hlsearch "highlight search results
set incsearch "highlight search results while searching
set ignorecase "ignore case while searching
set nocompatible "required by some plugins
set list "display the trails and tabs
set listchars=tab:→\ ,trail:▫ "using special symbol to display tabs and space at end
set scrolloff=10 "minimum lines at bottom

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "go to the last position

call plug#begin('~/.vim/plugged')

" Status bar
Plug 'vim-airline/vim-airline'

" Theme color
Plug 'connorholyday/vim-snazzy'

" File explorer
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}

call plug#end()

" Enable color theme
color snazzy

" NerdTree configuration
map tt :NERDTreeToggle<CR>
