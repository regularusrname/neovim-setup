# Neovim Setup

Personal Neovim configuration for backend development (.NET, Go) with frontend support.

**Neovim version:** 0.12+

## Structure

```
.
├── init.lua
└── lua/
    ├── config/
    │   ├── lazy.lua          # plugin manager bootstrap
    │   ├── options.lua       # editor options
    │   ├── keybinds.lua      # keybindings
    │   └── diagnostics.lua   # LSP diagnostics & keybindings
    └── plugins/
        ├── tree-sitter.lua
        ├── treesitter-textobjects.lua
        ├── treesitter-context.lua
        ├── mason.lua
        ├── lsp.lua
        ├── roslyn.lua
        ├── completion.lua
        ├── formatting.lua
        ├── oil.lua
        ├── colorscheme.lua
        ├── bufferline.lua
        ├── indent-blankline.lua
        ├── rainbow-delimiters.lua
        ├── autopairs.lua
        ├── markdown.lua
        ├── markdown-preview.lua
        ├── dap.lua
        └── neotest.lua
```

## Plugins

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [neovim-treesitter/nvim-treesitter](https://github.com/neovim-treesitter/nvim-treesitter) | Syntax parsing & highlighting |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Text objects for functions, classes |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | Show current function/class context |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server manager |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Mason + lspconfig bridge |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [roslyn.nvim](https://github.com/seblj/roslyn.nvim) | C# / .NET LSP (Roslyn) |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File manager |
| [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) | Colorscheme (wave variant) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tab bar |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | Rainbow brackets |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto close brackets |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown inline preview |
| [markdown-preview.nvim](https://github.com/selimacerbas/markdown-preview.nvim) | Markdown browser preview |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP UI |
| [neotest](https://github.com/nvim-neotest/neotest) | Test runner |

## LSP Servers

Installed via Mason:

| Server | Language |
|---|---|
| `roslyn` | C# / .NET |
| `gopls` | Go |
| `pyright` | Python |
| `lua_ls` | Lua |
| `ts_ls` | TypeScript / JavaScript |
| `html` | HTML |
| `cssls` | CSS |
| `dockerls` | Dockerfile |
| `yamlls` | YAML |
| `jsonls` | JSON |
| `clangd` | C/C++ |
| `rustfmt` | Rust |
| `zigfmt` | Zig |

## Keybindings

### General

| Key | Action |
|---|---|
| `<Space>` | Leader key |
| `<leader>cd` | Open file manager (oil.nvim) |
| `<C-S-l>` | Redraw screen |

### Navigation — Windows

| Key | Action |
|---|---|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |
| `<C-w>v` | Split vertically |
| `<C-w>s` | Split horizontally |
| `<C-w>q` | Close window |
| `<C-w>o` | Close all other windows |

### Navigation — Tabs

| Key | Action |
|---|---|
| `<Tab>` | Next tab |
| `<S-Tab>` | Previous tab |
| `<leader>tn` | New tab |
| `<leader>tc` | Close tab |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `<C-o>` | Jump back (after gd) |
| `<C-i>` | Jump forward |

### Diagnostics

| Key | Action |
|---|---|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>d` | Show diagnostic float |

### Formatting

| Key | Action |
|---|---|
| `<leader>f` | Format file |

### Treesitter Text Objects

| Key | Action |
|---|---|
| `af` | Select outer function |
| `if` | Select inner function |
| `ac` | Select outer class |
| `ic` | Select inner class |
| `aa` | Select outer parameter |
| `ia` | Select inner parameter |
| `]f` | Next function start |
| `[f` | Previous function start |
| `]c` | Next class start |
| `[c` | Previous class start |

### Comments

| Key | Action |
|---|---|
| `gcc` | Toggle comment (line) |
| `gc` + motion | Toggle comment (motion) |
| `gc` in visual | Toggle comment (selection) |

### Debug (DAP)

| Key | Action |
|---|---|
| `<F5>` | Continue |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<F12>` | Step out |
| `<leader>b` | Toggle breakpoint |
| `<leader>du` | Toggle DAP UI |

### Tests (neotest)

| Key | Action |
|---|---|
| `<leader>tr` | Run nearest test |
| `<leader>tf` | Run all tests in file |
| `<leader>td` | Debug nearest test |
| `<leader>ts` | Toggle test summary |
| `<leader>to` | Show test output |

### File Manager (oil.nvim)

| Key | Action |
|---|---|
| `-` | Open parent directory |
| `Enter` | Open file / enter directory |
| `q` | Close oil |
| `g.` | Toggle hidden files |
| `gp` | Preview file |
| `<C-r>` | Refresh |

### Markdown

| Key | Action |
|---|---|
| `<leader>m` | Toggle markdown render |
| `<leader>mps` | Start browser preview |
| `<leader>mpS` | Stop browser preview |
| `<leader>mpr` | Refresh browser preview |

## Requirements

- Neovim 0.12+
- Git
- Node.js + npm (for some LSP servers)
- .NET SDK (for C# development)
- Go (for Go development)
- Zig toolchain (for Zig development)
- Rust toolchain / rustup (for Rust development)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)

## Installation

```bash
git clone https://github.com/noneuclideanGarage/neovim-setup ~/.config/nvim
nvim
```

On first launch lazy.nvim will install all plugins automatically. Then install LSP servers:

```
:MasonInstall roslyn clangd rust-analyzer zls clang-format
```

All other servers from `ensure_installed` will be installed automatically.
