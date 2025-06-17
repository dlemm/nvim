return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		-- Capabilities für Autocompletion
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Gemeinsame on_attach Funktion
		local on_attach = function(client, bufnr)
			-- Hier können gemeinsame Konfigurationen für alle Server stehen
		end

		-- LSP Server Setup Handlers
		mason_lspconfig.setup_handlers({
			-- Default handler für alle installierten Server
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end,

			-- Svelte spezifische Konfiguration
			["svelte"] = function()
				lspconfig["svelte"].setup({
					capabilities = capabilities,
					on_attach = function(client, bufnr)
						on_attach(client, bufnr)
						-- Svelte-spezifische Logik
						vim.api.nvim_create_autocmd("BufWritePost", {
							pattern = { "*.js", "*.ts" },
							callback = function(ctx)
								client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
							end,
						})
					end,
				})
			end,

			-- Astro Konfiguration
			["astro"] = function()
				lspconfig["astro"].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end,

			-- GraphQL Konfiguration
			["graphql"] = function()
				lspconfig["graphql"].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
				})
			end,

			-- Emmet Konfiguration
			["emmet_ls"] = function()
				lspconfig["emmet_ls"].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					filetypes = {
						"html",
						"typescriptreact",
						"javascriptreact",
						"css",
						"sass",
						"scss",
						"less",
						"svelte",
					},
				})
			end,

			-- Lua Language Server Konfiguration
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					settings = {
						Lua = {
							-- make the language server recognize "vim" global
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
							workspace = {
								library = vim.api.nvim_get_runtime_file("", true),
							},
							telemetry = {
								enable = false,
							},
						},
					},
				})
			end,
		})
	end,
}
