return {
  {
    'stevearc/conform.nvim',
    config = function()
      require('conform').setup({
          formatters_by_ft = {
              lua        = { 'stylua' },
              python     = { 'black' },
              go         = { 'gofmt' },
              cs         = { 'csharpier' },
              typescript = { 'prettier' },
              javascript = { 'prettier' },
              html       = { 'prettier' },
              css        = { 'prettier' },
              json       = { 'prettier' },
              jsonc      = { 'prettier' },
              yaml       = { 'prettier' },
              markdown   = { 'prettier' },
              sql        = { 'sqlfmt' },
              c    = { 'clang_format' },
              cpp  = { 'clang_format' },
              rust = { 'rustfmt' },
              zig  = { 'zigfmt' },
              odin = { 'odinfmt' },
          },
      })

      -- хоткей: <leader>f — форматировать файл
      vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
        require('conform').format({ async = true })
      end, { desc = 'Format file' })
    end,
  },
}
