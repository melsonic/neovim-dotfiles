local opts = { silent = true }

-- Use ctrl-[hjkl] to select the active split!

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", opts)

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<cr>", opts)
vim.keymap.set("n", "<leader>o", "<cmd>NvimTreeFocus<cr>", opts)

vim.keymap.set("n", "<A-h>", "<cmd>vertical resize -5<CR>");
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize +5<CR>");
vim.keymap.set("n", "<A-j>", "<cmd>resize -5<CR>");
vim.keymap.set("n", "<A-k>", "<cmd>resize +5<CR>");

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split windows horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- use <C-s> to save
vim.keymap.set("i", "<C-s>", "<cmd>w<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- use <C-x> to exit
vim.keymap.set("i", "<C-x>", "<cmd>wqa<CR>")
vim.keymap.set("n", "<C-x>", "<cmd>wqa<CR>")

