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
