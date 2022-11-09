--import Lua Modules
require('user.options') -- general settings
require('user.autocmds')
require('user.plugins')
require('user.keymaps')
require('plugged.web-dev-icons')
require('color.onedark')
require('plugged.impatient') -- impatient needs to be setup before any other lua plugin is loaded so it is recommended you add the following near the start of your
require('plugged.nvimtree')
require('plugged.autopair')
require('plugged.toggleterm')
require('plugged.treesitter')
require('plugged.lualine')
require('lsp.init')
require('plugged.telescope')
require('plugged.which-key')
require('plugged.cp')
require('plugged.colorizer')

