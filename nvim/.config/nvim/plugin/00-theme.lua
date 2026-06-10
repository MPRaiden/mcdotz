vim.pack.add {
  'https://github.com/folke/tokyonight.nvim',
}

require('tokyonight').setup {
  styles = {
    keywords = { italic = false },
    floats = 'transparent',
  },
}

-- vim.cmd 'colorscheme tokyonight-moon'

vim.pack.add {
  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine',
  },
}
require('rose-pine').setup {
  disable_background = true,
  styles = {
    italic = false,
    transparency = true,
  },
}

vim.cmd 'colorscheme rose-pine-moon'
