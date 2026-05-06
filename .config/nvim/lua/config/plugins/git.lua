local opts = { noremap = true, silent = true }

return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<Leader>gs", vim.cmd.Git, opts)
			vim.keymap.set("n", "<Leader>mc", ":Gvdiffsplit!<CR>", opts)
			vim.keymap.set("n", "<Leader>gL", ":diffget //3<CR>", opts)
			vim.keymap.set("n", "<Leader>gH", ":diffget //2<CR>", opts)
			vim.keymap.set("n", "<Leader>gu", ":diffupdate<CR>", opts)
			vim.keymap.set("n", "<Leader>bw", ":Git blame<CR>", opts)
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})

			vim.keymap.set(
				"n",
				"<Leader>gp",
				":Gitsigns preview_hunk<CR>",
				opts
			)
			vim.keymap.set("n", "<Leader>ghs", ":Gitsigns stage_hunk<CR>", opts)
			vim.keymap.set("n", "<Leader>ghr", ":Gitsigns reset_hunk<CR>", opts)
			vim.keymap.set("n", "<Leader>nh", ":Gitsigns next_hunk<CR>", opts)
			vim.keymap.set("n", "<Leader>Nh", ":Gitsigns prev_hunk<CR>", opts)
		end,
	},
}
