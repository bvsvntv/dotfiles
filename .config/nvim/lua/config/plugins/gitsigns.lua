local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("lewis6991/gitsigns.nvim"),
})

require("gitsigns")
