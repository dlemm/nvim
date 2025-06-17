return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"saghen/blink.cmp",
	},
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true,
			ts_config = {
				lua = { "string" },
				javascript = { "template_string" },
				java = false,
			},
		})

		local blink_cmp = require("blink.cmp")
		if blink_cmp then
			blink_cmp.setup({
				sources = {
					completion = {
						enabled_providers = { "lsp", "path", "snippets", "buffer", "autopairs" },
					},
				},
			})
		end
	end,
}
