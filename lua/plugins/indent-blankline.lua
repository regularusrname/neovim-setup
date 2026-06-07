return {
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        config = function()
            require('ibl').setup({
                indent = {
                    char = '│',           -- символ линии
                },
                scope = {
                    enabled = true,       -- подсвечивать текущий scope
                    show_start = false,   -- не подчёркивать начало scope
                    show_end = false,     -- не подчёркивать конец scope
                },
                exclude = {
                    filetypes = {
                        'help', 'dashboard', 'oil', 'mason', 'lazy',
                    },
                },
            })
        end,
    },
}
