-----------------------------------------------------------
-- TokyoNight ---------------------------------------------
-----------------------------------------------------------
-- Example config in Lua
vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = false
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.g.tokyonight_transparent = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_italic_keywords = false
-----------------------------------------------------------
-----------------------------------------------------------
-----------------------------------------------------------

-- Load the colorscheme

vim.cmd[[ colorscheme tokyonight ]]
