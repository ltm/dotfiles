call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
call plug#end()

set background=dark
set hlsearch
set ignorecase
set smartcase
set nojoinspaces

autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/
