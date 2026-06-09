return {
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('bufferline').setup({
        options = {
          mode = 'tabs',
          show_buffer_close_icons = false,
          show_close_icon = false,
          separator_style = 'thin',  -- попробуй: 'slant', 'padded_slant', 'thick', 'thin'
          always_show_bufferline = false, -- скрывать когда одна вкладка
          max_name_length = 30,
          tab_size = 24,
        },
        highlights = {
          fill = {
            bg = '#16161d',           -- фон панели
          },
          background = {
            fg = '#54546d',           -- неактивные вкладки текст
            bg = '#1f1f28',
          },
          tab_selected = {
            fg = '#dca561',           -- активная вкладка текст
            bg = '#2a2a3a',
            bold = true,
          },
          separator = {
            fg = '#16161d',           -- цвет разделителей
            bg = '#1f1f28',
          },
          separator_selected = {
            fg = '#16161d',
            bg = '#2a2a3a',
          },
        },
      })
    end,
  },
}

