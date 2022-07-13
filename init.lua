
--import Lua Modules
require('user.options') -- general settings
require('user.autocmds')
require('user.plugins')
require('user.keymaps')
require('plugged.web-dev-icons')
-- require('color.tokyonight')
-- require('color.gruvbox')
require('color.onedark')
require('plugged.impatient') -- impatient needs to be setup before any other lua plugin is loaded so it is recommended you add the following near the start of your
require('plugged.nvimtree')
require('plugged.autopair')
require('plugged.toggleterm')
-- require('plugged/comment') -- it has a mapping with l key
require('plugged.treesitter')
require('plugged.lualine')
require('lsp.init')
require('plugged.telescope')
require('plugged.which-key')
require('plugged.symbols_outline')
require('plugged.todo-comments')
require('plugged.colorizer')

vim.cmd [[ hi Normal guibg=none ]] -- TODO: make it in lua

vim.cmd [[ 
	highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#4f4f4c
]]

 
