" Vim Plug
source ~\AppData\Local\nvim\plugins-config\vim-plug.vim

"General settings
source ~\AppData\Local\nvim\plugins-config\settings.vim

"Startify cofiguration
source ~\AppData\Local\nvim\plugins-config\startify.vim

"FloatTerm
source ~\AppData\Local\nvim\plugins-config\Floaterm.vim


"Git signify
source ~\AppData\Local\nvim\plugins-config\signify.vim

source ~\AppData\Local\nvim\plugins-config\telescope.vim

"Tabline                                                                                                                                 
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_ccunt = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              


" FZF
"""
"Bind "//" to a fzf-powered buffer search
" nmap // :BLines!<CR>
"set rop=type:directx
"fzf settings and mapping
" nnoremap <c-p> :GFiles<cr>

"ctl s save the file
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"if hidden is not set, TextEdit might fail.
set hidden
"Better display for messages
set cmdheight=2
"Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
"don't give |ins-completion-menu| messages.
set shortmess+=c
"always show signcolumns
set signcolumn=yes

"Use tab for trigger completion with characters ahead and navigate.
"Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<c-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

"Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

"Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

"Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"disable vim-go :GoDef short cut (gd)
"this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0


function! ReuseVimGoTerm(cmd) abort
	for w in nvim_list_wins()
		if "goterm" == nvim_buf_get_option(nvim_win_get_buf(w), 'filetype')
			call nvim_win_close(w, v:true)
			break
		endif
	endfor
	execute a:cmd
endfunction

let g:go_term_enabled = 1
let g:go_term_mode = "silent keepalt rightbelow 15 split"
let g:go_def_reuse_buffer = 1

autocmd FileType go nmap <leader>r :call ReuseVimGoTerm('GoRun')<Return>

"mapping es6 file to javascirpt
au BufNewFile,BufRead *.es6 set filetype=javascript

