-- Keymaps

-- -- insert mode maps
vim.keymap.set('i', 'jk', '<ESC>')

-- -- normal mode maps
vim.keymap.set('n', '<Space>', '<C-d>')
vim.keymap.set('n', '<BS>', '<C-u>')
vim.keymap.set('n', '<S-h>', '0')
vim.keymap.set('n', '<S-l>', '$')
vim.keymap.set('n', '\\', '<C-w><C-w>')
vim.keymap.set('n', 'df', 'd$')
vim.keymap.set('n', 'ds', 'd0')
vim.keymap.set('n', 'ff', 'za')
vim.keymap.set('n', '<C-a>', 'gg0vG$')
vim.keymap.set('n', 'dw', 'diw')
vim.keymap.set('n', 'cw', 'ciw')
vim.keymap.set('n', '<S-u>', '<C-r>')
vim.keymap.set('n', 'cv', 'c$')
vim.keymap.set('n', 'cx', 'c0')
vim.keymap.set('n', '<F1>', ':w !diff % - <CR>')
vim.keymap.set('n', 'zz', '<cmd>lua vim.diagnostic.open_float()<CR>')

-- -- visual mode maps
vim.keymap.set('v', 'jk', '<ESC>')
