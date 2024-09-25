return {
	"ptdewey/pendulum-nvim",
	config = function()
		require("pendulum").setup({
			log_file = vim.fn.expand("~/Documents/pendulum/my_time_log.csv"),
		})
	end,
}
