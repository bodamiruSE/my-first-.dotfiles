vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem reveal left<CR>")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")
