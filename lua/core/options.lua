vim.loader.enable()
vim.g.have_nerd_font = true

vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.confirm = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.autoindent = true
vim.o.breakindent = true
vim.o.signcolumn = 'yes'

vim.o.numberwidth = 4
vim.o.cursorline = true
vim.o.cursorlineopt = 'number'

vim.o.scrolloff = 10

vim.o.ignorecase = true
vim.o.smartcase = true

-- vim.o.guicursor = 'n-v-c:block-blinkwait700-blinkoff400-blinkon250,i-ci-ve:ver25-blinkwait700-blinkoff400-blinkon250'
-- vim.o.guicursor = vim.o.guicursor + 'n:block-Cursor'

vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
vim.api.nvim_set_hl(0, 'lCursor', { reverse = true })

vim.o.list = true
vim.opt.listchars = {
  tab = '│ ',
  trail = '·',     -- точки для пробелов в конце строки
}

vim.api.nvim_set_hl(0, 'SpecialKey', { fg = '#2d3149' })  -- приглушённый синеватый
vim.api.nvim_set_hl(0, 'IblIndent',  { fg = '#2d3149' })  -- линии отступов
vim.api.nvim_set_hl(0, 'IblScope',   { fg = '#54546d' })  -- текущий scope чуть светлее
