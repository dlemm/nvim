return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- Mason Setup
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- Mason LSPConfig Setup - nur Installation, keine Konfiguration
		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls", -- Nur dieser für TypeScript
				"html",
				"cssls",
				"tailwindcss",
				"jsonls",
				"lua_ls",
				"eslint", -- ESLint für Linting
				"emmet_ls",
				"prismals",
				"astro",
				"yamlls",
				-- Entfernt: denols, vtsls, rome, svelte, graphql (falls nicht benötigt)
			},
		})

		-- Mason Tool Installer Setup
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
	end,
}
