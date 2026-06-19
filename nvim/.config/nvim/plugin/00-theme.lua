vim.pack.add {
  'https://github.com/folke/tokyonight.nvim',
}

require('tokyonight').setup {
  styles = {
    keywords = { italic = false },
    floats = 'transparent',
  },
}

vim.cmd 'colorscheme tokyonight-moon'
