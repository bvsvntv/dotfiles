return {
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({
				check_ts = true,
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"sphamba/smear-cursor.nvim",
		config = function()
			require("smear_cursor").setup({})
		end,
		opts = {
			stiffness = 0.75,
			trailing_stiffness = 0.5,
			stiffness_insert_mode = 0.7,
			trailing_stiffness_insert_mode = 0.7,
			damping = 0.95,
			damping_insert_mode = 0.95,
			distance_stop_animating = 0.5,
		},
	},
}
