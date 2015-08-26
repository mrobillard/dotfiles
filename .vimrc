" Matthew Robillard

" ------------------------------------- Colors ---------------------------------
syntax enable                   " enable syntax processing
colorscheme monokai             " set colorscheme

 
" --------- Misc ---------
set ttyfast                     " faster redraw 
set backspace=indent,eol,start
call pathogen#infect()

" ---------- Spaces & Tabs  -------------
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" ------ UI Layout -------

set number                      " set line numbers
set showcmd
set nocursorline 
set wildmenu 
set showmatch
set ruler

" -------- Searching --------
set ignorecase 
set incsearch 
set hlsearch 

" --------- ------------
set foldmethod=indent 
set foldnestmax=10
set foldenable
nnoremap <space> za
set foldlevelstart=10
