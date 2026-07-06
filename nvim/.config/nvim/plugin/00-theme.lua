vim.pack.add {
  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    src = 'https://github.com/shaunsingh/nord.nvim',
    name = 'nord.nvim',
  },
}

local paper_pine_dawn = {
  base = '#f2e7da',
  surface = '#f4e9dd',
  overlay = '#ecdfcf',
  muted = '#9a92ab',
  subtle = '#7b7391',
  text = '#4e4945',
  love = '#c07a70',
  gold = '#c6a45d',
  rose = '#cb8d97',
  pine = '#5588b3',
  foam = '#7aa0c0',
  iris = '#8576b0',
  highlight_low = '#ecdfcf',
  highlight_med = '#d8c2a7',
  highlight_high = '#ead9a7',
}

require('rose-pine').setup {
  variant = 'auto',
  dark_variant = 'main',
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true,
    migrations = true,
  },

  styles = {
    bold = true,
    italic = false,
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
    dawn = paper_pine_dawn,
    main = {
      base = '#1d1b2a',
      surface = '#232133',
      overlay = '#2b2840',
      muted = '#6e6a86',
      subtle = '#908caa',
      text = '#e0def4',
      love = '#eb6f92',
      gold = '#f6c177',
      rose = '#ebbcba',
      pine = '#31748f',
      foam = '#9ccfd8',
      iris = '#c4a7e7',
      highlight_low = '#252338',
      highlight_med = '#44415a',
      highlight_high = '#56526e',
    },
  },

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
    Visual = { fg = 'text', bg = 'highlight_med', inherit = false },
    VisualNOS = { fg = 'text', bg = 'highlight_med', inherit = false },
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
    PreProc = { fg = 'iris' },
    Include = { fg = 'pine' },
    Define = { fg = 'iris' },
    Macro = { fg = 'iris' },
    PreCondit = { fg = 'iris' },
    Type = { fg = 'pine' },
    StorageClass = { fg = 'pine' },
    Structure = { fg = 'pine' },
    Typedef = { fg = 'pine' },
    Special = { fg = 'rose' },
    SpecialChar = { fg = 'rose' },
    Delimiter = { fg = 'subtle' },
    SpecialComment = { fg = 'muted', italic = true },

    ['@variable'] = { fg = 'text' },
    ['@variable.builtin'] = { fg = 'foam' },
    ['@parameter'] = { fg = 'text' },
    ['@field'] = { fg = 'rose' },
    ['@property'] = { fg = 'rose' },
    ['@function'] = { fg = 'rose' },
    ['@function.call'] = { fg = 'rose' },
    ['@function.builtin'] = { fg = 'iris' },
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
    ['@attribute'] = { fg = 'iris' },
    ['@lsp.type.annotation'] = { fg = 'iris' },
    ['@lsp.type.comment'] = { fg = 'muted', italic = true },
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
}

