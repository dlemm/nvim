return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "storm",
		on_colors = function(colors)
			colors.fg_gutter = "#BA06FF"
		end,
	},
}
