vim.pack.add { 'https://github.com/nvim-mini/mini.nvim' }

-- statusline
require('mini.statusline').setup {
  sections = { left = { 'mode' }, mid = { 'filename' }, right = { 'fileformat', 'filetype' } },
}

-- misc
require('mini.icons').setup()

require('mini.pairs').setup()

require('mini.ai').setup()

require('mini.indentscope').setup()
