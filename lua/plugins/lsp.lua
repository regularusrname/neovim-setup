return {
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'gopls', 'lua_ls', 'pyright', 'ts_ls',
          'html', 'cssls', 'dockerls', 'yamlls', 'jsonls',
          'clangd', 'rust_analyzer', 'zls',
        },
        handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end,
            ['lua_ls'] = function()
                require('lspconfig').lua_ls.setup({
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { 'vim' },
                            },
                        },
                        gopls = {
                            gofumpt = true,  -- более строгий форматтер
                        },
                    },
                })
            end,
            ['clangd'] = function()
                require('lspconfig').clangd.setup({})
            end,
            ['rust_analyzer'] = function()
                require('lspconfig').rust_analyzer.setup({})
            end,
            ['zls'] = function()
                require('lspconfig').zls.setup({})
            end,
        },
      })
    end,
  },
}
