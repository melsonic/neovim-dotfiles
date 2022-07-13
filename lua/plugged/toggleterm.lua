-- require("toggleterm").setup{
--   open_mapping = [[<c-\>]],
-- }

local g = vim.g
local opt = vim.opt

vim.cmd [[
  set splitright
  set splitbelow
  " turn terminal to normal mode with escape
  tnoremap <Esc> <C-\><C-n>
  " exit terminal with 'Ctrl + n'
  tnoremap <C-n> <C-\><C-n><cmd>q<CR>
  " start terminal in insert mode
  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " open terminal on ctrl+normal
  function! OpenTerminal()
    split term://powershell -NoLogo
    resize 10
  endfunction
  nnoremap <c-n> :call OpenTerminal()<CR>
]]


