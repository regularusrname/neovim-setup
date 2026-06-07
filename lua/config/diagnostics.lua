-- vim.diagnostic.config({
--   virtual_text = true,        -- текст ошибки прямо в строке кода
--   signs = true,               -- иконки в gutter (левая колонка)
--   underline = true,           -- подчёркивание проблемного кода
--   update_in_insert = false,   -- не показывать пока печатаешь
--   severity_sort = true,       -- сначала ошибки, потом предупреждения
--   float = {
--     border = 'rounded',       -- красивые рамки у всплывающего окна
--     source = true,            -- показывать источник (eslint, roslyn и т.п.)
--   },
-- })
--
-- -- хоткеи для навигации по ошибкам
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
-- vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })
-- vim.keymap.set('n', 'gd',         vim.lsp.buf.definition,     { desc = 'Go to definition' })
-- vim.keymap.set('n', 'gr',         vim.lsp.buf.references,     { desc = 'References' })
-- vim.keymap.set('n', 'K',          vim.lsp.buf.hover,          { desc = 'Hover docs' })
-- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,         { desc = 'Rename symbol' })


--new version with LspAttach
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = true,
  },
})

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic' })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set('n', 'gd',         vim.lsp.buf.definition,  vim.tbl_extend('force', opts, { desc = 'Go to definition' }))
    vim.keymap.set('n', 'gr',         vim.lsp.buf.references,  vim.tbl_extend('force', opts, { desc = 'References' }))
    vim.keymap.set('n', 'K',          vim.lsp.buf.hover,       vim.tbl_extend('force', opts, { desc = 'Hover docs' }))
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,      vim.tbl_extend('force', opts, { desc = 'Rename symbol' }))
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, vim.tbl_extend('force', opts, { desc = 'Code action' }))
  end,
})
