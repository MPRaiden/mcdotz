vim.pack.add {
  'https://github.com/navarasu/onedark.nvim',
}
require('onedark').setup {
  style = 'cool',
  transparent = true,
  highlights = {
    Pmenu = { bg = 'none' },
    PmenuSbar = { bg = 'none' },
    PmenuSel = { bg = 'none' },
    NormalFloat = { bg = 'none' },
    FloatBorder = { fg = 'none', bg = 'none' },

    -- blink.cmp uses these for FloatBorder in its menu, docs, and signature
    -- windows.  No foreground removes the visible frame entirely.
    BlinkCmpMenu = { bg = 'none' },
    BlinkCmpMenuBorder = { fg = 'none', bg = 'none' },
    BlinkCmpMenuSelection = { bg = 'none' },
    BlinkCmpDoc = { bg = 'none' },
    BlinkCmpDocBorder = { fg = 'none', bg = 'none' },
    BlinkCmpSignatureHelp = { bg = 'none' },
    BlinkCmpSignatureHelpBorder = { fg = 'none', bg = 'none' },

    -- The brace highlighted by matchparen uses this group.
    MatchParen = { fg = '$red', bg = 'none', fmt = 'bold' },
  },
}
require('onedark').load()
