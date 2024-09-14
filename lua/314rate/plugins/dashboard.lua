return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			config = {
				week_header = {
					enable = true,
				},
				disable_move = false, -- boolean default is false disable move key
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