local nord_palette = {
  bg = '#3f4858',
  surface = '#37404e',
  overlay = '#485164',
  text = '#eceff4',
  muted = '#a7b1c2',
  subtle = '#d8dee9',
  red = '#bf616a',
  yellow = '#ebcb8b',
  blue = '#81a1c1',
  cyan = '#88c0d0',
  teal = '#8fbcbb',
  purple = '#b48ead',
}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function apply_nord_overrides()
  set_hl('Normal', { fg = nord_palette.text, bg = nord_palette.bg })
  set_hl('NormalNC', { fg = nord_palette.text, bg = nord_palette.bg })
  set_hl('NormalFloat', { fg = nord_palette.text, bg = nord_palette.bg })
  set_hl('FloatBorder', { fg = nord_palette.blue, bg = nord_palette.bg })
  set_hl('FloatTitle', { fg = nord_palette.cyan, bg = nord_palette.bg, bold = true })
  set_hl('EndOfBuffer', { fg = nord_palette.bg, bg = nord_palette.bg })
  set_hl('SignColumn', { bg = nord_palette.bg })
  set_hl('FoldColumn', { fg = nord_palette.muted, bg = nord_palette.bg })
  set_hl('LineNr', { fg = nord_palette.muted, bg = nord_palette.bg })
  set_hl('CursorLine', { bg = nord_palette.overlay })
  set_hl('CursorColumn', { bg = nord_palette.overlay })
  set_hl('CursorLineNr', { fg = nord_palette.cyan, bg = nord_palette.overlay, bold = true })
  set_hl('ColorColumn', { bg = nord_palette.overlay })
  set_hl('Visual', { fg = nord_palette.text, bg = '#576175' })
  set_hl('VisualNOS', { fg = nord_palette.text, bg = '#576175' })
  set_hl('Search', { fg = '#2e3440', bg = nord_palette.cyan })
  set_hl('IncSearch', { fg = '#2e3440', bg = nord_palette.subtle, bold = true })
  set_hl('CurSearch', { fg = '#2e3440', bg = nord_palette.subtle, bold = true })
  set_hl('MatchParen', { fg = nord_palette.surface, bg = nord_palette.yellow, bold = true })
  set_hl('Pmenu', { fg = nord_palette.text, bg = nord_palette.bg })
  set_hl('PmenuSel', { fg = '#2e3440', bg = nord_palette.subtle, bold = true })
  set_hl('PmenuSbar', { bg = nord_palette.bg })
  set_hl('PmenuThumb', { bg = nord_palette.blue })
  set_hl('StatusLine', { fg = nord_palette.text, bg = nord_palette.surface })
  set_hl('StatusLineNC', { fg = nord_palette.muted, bg = nord_palette.surface })
  set_hl('TabLine', { fg = nord_palette.muted, bg = nord_palette.surface })
  set_hl('TabLineFill', { bg = nord_palette.surface })
  set_hl('TabLineSel', { fg = '#2e3440', bg = nord_palette.subtle, bold = true })
  set_hl('WinSeparator', { fg = nord_palette.overlay, bg = nord_palette.bg })
  set_hl('Comment', { fg = nord_palette.muted, italic = true })
  set_hl('Function', { fg = nord_palette.cyan })
  set_hl('Identifier', { fg = nord_palette.text })
  set_hl('Keyword', { fg = nord_palette.blue })
  set_hl('Statement', { fg = nord_palette.blue })
  set_hl('Type', { fg = nord_palette.teal })
  set_hl('PreProc', { fg = nord_palette.purple })
  set_hl('Special', { fg = nord_palette.cyan })
  set_hl('String', { fg = nord_palette.teal })
  set_hl('Number', { fg = nord_palette.yellow })
  set_hl('Boolean', { fg = nord_palette.yellow })
  set_hl('Constant', { fg = nord_palette.yellow })
  set_hl('DiagnosticError', { fg = nord_palette.red })
  set_hl('DiagnosticWarn', { fg = nord_palette.yellow })
  set_hl('DiagnosticInfo', { fg = nord_palette.blue })
  set_hl('DiagnosticHint', { fg = nord_palette.cyan })
  set_hl('@variable', { fg = nord_palette.text })
  set_hl('@variable.builtin', { fg = nord_palette.cyan })
  set_hl('@parameter', { fg = nord_palette.text })
  set_hl('@field', { fg = nord_palette.cyan })
  set_hl('@property', { fg = nord_palette.cyan })
  set_hl('@function', { fg = nord_palette.cyan })
  set_hl('@function.call', { fg = nord_palette.cyan })
  set_hl('@method', { fg = nord_palette.cyan })
  set_hl('@method.call', { fg = nord_palette.cyan })
  set_hl('@constructor', { fg = nord_palette.blue })
  set_hl('@keyword', { fg = nord_palette.blue })
  set_hl('@keyword.function', { fg = nord_palette.blue })
  set_hl('@keyword.operator', { fg = nord_palette.blue })
  set_hl('@keyword.return', { fg = nord_palette.blue })
  set_hl('@operator', { fg = nord_palette.text })
  set_hl('@type', { fg = nord_palette.teal })
  set_hl('@type.builtin', { fg = nord_palette.teal })
  set_hl('@module', { fg = nord_palette.blue })
  set_hl('@attribute', { fg = nord_palette.purple })
  set_hl('@lsp.type.annotation', { fg = nord_palette.purple })
  set_hl('@lsp.type.comment', { fg = nord_palette.muted, italic = true })
  set_hl('@constant', { fg = nord_palette.yellow })
  set_hl('@string', { fg = nord_palette.teal })
  set_hl('@string.escape', { fg = nord_palette.purple })
  set_hl('@number', { fg = nord_palette.yellow })
  set_hl('@boolean', { fg = nord_palette.yellow })
  set_hl('@comment', { fg = nord_palette.muted, italic = true })
  set_hl('BlinkCmpMenu', { link = 'Pmenu' })
  set_hl('BlinkCmpMenuBorder', { link = 'FloatBorder' })
  set_hl('BlinkCmpMenuSelection', { link = 'PmenuSel' })
  set_hl('BlinkCmpDoc', { link = 'NormalFloat' })
  set_hl('BlinkCmpDocBorder', { link = 'FloatBorder' })
  set_hl('BlinkCmpDocSeparator', { link = 'FloatBorder' })
  set_hl('BlinkCmpSignatureHelp', { link = 'NormalFloat' })
  set_hl('BlinkCmpSignatureHelpBorder', { link = 'FloatBorder' })
  set_hl('BlinkCmpScrollBarGutter', { link = 'PmenuSbar' })
  set_hl('BlinkCmpScrollBarThumb', { link = 'PmenuThumb' })
  set_hl('FzfLuaNormal', { link = 'NormalFloat' })
  set_hl('FzfLuaBorder', { link = 'FloatBorder' })
  set_hl('FzfLuaTitle', { link = 'FloatTitle' })
  set_hl('FzfLuaPreviewNormal', { link = 'NormalFloat' })
  set_hl('FzfLuaPreviewBorder', { link = 'FloatBorder' })
  set_hl('FzfLuaPreviewTitle', { link = 'FloatTitle' })
  set_hl('FzfLuaCursorLine', { link = 'CursorLine' })
  set_hl('FzfLuaCursorLineNr', { link = 'CursorLineNr' })
  set_hl('FzfLuaFzfNormal', { link = 'NormalFloat' })
  set_hl('FzfLuaFzfCursorLine', { link = 'CursorLine' })
  set_hl('FzfLuaFzfMatch', { fg = nord_palette.cyan, bold = true })
  set_hl('FzfLuaFilePart', { fg = nord_palette.text })
  set_hl('FzfLuaDirPart', { fg = nord_palette.muted })
  set_hl('FzfLuaPathLineNr', { fg = nord_palette.blue })
  set_hl('FzfLuaPathColNr', { fg = nord_palette.blue })
end

local function apply_dark_theme()
  vim.g.nord_contrast = true
  vim.g.nord_borders = false
  vim.g.nord_disable_background = false
  vim.g.nord_cursorline_transparent = false
  vim.g.nord_enable_sidebar_background = true
  vim.g.nord_italic = false
  vim.g.nord_uniform_diff_background = true
  vim.g.nord_bold = true

  vim.cmd.colorscheme 'nord'
  apply_nord_overrides()
end

local function apply_theme()
  if vim.o.background == 'light' then
    vim.cmd.colorscheme 'rose-pine'
    return
  end

  apply_dark_theme()
end

apply_theme()

vim.api.nvim_create_autocmd('OptionSet', {
  pattern = 'background',
  callback = apply_theme,
})
