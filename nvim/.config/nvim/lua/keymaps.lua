local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- copy current file
vim.keymap.set('n', '<C-c>', 'ggVG"+y', opts)

-- copy current file name
vim.keymap.set('n', '<leader>fn', function()
  local file = vim.fn.expand '%'
  vim.fn.setreg('+', file)
  print('Copied: ' .. file)
end, { desc = 'Yank current file path' })

-- navigate splits
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

vim.keymap.set('x', 'p', [["_dP]], { desc = 'Paste without overwriting register' })

vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)

vim.keymap.set('n', 'af', '<C-^>', {
  desc = 'Alternate file',
})
