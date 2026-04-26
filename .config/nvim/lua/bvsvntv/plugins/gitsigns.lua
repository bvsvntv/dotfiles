require("gitsigns")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>gp", ":Gitsigns preview_hunk<CR>", opts)
vim.keymap.set("n", "<Leader>ghs", ":Gitsigns stage_hunk<CR>", opts)
vim.keymap.set("n", "<Leader>ghr", ":Gitsigns reset_hunk<CR>", opts)
vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", opts)
vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>", opts)
