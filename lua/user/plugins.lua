-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme


-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)

	use 'wbthomason/packer.nvim' -- packer can manage itself

	use 'folke/tokyonight.nvim' -- tokyonight colorscheme

	use 'ellisonleao/gruvbox.nvim' -- gruvbox colorscheme

	use 'navarasu/onedark.nvim'  -- atom one dark colorscheme

	use 'windwp/nvim-autopairs' -- nvim generate autopair

	use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

	use 'williamboman/nvim-lsp-installer'

	-- Autocompletion
	use 'hrsh7th/nvim-cmp'

	-- from lsp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'

	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- Formatting
	use 'jose-elias-alvarez/null-ls.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	-- Tree-sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- autotag
	use 'windwp/nvim-ts-autotag'

	-- statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons', opt = true
		}
	}

	-- telescope - Find, Filter, Preview, Pick. All lua, all the time.
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- file window
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	}

	-- show keybindings
	use 'folke/which-key.nvim'

	-- improved performance
	use 'lewis6991/impatient.nvim'

	use 'simrat39/symbols-outline.nvim'

	-- use 'p00f/nvim-ts-rainbow' -- coloring braces

	-- Lua
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim"
	}

	-- show hex colors
	use { 'norcalli/nvim-colorizer.lua' }

	-- fix cursorHold autocmd update time
	use { 'antoinemadec/FixCursorHold.nvim' }

	---@diagnostic disable-next-line: undefined-global
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
