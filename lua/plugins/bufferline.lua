return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					mode = "tabs",
					themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
					numbers = "none",
					path_components = 1, -- Show only the file name without the directory
					modified_icon = "●",
					max_name_length = 30,
					max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
					tab_size = 25,
					diagnostics = false,
					diagnostics_update_in_insert = false,
					color_icons = false, --true
					show_buffer_icons = false,
					show_buffer_close_icons = false,
					show_close_icon = false,
					persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
					separator_style = { "│", "│" }, -- | "thick" | "thin" | { 'any', 'any' },
					enforce_regular_tabs = true,
					always_show_bufferline = false,
					show_tab_indicators = false,
					indicator = {
						style = "none", -- Options: 'icon', 'underline', 'none'
					},
					minimum_padding = 1,
					maximum_padding = 5,
					maximum_length = 15,
				},
				highlights = {
					separator = {
						fg = "#434C5E",
					},
					buffer_selected = {
						bold = true,
						italic = false,
					},
				},
			})
		end,
	},
}
