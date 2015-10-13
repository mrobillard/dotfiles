" Matthew Robillard

" ---------------------------------- Colors ------------------------------------
syntax enable                   " enable syntax processing
colorscheme monokai             " set colorscheme


" ----------------------------------- Misc -------------------------------------
set ttyfast                     " faster redraw
set backspace=indent,eol,start  " define backspace behavior
call pathogen#infect()          " Pathogen package manager


" ------------------------------- Spaces & Tabs  -------------------------------
set tabstop=4                   " set tab length to 4 
set expandtab                   " insert space characters instead of tab
set softtabstop=4               " control how many columns vim uses for tab
set shiftwidth=4                " control how many columns text is indented with
                                " the reindent operations


" -------------------------------- UI Layout -----------------------------------
set number                      " set line numbers
set showcmd                     " show command in bottom bar
set nocursorline                " don't highlight the current line (cursorline)
set wildmenu                    " enables a menu at the bottom of vim
set wildmode=list:longest,full  " tab completion on command options
set showmatch                   " shows matching brace
set ruler                       " shows ruler (line number, column number)


" --------------------------------- Searching ----------------------------------
set ignorecase                  " ignore case for searching
set incsearch                   " allows for incremental searches
set hlsearch                    " turns on search highlighting 


" ---------------------------------- Folding -----------------------------------
set foldmethod=indent           " fold groups of lines with the same indent
set foldnestmax=10              " max number of folds 
set foldenable                  " enable folding
nnoremap <space> za             
set foldlevelstart=10           


" -------------------------------- Backups -------------------------------------
set backup                                           " Set backup directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp  
set backupskip=/tmp/*,/private/tmp/*                  
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp  
set writebackup


" -------------------------------- NERDTree ------------------------------------
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'dist', 'docs']


" -------------------------------- Syntastic -----------------------------------
let g:syntastic_python_flake8_args='--ignore=E501'


" ----------------------------- Custom Functions -------------------------------

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
