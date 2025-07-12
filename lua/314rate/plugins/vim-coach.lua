return {
	"shahshlok/vim-coach.nvim",
	dependencies = {
		"folke/snacks.nvim",
	},
	config = function()
		require("vim-coach").setup()
	end,
	keys = {
		{ "<leader>h", "<cmd>VimCoach<cr>", desc = "Vim Coach" },
	},
}
