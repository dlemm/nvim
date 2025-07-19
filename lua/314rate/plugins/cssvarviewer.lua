return {
	"farias-hecdin/CSSVarViewer",
	ft = { "css", "scss", "astro" }, -- Astro hinzufügen falls gewünscht
	config = function()
		require("CSSVarViewer").setup({
			-- Limits erhöhen
			max_results = 200, -- Standard: 100
			timeout = 8000, -- 8 Sekunden (Standard: 3000)

			-- Performance verbessern
			cache_enabled = true,
			debounce_delay = 300, -- Weniger häufige Updates
		})
	end,
}
