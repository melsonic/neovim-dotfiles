vim.cmd [[
	function! TriggerHotReload() abort
		silent execute '!kill -s USR1 "$(pgrep -f flutter_tools.snapshot\ run)" &> /dev/null'
	endfunction
]]

vim.cmd [[
	autocmd BufWritePost *.dart call TriggerHotReload()
]]

print("This is a dart file");

-- set listchars
vim.opt.list = true
vim.opt.lcs = {
	tab = '  ',
	eol = '↴'
}
