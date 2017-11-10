call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'farmergreg/vim-lastplace'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'prettier/vim-prettier', {'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql']}
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

silent! colorscheme solarized

set background=dark
set hlsearch
set ignorecase
set smartcase
set nojoinspaces

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'

au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/
