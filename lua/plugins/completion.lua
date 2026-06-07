return {
    {
        'saghen/blink.cmp',
        version = '*',
        opts = {
            keymap = {
                preset = 'default',
                ['<Tab>'] = { 'select_next', 'fallback' },
                ['<S-Tab>'] = { 'select_prev', 'fallback' },
                ['<CR>'] = { 'accept', 'fallback' },
            },
            appearance = {
                nerd_font_variant = 'mono',
            },
            completion = {
                documentation = {
                    auto_show = true,           -- автоматически показывать документацию
                    auto_show_delay_ms = 200,
                },
                accept = {
                auto_brackets = {
                    enabled = false
                },
            },
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            signature = { enabled = true }, -- подсказка сигнатуры функции при вводе аргументов
        },
    },
}
