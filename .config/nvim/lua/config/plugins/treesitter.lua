local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("nvim-treesitter/nvim-treesitter"),
})

require("nvim-treesitter").setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	ensure_installed = {
		"bash",
		"c",
		"css",
		"dockerfile",
		"go",
		"html",
		"http",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"markdown",
		"sql",
		"svelte",
		"toml",
		"yaml",
	},
	autotag = {
		enable = true,
	},
	autopair = {
		enable = true,
	},
})
