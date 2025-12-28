local utils = require("config.plugins.utils")

vim.pack.add({
	utils.get_full_github_url("stevearc/conform.nvim"),
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "gofumpt", "goimports", "gofmt" },
		javascript = { "prettier" },
		typescript = { "prettier" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
