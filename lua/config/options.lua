vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4

vim.opt.numberwidth = 4
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'

-- моргающий блок в normal mode, моргающая линия в insert mode
vim.opt.guicursor = 'n-v-c:block-blinkwait700-blinkoff400-blinkon250,i-ci-ve:ver25-blinkwait700-blinkoff400-blinkon250'

vim.opt.guicursor = vim.opt.guicursor + 'n:block-Cursor'
vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
vim.api.nvim_set_hl(0, 'lCursor', { reverse = true })

vim.opt.list = true
vim.opt.listchars = {
  tab = '│ ',
  trail = '·',     -- точки для пробелов в конце строки
}

vim.api.nvim_set_hl(0, 'SpecialKey', { fg = '#2d3149' })  -- приглушённый синеватый
vim.api.nvim_set_hl(0, 'IblIndent',  { fg = '#2d3149' })  -- линии отступов
vim.api.nvim_set_hl(0, 'IblScope',   { fg = '#54546d' })  -- текущий scope чуть светлее

-- for rose-pine
-- vim.api.nvim_set_hl(0, 'SpecialKey', { fg = '#3b3552' })  -- приглушённый цвет
--
-- vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#3b3552' })
-- vim.api.nvim_set_hl(0, 'IblScope',  { fg = '#6e6a86' })
