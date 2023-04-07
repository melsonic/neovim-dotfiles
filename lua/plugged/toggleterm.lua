-- require("toggleterm").setup{
--   open_mapping = [[<c-\>]],
-- }

local g = vim.g
local opt = vim.opt

vim.cmd [[  
  " exit terminal with 'Ctrl + n'
  tnoremap <C-n> <C-\><C-n><cmd>q<CR>
  " start terminal in insert mode
  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " open terminal on ctrl+normal
  function! OpenHorizontalTerminal()
    split term://zsh
    resize 10
  endfunction
  nnoremap <c-n> :call OpenHorizontalTerminal()<CR>
]]

vim.cmd [[
      " exit terminal with 'leader vs'
      tnoremap <leader>vs <C-\><C-n><cmd>q<CR>
      " start terminal in insert mode
      au BufEnter * if &buftype == 'terminal' | :startinsert | endif
      " open terminal on ctrl+normal
      function! OpenVerticalTerminal()
        vsplit term://zsh
				vertical resize 40
      endfunction
      nnoremap <leader>vs :call OpenVerticalTerminal()<CR>

]]

vim.cmd[[
	autocmd TermOpen * setlocal nonumber norelativenumber
]]

--[[
set splitright
  set splitbelow
  " turn terminal to normal mode with escape
  " tnoremap <Esc> <C-\><C-n>
  " exit terminal with 'Ctrl + n'
--]]
