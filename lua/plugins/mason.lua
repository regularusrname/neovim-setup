return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({
        registries = {
          'github:mason-org/mason-registry',       -- стандартный
          'github:Crashdummyy/mason-registry',     -- для roslyn
        },
      })
    end,
  },
}
