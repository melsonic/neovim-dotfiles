local opts = { silent = true }

-- Use ctrl-[hjkl] to select the active split!

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", opts)

-- Use <leader> - [hl] to move between tabs
vim.keymap.set("n", "<leader>h", "<cmd>tabprevious<CR>", { remap = false })
vim.keymap.set("n", "<leader>l", "<cmd>tabnext<CR>", { remap = false })

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
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

