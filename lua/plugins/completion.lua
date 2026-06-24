return {
	{
		"saghen/blink.cmp",
		version = "*",
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<CR>"] = { "accept", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				trigger = {
					prefetch_on_insert = false,
					show_on_insert_on_trigger_character = false,
					show_on_accept_on_trigger_character = false,
					show_on_keyword = false, -- не показывать при наборе
					show_on_trigger_character = false,
				},
				documentation = {
					auto_show = true, -- автоматически показывать документацию
					auto_show_delay_ms = 200,
				},
				accept = {
					auto_brackets = {
						enabled = false,
					},
				},
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			signature = { enabled = true }, -- подсказка сигнатуры функции при вводе аргументов
		},
	},
}
