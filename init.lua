require("config.lazy")

-- Editor preferences
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Map CTRL+S to save edits for normal and insert modes
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true })
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })

-- Theme
vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')


-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
	"<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
..	"<cmd>CompilerRedo<cr>",
{ noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

