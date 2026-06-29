return {
	{
		"neovim-treesitter/nvim-treesitter",
		dependencies = { "neovim-treesitter/treesitter-parser-registry" },
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"lua",
				"python",
				"typescript",
				"html",
				"css",
				"javascript",
				"bash",
				"regex",
				"markdown",
				"markdown_inline",
				"dockerfile",
				"sql",
				"c_sharp",
				"c",
				"cpp",
				"rust",
				"zig", -- была пропущена запятая
				"go",
				"gomod",
				"gosum",
				"gotmpl",
				"json",
				"yaml",
				"toml",
				"ini",
				"xml",
                "odin",
			})
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"lua",
					"python",
					"typescript",
					"html",
					"css",
					"javascript",
					"bash",
					"regex",
					"markdown",
					"markdown_inline",
					"dockerfile",
					"sql",
					"c_sharp",
					"c",
					"cpp",
					"rust", -- была пропущена запятая
					"go",
					"gomod",
					"gosum",
					"gotmpl",
					"json",
					"yaml",
					"toml",
					"ini",
					"xml",
					"dotenv",
                    "odin",
				},
				callback = function()
					vim.treesitter.start()
					vim.wo.foldmethod = "expr"
					vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
					vim.wo.foldenable = false
				end,
			})
		end,
	},
}
