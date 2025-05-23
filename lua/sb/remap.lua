vim.g.mapleader = " "

-- window switching
vim.keymap.set('n', '<leader>w|', ':vsplit<CR>')
vim.keymap.set('n', '<leader>w-', ':hsplit<CR>')
vim.keymap.set('n', '<leader>wh', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wo', ':only<CR>')


