"Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

"Declare the list of plugins.
Plug 'easymotion/vim-easymotion'

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"Plugin airline-themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plugin for color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

"For FileTree
Plug 'preservim/nerdtree'


"Tim popes sourround
Plug 'tpope/vim-surround'

"Fuzzy file 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Git signify
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

Plug 'junegunn/gv.vim'
"Zoom win
Plug 'troydm/zoomwintab.vim'

Plug 'yggdroot/indentline'


Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

Plug 'jiangmiao/auto-pairs'

Plug 'matze/vim-move'

Plug 'terryma/vim-multiple-cursors'

" Startify
Plug 'mhinz/vim-startify'

"Flotterm
Plug 'voldikss/vim-floaterm'

"vim-base64 use <leader>atob decode, <leade>btoa encode
Plug 'christianrondeau/vim-base64'

Plug 'justinmk/vim-sneak'
"List ends here. Plugins become visible to Vim after this call.

"Tailwind css
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
call plug#end()

