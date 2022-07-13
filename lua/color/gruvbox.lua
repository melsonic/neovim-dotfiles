-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = false, -- will make italic comments and special strings
  inverse = true, -- invert background for search, diffs, statuslines and errors
  invert_selection = true,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  contrast = "hard",
  overrides = {
		LspReferenceRead = { bg = "None" },
		LspReferenceText = { bg = "None" },
		LspReferenceWrite = { bg = "None" },
		Pmenu = { bg = "None" },
		Keyword = { bold = true },
		SignColumn = { bg = "#2e2e2e" },
  	},
})
vim.cmd("colorscheme gruvbox")
