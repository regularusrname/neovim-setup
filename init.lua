require("core.options")
require("core.keybinds")
require("core.diagnostics")
require("core.lazy")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.expandtab = true -- (false): Go использует табы, не пробелы
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"cs",
		"python",
		"lua",
		"typescript",
		"javascript",
		"html",
		"css",
		"json",
		"jsonc",
		"yaml",
		"rust",
		"c",
		"cpp",
		"zig",
		"odin",
	},
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true -- пробелы
	end,
})
