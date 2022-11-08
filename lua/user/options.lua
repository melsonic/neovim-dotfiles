local g = vim.g
local opt = vim.opt

-----------------------------------
--NeoVim Settings
-----------------------------------
--Remap space as leader key

g.mapleader = ' ' -- NOTE: mapes space key to <space>
opt.number = true
opt.relativenumber = true
opt.showmatch = true
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.cindent = true
opt.expandtab = true -- makes indentation using spaces
opt.swapfile = false
opt.wrap = true
opt.encoding = "utf-8"
opt.updatetime = 3000
opt.linebreak = true -- makes it not to wrap in the middle of a word
opt.breakindent = true
opt.cursorline = true
opt.cursorlineopt = "number" -- Highlight only the screen line of the cursor with CursorLine
opt.preserveindent = true
opt.sidescrolloff = 8
opt.scrolloff = 4
opt.showmode = false
opt.splitbelow = true
opt.splitright = true
opt.backup = false
opt.clipboard = 'unnamedplus'
opt.ignorecase = true
opt.signcolumn = "yes" -- "number" make signs appear in the number column
opt.laststatus = 3
-- indent by additional 2 chars on wrapped lines
opt.breakindentopt = { 'shift:4', 'min:60', 'sbr' }
opt.guitablabel = '[%N] %t %M'

---------- ########################### ----------------

g.do_filetype_lua = 1 -- use filetype.lua
g.did_load_filetypes = 0 -- don't use filetype.vim
g.highlighturl_enabled = true -- highlight URL by default
g.zipPlugin = false
g.load_black = false
g.loaded_2html_plugin = 1
g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_gzip = 1
g.loaded_logipat = 1
g.loaded_matchit = 1
g.loaded_netrwFileHandlers = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_remote_plugins = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.cursorhold_updatetime = 100


-- make winSeparator little thick
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#928374', bold = true })

-- vim.cmd[[ 
-- set listchars=tab:\┊\ 
-- set list
-- "	set listchars=tab:\┊\ 
-- "	set list
-- ]]

