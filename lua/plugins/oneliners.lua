return {
	{
		"ojroques/vim-oscyank",
	},
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
			})
		end,
	},
    {
        'folke/todo-comments.nvim',
        config = function()
            require("todo-comments").setup({
                signs = false
            })
        end,
    },
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
}
