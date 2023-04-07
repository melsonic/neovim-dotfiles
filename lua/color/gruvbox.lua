



-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = false,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		LspReferenceRead = { bg = "None" },
		LspReferenceText = { bg = "None" },
		LspReferenceWrite = { bg = "None" },
		Pmenu = { bg = "None" },
		Keyword = { bold = true },
-- 		CursorLine = { bg = "None" },
--		Search = { bg = "None" },
--		Float = { bg = "None" },

	},
	dim_inactive = false,
	transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")







