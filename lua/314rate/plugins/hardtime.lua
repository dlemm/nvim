return {
	"m4xshen/hardtime.nvim",
	lazy = false,
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		disabled_keys = {
			["<Right>"] = false,
			["<Left>"] = false,
			["<Up>"] = false,
			["<Down>"] = false,
		},
	},
}
