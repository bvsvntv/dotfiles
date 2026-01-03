local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("nvim-mini/mini.pairs"),
})

require("mini.pairs").setup()
