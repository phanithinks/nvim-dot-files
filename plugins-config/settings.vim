"Leader changed
let mapleader = " "
nnoremap <space> <Nop>

"mapping ;; to Esc
:imap ;; <Esc>


"turnoff seach height
nnoremap <CR> :noh<CR>

if (has("termguicolors"))
	set termguicolors
endif

"Indetation fix
set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4
set shiftround
set autoindent
set copyindent

"colorscheme
set encoding=UTF-8
set background=light
colorscheme dracula
let g:lightline = { 'colorscheme': 'dracula' }
let g:airline_theme='onedark'
let g:deus_termcolors = 264


"To use `ALT+{h,j,k,l}` to navigate windows from any mode:
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>"
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l


nnoremap <leader>b :NERDTreeToggle<CR>


"Setting up the Hybrid line numbers
set number relativenumber

"Setting fonts
set encoding=utf-8

"open new slipt panes normal to right and below
set splitright
set splitbelow

"Enable lable for sneak
let g:sneak#label = 1
""""""""""""""""""""""
"Termnial configuration
""""""""""""""""""""""
tnoremap ;; <C-\><C-n>
"open terminal on ctrl+;
function! OpenTerminal()
	:split +terminal
	resize 10
endfunction
nnoremap <C-`> :call OpenTerminal()<CR>


command! -nargs=0 Prettier :CocCommand prettier.formatFile

command! -nargs=0 Config :vsp ~\AppData\Local\nvim\init.vim

autocmd BufEnter *.hbs :set ft=html
