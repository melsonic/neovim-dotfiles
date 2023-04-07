-- remember folds
vim.cmd [[
	augroup remember_folds
  	  autocmd!
  	  autocmd BufWinLeave ?* mkview 1
  	  autocmd BufWinEnter ?* silent! loadview 1
	augroup END
]]


-- run java code
vim.cmd[[
    autocmd Filetype java nnoremap <F8> :vsplit term://java %:t<CR>
    autocmd Filetype java nnoremap <F9> :vsplit term://javac % && java %:t:r && rm *.class<CR>
]]

-- run cpp code
vim.cmd[[
    autocmd Filetype cpp nnoremap <F8> :vsplit term://g++ -std=c++17 -Wshadow -Wall '%:t' -O2 -Wno-unused-result && ./a.out && rm a.out<CR>
]]

-- only highlight cursorline if window is active
vim.cmd[[
	augroup BgHighlight
    	autocmd!
    	autocmd WinEnter * set cul
    	autocmd WinLeave * set nocul
	augroup END
]]

