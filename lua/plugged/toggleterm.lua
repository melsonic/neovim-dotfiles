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
  function! OpenTerminal()
    split term://bash
    resize 10
  endfunction
  nnoremap <c-n> :call OpenTerminal()<CR>
]]

vim.cmd [[
      " exit terminal with 'leader vs'
      tnoremap <leader>vs <C-\><C-n><cmd>q<CR>
      " start terminal in insert mode
      au BufEnter * if &buftype == 'terminal' | :startinsert | endif
      " open terminal on ctrl+normal
      function! OpenVert()
        vsplit term://bash
      endfunction
      nnoremap <leader>vs :call OpenVert()<CR>

]]

--[[
set splitright
  set splitbelow
  " turn terminal to normal mode with escape
  " tnoremap <Esc> <C-\><C-n>
  " exit terminal with 'Ctrl + n'
--]]
