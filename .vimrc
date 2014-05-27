set ts=8
if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  augroup C
       autocmd BufRead *.c set cindent
  augroup END
endif

filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete

set hlsearch

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
      " When editing a file, always jump to the last cursor position
        autocmd BufReadPost *
          \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" bind Ctrl + <movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

ca spaces setlocal expandtab tabstop=4 shiftwidth=4

" set python to spaces
autocmd BufRead,BufNewFile *.py setlocal expandtab tabstop=4 shiftwidth=4

autocmd BufRead,BufNewFile *.txt syntax off setlocal ofu=""

call pathogen#infect()
call pathogen#helptags()
