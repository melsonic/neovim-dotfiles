-- remember folds
vim.cmd [[
	augroup remember_folds
  	  autocmd!
  	  autocmd BufWinLeave ?* mkview 1
  	  autocmd BufWinEnter ?* silent! loadview 1
	augroup END
]]

vim.cmd [[
	autocmd Filetype c setlocal ts=4 sw=4 sts=0 expandtab
]]

-- vim.cmd[[
--     autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>
-- ]]

-- run java code
vim.cmd[[
    autocmd Filetype java nnoremap <F9> :new term://java %<CR>
]]
