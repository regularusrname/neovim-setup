return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			--negative kanagawa for statusline
			local custom_kanagawa = require("lualine.themes.kanagawa")

			-- custom_kanagawa.normal.a = { fg = "#1f1f28", bg = "#c8c093", bold = true }
			-- custom_kanagawa.normal.b = { fg = "#1f1f28", bg = "#9cabca" }
			-- custom_kanagawa.normal.c = { fg = "#1f1f28", bg = "#7e9cd8" }
			--
			-- custom_kanagawa.insert.a = { fg = "#1f1f28", bg = "#98bb6c", bold = true }
			-- custom_kanagawa.insert.b = { fg = "#1f1f28", bg = "#76946a" }
			-- custom_kanagawa.insert.c = { fg = "#1f1f28", bg = "#6f894e" }
			--
			-- custom_kanagawa.visual.a = { fg = "#1f1f28", bg = "#957fb8", bold = true }
			-- custom_kanagawa.visual.b = { fg = "#1f1f28", bg = "#7a6799" }
			-- custom_kanagawa.visual.c = { fg = "#1f1f28", bg = "#624f82" }
			--
			-- custom_kanagawa.command.a = { fg = "#1f1f28", bg = "#e46876", bold = true }
			-- custom_kanagawa.command.b = { fg = "#1f1f28", bg = "#c84053" }
			-- custom_kanagawa.command.c = { fg = "#1f1f28", bg = "#b5313d" }
			--
			-- custom_kanagawa.inactive.a = { fg = "#363646", bg = "#727169" }
			-- custom_kanagawa.inactive.b = { fg = "#363646", bg = "#54546d" }
			-- custom_kanagawa.inactive.c = { fg = "#363646", bg = "#43436c" }
			local lotus = require("kanagawa.colors").setup({ theme = "lotus" }).palette

			custom_kanagawa.normal.a = { fg = "#1f1f28", bg = lotus.lotusBlue3, bold = true }
			custom_kanagawa.normal.b = { fg = "#1f1f28", bg = lotus.lotusBlue2 }
			custom_kanagawa.normal.c = { fg = "#1f1f28", bg = lotus.lotusBlue1 }

			custom_kanagawa.insert.a = { fg = "#1f1f28", bg = lotus.lotusGreen, bold = true }
			custom_kanagawa.insert.b = { fg = "#1f1f28", bg = lotus.lotusGreen2 }
			custom_kanagawa.insert.c = { fg = "#1f1f28", bg = lotus.lotusGreen3 }

			custom_kanagawa.visual.a = { fg = "#1f1f28", bg = lotus.lotusPink, bold = true }
			custom_kanagawa.visual.b = { fg = "#1f1f28", bg = lotus.lotusViolet1 }
			custom_kanagawa.visual.c = { fg = "#1f1f28", bg = lotus.lotusViolet2 }

			custom_kanagawa.command.a = { fg = "#1f1f28", bg = lotus.lotusRed, bold = true }
			custom_kanagawa.command.b = { fg = "#1f1f28", bg = lotus.lotusOrange }
			custom_kanagawa.command.c = { fg = "#1f1f28", bg = lotus.lotusOrange2 }

			custom_kanagawa.inactive.a = { fg = "#54546d", bg = lotus.lotusWhite3 }
			custom_kanagawa.inactive.b = { fg = "#54546d", bg = lotus.lotusWhite4 }
			custom_kanagawa.inactive.c = { fg = "#54546d", bg = lotus.lotusWhite5 }

			local mode = {
				"mode",
				fmt = function(str)
					return str:sub(1, 1)
				end,
			}

			local filename = {
				"filename",
				file_status = true,
				path = 1,
			}

			local hide_in_width = function()
				return vim.fn.winwidth(0) > 100
			end

			local diagnostics = {
				"diagnostics",
				sources = { "nvim_diagnostic" },
				sections = { "error", "warn" },
				symbols = { error = "E: ", warn = "W: ", info = "I: ", hint = "H: " },
				colored = false,
				update_in_insert = false,
				always_visible = false,
				cond = hide_in_width,
			}

			local diff = {
				"diff",
				colored = false,
				cond = hide_in_width,
			}

			require("lualine").setup({
				options = {
					icons_enabled = true,
					-- theme = "kanagawa",
					theme = custom_kanagawa,
					-- component_separators = { left = "│", right = "│" },
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = { "alpha", "oil" },
					-- always_divide_middle = true,
				},
				sections = {
					lualine_a = { mode },
					lualine_b = { "branch" },
					-- lualine_b = { "location" },
					lualine_c = { filename },
					lualine_x = {
						diagnostics,
						diff,
						{ "encoding", cond = hide_in_width },
						{ "filetype", cond = hide_in_width, colored = false },
					},
					lualine_y = { "location" },
					lualine_z = { "progress" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { { "filename", path = 1 } },
					lualine_x = { { "location", padding = 0 } },
					lualine_y = {},
					lualine_z = {},
				},
			})
		end,
	},
}
