--import Lua Modules
require('user.options') -- general settings
require('user.autocmds')
require('user.plugins')
require('user.keymaps')
require('plugged.web-dev-icons')
-- require('color.gruvbox')
-- require('color.vscode')
require('color.onedark')
require('plugged.impatient') -- impatient needs to be setup before any other lua plugin is loaded so it is recommended you add the following near the start of your
require('plugged.nvimtree')
require('plugged.autopair')
require('plugged.toggleterm')
require('plugged.lualine')
require('plugged.treesitter')
require('lsp.init')
require('plugged.telescope')
-- require('plugged.which-key')
require('plugged.colorizer')
