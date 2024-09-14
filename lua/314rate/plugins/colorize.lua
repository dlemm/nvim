return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		-- Konfiguration des Plugins
		require("colorizer").setup(
			{ "*" }, -- Aktiviere für alle Dateitypen
			{
				RGB = true, -- #RGB Hex-Codes
				RRGGBB = true, -- #RRGGBB Hex-Codes
				names = false, -- "Name" Codes wie Blue oder Red
				RRGGBBAA = true, -- #RRGGBBAA Hex-Codes
				rgb_fn = true, -- CSS rgb() Funktionen
				hsl_fn = true, -- CSS hsl() Funktionen
				css = true, -- Alle CSS Features aktivieren
				css_fn = true, -- CSS *Funktionen* aktivieren
				mode = "background", -- Zeigt die Farbe im Hintergrund an
			}
		)
	end,
}
