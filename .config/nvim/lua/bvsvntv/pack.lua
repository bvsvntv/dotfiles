vim.pack.add({
	-- colorschemes
	{ src = "https://github.com/blazkowolf/gruber-darker.nvim" },

	-- fuzzy search
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },

	-- syntax highlighting
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },

	-- git
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/tpope/vim-fugitive" },

	-- misc
	{ src = "https://github.com/nvim-mini/mini.pairs" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/mbbill/undotree" },

	-- packages
	{ src = "https://github.com/mason-org/mason.nvim" },
})

require("bvsvntv.plugins.lsp.mason")
require("bvsvntv.plugins.lsp.lsp_config")

require("bvsvntv.plugins.conform")
require("bvsvntv.plugins.gitsigns")
require("bvsvntv.plugins.gruber_darker")
require("bvsvntv.plugins.mini")
require("bvsvntv.plugins.telescope")
require("bvsvntv.plugins.treesitter")
require("bvsvntv.plugins.vim_fugitive")
require("bvsvntv.plugins.undotree")
