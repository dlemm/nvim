return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		local colors = require("tokyonight.colors").setup({ style = "moon" })

		local tokyonight = {}

		tokyonight.normal = {
			a = { bg = colors.teal, fg = colors.bg },
			b = { bg = colors.fg_gutter, fg = colors.teal },
			c = { bg = colors.terminal_black, fg = colors.yellow },
		}

		tokyonight.insert = {
			a = { bg = colors.blue, fg = colors.bg },
			b = { bg = colors.fg_gutter, fg = colors.blue },
		}

		tokyonight.command = {
			a = { bg = colors.magenta, fg = colors.bg },
			b = { bg = colors.fg_gutter, fg = colors.magenta },
		}

		tokyonight.visual = {
			a = { bg = colors.yellow, fg = colors.bg },
			b = { bg = colors.fg_gutter, fg = colors.yellow },
		}

		tokyonight.replace = {
			a = { bg = colors.red, fg = colors.bg },
			b = { bg = colors.fg_gutter, fg = colors.red },
		}

		local inactive_bg = colors.bg
		tokyonight.inactive = {
			a = { bg = inactive_bg, fg = colors.blue },
			b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
			c = {
				bg = inactive_bg,
				fg = colors.fg_gutter_inactive,
			},
		}

		return tokyonight,
			-- configure lualine with modified theme
			lualine.setup({
				options = {
					theme = tokyonight,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff" },
					lualine_c = {
						{ "filename", path = 1 },
					},
				},
			})
	end,
}
