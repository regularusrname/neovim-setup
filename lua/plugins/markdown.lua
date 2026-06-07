return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    config = function()
      require('render-markdown').setup({
        heading = {
          enabled = true,
          sign = true,
        },
        code = {
          enabled = true,
          sign = true,
          style = 'full',   -- подсветка блока кода целиком
        },
        bullet = {
          enabled = true,
        },
        checkbox = {
          enabled = true,   -- [ ] и [x] как чекбоксы
        },
        table = {
          enabled = true,
        },
      })
      vim.keymap.set('n', '<leader>m', '<cmd>RenderMarkdown toggle<CR>', { desc = 'Toggle markdown render' })
    end,
  },
}
