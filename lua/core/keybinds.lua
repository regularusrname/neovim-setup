vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>cd", "<cmd>Oil<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- вкладки
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Tab: New" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Tab: Close" })
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", { desc = "Tab: Next" })
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>", { desc = "Tab: Prev" })

-- окна
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window: Left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window: Down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window: Up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window: Right" })

vim.keymap.set("n", "<C-S-l>", "<C-l>", { desc = "Redraw screen" })

  -- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
