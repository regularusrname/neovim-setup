return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"Nsidorenco/neotest-vstest",
		},
		config = function()
            vim.g.neotest_vstest = {
                dap_settings = {
                    type = "netcoredbg",
                },
            }

			require("neotest").setup({
				adapters = {
					require("neotest-vstest"),
				},
			})

			-- хоткеи
			vim.keymap.set("n", "<leader>tr", require("neotest").run.run, { desc = "Test: Run nearest" })
			vim.keymap.set("n", "<leader>tf", function()
				require("neotest").run.run(vim.fn.expand("%"))
			end, { desc = "Test: Run file" })
			vim.keymap.set("n", "<leader>td", function()
				require("neotest").run.run({ strategy = "dap" })
			end, { desc = "Test: Debug nearest" })
			vim.keymap.set("n", "<leader>ts", require("neotest").summary.toggle, { desc = "Test: Toggle summary" })
			vim.keymap.set("n", "<leader>to", require("neotest").output.open, { desc = "Test: Show output" })
		end,
	},
}
