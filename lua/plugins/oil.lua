return {
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup({
        default_file_explorer = true, -- заменяет netrw
        view_options = {
          show_hidden = true,         -- показывать скрытые файлы (.env, .git и т.п.)
        },
	keymaps = {
	    ['<CR>']  = 'actions.select',        -- открыть файл/папку
        ['<C-r>'] = 'actions.refresh',
	    ['-']     = 'actions.parent',         -- подняться на уровень выше
	    ['_']     = 'actions.open_cwd',       -- перейти в корень проекта
	    ['gs']    = 'actions.change_sort',    -- сменить сортировку
	    ['g.']    = 'actions.toggle_hidden',  -- показать/скрыть скрытые файлы
	    ['gp']    = 'actions.preview',        -- превью файла
	    ['q']     = 'actions.close',
	    ['h']     = false,
	    ['j']     = false,
	    ['k']     = false,
	    ['l']     = false,
	},
	use_default_keymaps = false
      })

      -- '-' в любом буфере открывает директорию текущего файла
      vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
