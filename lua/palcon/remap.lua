-- SETTINGS -----------------------------------
vim.opt.tabstop = 4
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 0
-- vim.opt.autoindent
vim.opt.clipboard = "unnamedplus"

-- KEYS ---------------------------------------
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
