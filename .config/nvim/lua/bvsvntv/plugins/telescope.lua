local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

require("telescope").setup({
	defaults = {
		{ file_ignore_patterns = { "node_modules", "dist" } },
		mappings = {
			i = {
				["<C-p>"] = actions.move_selection_previous,
				["<C-n>"] = actions.move_selection_next,
				["<C-q>"] = actions.close,
			},
		},
	},
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-s>", builtin.find_files, opts)
vim.keymap.set("n", "<C-p>", builtin.git_files, opts)
vim.keymap.set("n", "<Leader>fg", builtin.live_grep, opts)
vim.keymap.set("n", "<Leader>fs", builtin.grep_string, opts)
