vim.pack.add {
  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine',
  },
}
require('rose-pine').setup {
  variant = 'dawn', -- auto, main, moon, or dawn
  dark_variant = 'main', -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    migrations = true, -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = false,
    -- transparency = true,
  },

  groups = {
    border = 'muted',
    link = 'iris',
    panel = 'surface',

    error = 'love',
    hint = 'iris',
    info = 'foam',
    note = 'pine',
    todo = 'rose',
    warn = 'gold',

    git_add = 'foam',
    git_change = 'rose',
    git_delete = 'love',
    git_dirty = 'rose',
    git_ignore = 'muted',
    git_merge = 'iris',
    git_rename = 'pine',
    git_stage = 'iris',
    git_text = 'rose',
    git_untracked = 'subtle',

    h1 = 'iris',
    h2 = 'foam',
    h3 = 'rose',
    h4 = 'gold',
    h5 = 'pine',
    h6 = 'foam',
  },

  palette = {
    dawn = {
      base = '#f8f1e8',
      surface = '#faf3eb',
      overlay = '#f3e8dc',
      muted = '#9a9086',
      subtle = '#6b655e',
      text = '#4e4945',
      love = '#c07a70',
      gold = '#c6a45d',
      rose = '#cb8d97',
      pine = '#467fbe',
      foam = '#6c98c0',
      iris = '#8b7bb2',
      highlight_low = '#f3e8dc',
      highlight_med = '#e4d5c4',
      highlight_high = '#ead9a7',
    },
  },

  -- NOTE: Highlight groups are extended (merged) by default. Disable this
  -- per group via `inherit = false`
  highlight_groups = {
    NormalFloat = { bg = 'surface' },
    FloatBorder = { fg = 'pine', bg = 'surface' },
    FloatTitle = { fg = 'pine', bg = 'surface', bold = true },
    CursorLine = { bg = 'overlay' },
    CursorColumn = { bg = 'overlay' },
    CursorLineNr = { fg = 'pine', bg = 'overlay', bold = true },
    LineNr = { fg = 'muted', bg = 'base' },
    SignColumn = { bg = 'base' },
    FoldColumn = { fg = 'muted', bg = 'base' },
    Folded = { fg = 'subtle', bg = 'overlay' },
    Visual = { bg = 'highlight_med' },
    Search = { fg = 'text', bg = 'highlight_high' },
    IncSearch = { fg = 'base', bg = 'pine' },
    MatchParen = { fg = 'rose', bg = 'highlight_med', bold = true },

    StatusLine = { fg = 'text', bg = 'overlay' },
    StatusLineNC = { fg = 'muted', bg = 'overlay' },
    TabLine = { fg = 'subtle', bg = 'overlay' },
    TabLineFill = { bg = 'overlay' },
    TabLineSel = { fg = 'text', bg = 'base', bold = true },

    Pmenu = { fg = 'text', bg = 'surface' },
    PmenuBorder = { fg = 'pine', bg = 'surface' },
    PmenuSel = { fg = 'text', bg = 'highlight_med' },
    PmenuSbar = { bg = 'overlay' },
    PmenuThumb = { bg = 'highlight_med' },

    Comment = { fg = 'muted', italic = true },
    Constant = { fg = 'gold' },
    String = { fg = '#e39a2d' },
    Character = { fg = '#e39a2d' },
    Number = { fg = 'gold' },
    Boolean = { fg = 'gold' },
    Float = { fg = 'gold' },
    Identifier = { fg = 'text' },
    Function = { fg = 'rose' },
    Statement = { fg = 'pine' },
    Conditional = { fg = 'pine' },
    Repeat = { fg = 'pine' },
    Label = { fg = 'pine' },
    Operator = { fg = 'text' },
    Keyword = { fg = 'pine' },
    Exception = { fg = 'pine' },
    PreProc = { fg = 'foam' },
    Include = { fg = 'pine' },
    Define = { fg = 'foam' },
    Macro = { fg = 'foam' },
    PreCondit = { fg = 'foam' },
    Type = { fg = 'pine' },
    StorageClass = { fg = 'pine' },
    Structure = { fg = 'pine' },
    Typedef = { fg = 'pine' },
    Special = { fg = 'rose' },
    SpecialChar = { fg = 'rose' },
    Delimiter = { fg = 'subtle' },

    ['@variable'] = { fg = 'text' },
    ['@variable.builtin'] = { fg = 'foam' },
    ['@parameter'] = { fg = 'text' },
    ['@field'] = { fg = 'rose' },
    ['@property'] = { fg = 'rose' },
    ['@function'] = { fg = 'rose' },
    ['@function.call'] = { fg = 'rose' },
    ['@function.builtin'] = { fg = 'foam' },
    ['@method'] = { fg = 'rose' },
    ['@method.call'] = { fg = 'rose' },
    ['@constructor'] = { fg = 'pine' },
    ['@keyword'] = { fg = 'pine' },
    ['@keyword.function'] = { fg = 'pine' },
    ['@keyword.operator'] = { fg = 'pine' },
    ['@keyword.return'] = { fg = 'pine' },
    ['@operator'] = { fg = 'text' },
    ['@type'] = { fg = 'pine' },
    ['@type.builtin'] = { fg = 'pine' },
    ['@module'] = { fg = 'pine' },
    ['@constant'] = { fg = 'gold' },
    ['@string'] = { fg = '#e39a2d' },
    ['@string.escape'] = { fg = 'rose' },
    ['@number'] = { fg = 'gold' },
    ['@boolean'] = { fg = 'gold' },
    ['@comment'] = { fg = 'muted', italic = true },

    DiagnosticError = { fg = 'love' },
    DiagnosticWarn = { fg = 'gold' },
    DiagnosticInfo = { fg = 'pine' },
    DiagnosticHint = { fg = 'foam' },

    FzfLuaNormal = { link = 'NormalFloat' },
    FzfLuaBorder = { link = 'FloatBorder' },
    FzfLuaTitle = { link = 'FloatTitle' },
    FzfLuaPreviewNormal = { link = 'NormalFloat' },
    FzfLuaPreviewBorder = { link = 'FloatBorder' },
    FzfLuaPreviewTitle = { link = 'FloatTitle' },
    FzfLuaCursorLine = { bg = 'highlight_med' },
    FzfLuaCursorLineNr = { fg = 'pine', bg = 'highlight_med' },
    FzfLuaFzfNormal = { fg = 'text', bg = 'surface' },
    FzfLuaFzfCursorLine = { fg = 'text', bg = 'highlight_med' },
    FzfLuaFzfMatch = { fg = 'pine', bold = true },
    FzfLuaFilePart = { fg = 'text' },
    FzfLuaDirPart = { fg = 'subtle' },
    FzfLuaPathLineNr = { fg = 'pine' },
    FzfLuaPathColNr = { fg = 'pine' },

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

  before_highlight = function(group, highlight, palette)
    -- Disable all undercurls
    -- if highlight.undercurl then
    --     highlight.undercurl = false
    -- end
    --
    -- Change palette colour
    -- if highlight.fg == palette.pine then
    --     highlight.fg = palette.foam
    -- end
  end,
}

vim.cmd 'colorscheme rose-pine'
