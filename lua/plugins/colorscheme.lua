return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                variant = 'wave'
            })
            vim.cmd("colorscheme kanagawa-wave")
            vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
            vim.api.nvim_set_hl(0, 'lCursor', { reverse = true })
            vim.api.nvim_set_hl(0, 'IblIndent',   { fg = '#2a2a37' })
            vim.api.nvim_set_hl(0, 'IblScope',    { fg = '#54546d' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterRed',    { fg = '#e46876' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow',  { fg = '#dca561' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue',    { fg = '#7fb4ca' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange',  { fg = '#ffa066' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen',   { fg = '#98bb6c' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet',  { fg = '#957fb8' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan',    { fg = '#7aa89f' })

            vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#dca561', bold = true })  -- цвет текущего номера
            vim.api.nvim_set_hl(0, 'LineNr',       { fg = '#54546d' })
            vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
            vim.api.nvim_set_hl(0, 'DiagnosticSignError', { fg = '#e46876', bg = 'none' })
            vim.api.nvim_set_hl(0, 'DiagnosticSignWarn',  { fg = '#dca561', bg = 'none' })
            vim.api.nvim_set_hl(0, 'DiagnosticSignInfo',  { fg = '#7fb4ca', bg = 'none' })
            vim.api.nvim_set_hl(0, 'DiagnosticSignHint',  { fg = '#98bb6c', bg = 'none' })

            vim.api.nvim_set_hl(0, 'BufferLineBufferSelected',  { bg = 'none', bold = true })
            vim.api.nvim_set_hl(0, 'BufferLineBufferVisible',   { bg = 'none' })
            vim.api.nvim_set_hl(0, 'BufferLineBackground',      { bg = 'none' })
            vim.api.nvim_set_hl(0, 'BufferLineTabSelected',     { bg = 'none', bold = true })
            vim.api.nvim_set_hl(0, 'BufferLineTab',             { bg = 'none' })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            theme = "kanagawa",
            options = {
                component_separators = { left = '│', right = '│' },
                section_separators   = { left = '',  right = ''  },
            },
            sections = {
                lualine_c = {
                    {
                        'filename',
                        path = 1
                    },
                },
            },
        }
    },
}

