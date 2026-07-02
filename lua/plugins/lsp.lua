return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"gopls",
					"lua_ls",
					"pyright",
					"ts_ls",
					"html",
					"cssls",
					"dockerls",
					"yamlls",
					"jsonls",
					"clangd",
					"rust_analyzer",
					"zls",
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({})
					end,
					["lua_ls"] = function()
						local runtime_path = vim.split(package.path, ";")
						table.insert(runtime_path, "lua/?.lua")
						table.insert(runtime_path, "lua/?/init.lua")

						require("lspconfig").lua_ls.setup({
							settings = {
								Lua = {
									runtime = {
										version = "LuaJIT",
										path = runtime_path,
									},
									workspace = {
										library = {
											vim.fn.expand("$VIMRUNTIME/lua"),
											vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
											vim.fn.stdpath("data") .. "/lazy", -- плагины lazy.nvim
										},
										checkThirdParty = false,
									},
									diagnostics = {
										globals = { "vim" },
									},
									telemetry = {
										enable = false,
									},
								},
							},
						})
					end,
					["clangd"] = function()
						require("lspconfig").clangd.setup({})
					end,
					["rust_analyzer"] = function()
						require("lspconfig").rust_analyzer.setup({})
					end,
					["zls"] = function()
						require("lspconfig").zls.setup({})
					end,
				},
			})
			vim.lsp.config("ols", {
				cmd = { "ols" },
				filetypes = { "odin" },
				root_markers = { "ols.json", ".git" },
			})
			vim.lsp.enable("ols")
		end,
	},
}
