return {
  {
    'HiPhish/rainbow-delimiters.nvim',
    config = function()
      require('rainbow-delimiters.setup').setup({
        strategy = {
          [''] = require('rainbow-delimiters').strategy['global'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
      })
    end,
  },
}
