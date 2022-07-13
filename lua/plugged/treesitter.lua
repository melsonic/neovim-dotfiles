require 'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		disable = { 'html' },
	},
	indent = {
		enable = true,
		disable = { 'python', 'c' },
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		colors = {
			'#7cdbe6',
			'#b17ce6',
			'#6fe36d',
		}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	}
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx", "javascript.jsx", "javascriptreact" }

vim.cmd[[ hi rainbowcol1 guifg=yellow ]]
