local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle, opts)
