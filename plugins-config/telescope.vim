nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').help_tags()<cr>
" For git files 
nnoremap <c-p> <cmd>lua require('telescope.builtin').git_files()<cr>

nmap // <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>
