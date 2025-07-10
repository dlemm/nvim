return {
	"laytan/cloak.nvim",

	config = function()
		local cloak = require("cloak")
		cloak.setup({
			enabled = true,
			cloak_character = "*",
			patterns = {
				{
					file_pattern = ".env*",
					cloak_pattern = "=.+",
					replace = nil,
				},
			},
		})
	end,
}
