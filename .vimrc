" Matthew Robillard

" ---------------------------------- Colors ------------------------------------
syntax enable                   " enable syntax processing
colorscheme monokai             " set colorscheme


" ----------------------------------- Misc -------------------------------------
set ttyfast                     " faster redraw
set backspace=indent,eol,start  "
call pathogen#infect()          "

" ------------------------------- Spaces & Tabs  -------------------------------
set tabstop=4                   "
set expandtab                   "
set softtabstop=4               "
set shiftwidth=4                "

" -------------------------------- UI Layout -----------------------------------

set number                      " set line numbers
set showcmd                     " show command in bottom bar
set nocursorline                "
set wildmenu                    "
set showmatch                   "
set ruler                       "

" --------------------------------- Searching ----------------------------------
set ignorecase                  "
set incsearch                   "
set hlsearch                    "

" ---------------------------------- Folding -----------------------------------
set foldmethod=indent           "
set foldnestmax=10              "
set foldenable                  "
nnoremap <space> za             "
set foldlevelstart=10           "

" -------------------------------- Backups -------------------------------------
set backup                                           "
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp  "
set backupskip=/tmp/*,/private/tmp/*                 " 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp  "
set writebackup                                      "
