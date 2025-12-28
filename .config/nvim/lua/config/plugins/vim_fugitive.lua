local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("tpope/vim-fugitive"),
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader>gs", vim.cmd.Git, opts)
vim.keymap.set("n", "<Leader>mc", ":Gvdiffsplit!<CR>", opts)
vim.keymap.set("n", "<Leader>gl", ":diffget //3<CR>", opts)
vim.keymap.set("n", "<Leader>gh", ":diffget //2<CR>", opts)
vim.keymap.set("n", "<Leader>gu", ":diffupdate<CR>", opts)
vim.keymap.set("n", "<Leader>bw", ":Git blame<CR>", opts)
