call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'farmergreg/vim-lastplace'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'lepture/vim-jinja'
Plug 'nginx/nginx', { 'rtp': 'contrib/vim' }
Plug 'prettier/vim-prettier', { 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'psf/black', { 'branch': 'stable' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

silent! colorscheme solarized

set background=dark
set hlsearch
set ignorecase
set smartcase
set nojoinspaces

let g:prettier#exec_cmd_path = '/usr/local/bin/prettier'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'
