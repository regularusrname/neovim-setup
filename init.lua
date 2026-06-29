vim.api.nvim_exec("language en_US.UTF-8", true)

require("config.options")
require("config.keybinds")
require("config.diagnostics")
require("config.lazy")

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = false  -- Go использует табы, не пробелы
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 
      'cs', 'python', 'lua', 'typescript',
      'javascript', 'html', 'css', 'json',
      'jsonc', 'yaml', 'rust', 'c', 'cpp',
      'zig', 'odin', 
  },
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true   -- пробелы
  end,
})
