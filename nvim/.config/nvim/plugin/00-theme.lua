vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }
vim.pack.add { { src = 'https://github.com/edeneast/nightfox.nvim' } }

require('catppuccin').setup {
  flavour = 'auto', -- latte, frappe, macchiato, mocha
  transparent_background = true, -- disables setting the background color.
  float = {
    transparent = true, -- enable transparent floating windows
    solid = false, -- use solid styling for floating windows, see |winborder|
  },
  no_italic = true, -- Force no italic
  no_bold = false, -- Force no bold
  auto_integrations = true,
}

-- vim.cmd 'colorscheme catppuccin'

-- Default options
require('nightfox').setup {
  options = {
    transparent = true, -- Disable setting background
  },
  groups = {
    all = {
      NormalFloat = { bg = 'NONE' },
      FloatBorder = { fg = 'palette.blue', bg = 'NONE' },
      FloatTitle = { fg = 'palette.blue', bg = 'NONE' },

      Pmenu = { link = 'NormalFloat' },
      PmenuBorder = { link = 'FloatBorder' },
      PmenuSel = { bg = 'sel0' },
      PmenuSbar = { bg = 'NONE' },
      PmenuThumb = { bg = 'sel0' },

      FzfLuaNormal = { link = 'NormalFloat' },
      FzfLuaBorder = { link = 'FloatBorder' },
      FzfLuaTitle = { link = 'FloatTitle' },
      FzfLuaPreviewNormal = { link = 'NormalFloat' },
      FzfLuaPreviewBorder = { link = 'FloatBorder' },
      FzfLuaPreviewTitle = { link = 'FloatTitle' },
      FzfLuaCursorLine = { bg = 'sel0' },
      FzfLuaCursorLineNr = { fg = 'palette.blue', bg = 'sel0' },
      FzfLuaFzfNormal = { fg = 'fg1', bg = 'NONE' },
      FzfLuaFzfCursorLine = { fg = 'fg1', bg = 'sel0' },
      FzfLuaFzfMatch = { fg = 'palette.blue' },
      FzfLuaFilePart = { fg = 'fg1' },
      FzfLuaDirPart = { fg = 'fg2' },
      FzfLuaPathLineNr = { fg = 'palette.blue' },
      FzfLuaPathColNr = { fg = 'palette.blue' },

      BlinkCmpMenu = { link = 'Pmenu' },
      BlinkCmpMenuBorder = { link = 'PmenuBorder' },
      BlinkCmpMenuSelection = { link = 'PmenuSel' },
      BlinkCmpDoc = { link = 'NormalFloat' },
      BlinkCmpDocBorder = { link = 'FloatBorder' },
      BlinkCmpDocSeparator = { link = 'FloatBorder' },
      BlinkCmpSignatureHelp = { link = 'NormalFloat' },
      BlinkCmpSignatureHelpBorder = { link = 'FloatBorder' },
      BlinkCmpScrollBarThumb = { link = 'PmenuThumb' },
      BlinkCmpScrollBarGutter = { link = 'PmenuSbar' },
    },
  },
}

-- setup must be called before loading
vim.cmd 'colorscheme dawnfox'
