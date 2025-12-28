local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("blazkowolf/gruber-darker.nvim"),
})

vim.cmd.colorscheme("gruber-darker")
