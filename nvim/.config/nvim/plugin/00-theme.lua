vim.pack.add {
  'https://github.com/folke/tokyonight.nvim',
}
vim.pack.add {
  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine',
  },
}

require('tokyonight').setup {
  styles = {
    floats = 'transparent',
  },
}
require('rose-pine').setup()

-- vim.cmd 'colorscheme tokyonight'
vim.cmd 'colorscheme rose-pine'
