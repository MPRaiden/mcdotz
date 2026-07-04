vim.o.termguicolors = true

local c = {
  paper = '#f8f1e8',
  paper_alt = '#f3e8dc',
  paper_float = '#faf3eb',
  ink = '#4e4945',
  ink_soft = '#6b655e',
  ink_faint = '#9a9086',
  blue = '#467fbe',
  blue_soft = '#6c98c0',
  rose = '#cb8d97',
  gold = '#c6a45d',
  orange = '#e39a2d',
  green = '#7ea17a',
  red = '#c07a70',
  select = '#e4d5c4',
  search = '#ead9a7',
}

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'paper_kakashi'

local set = vim.api.nvim_set_hl
local function hl(group, opts)
  set(0, group, opts)
end

hl('Normal', { fg = c.ink, bg = c.paper })
hl('NormalNC', { fg = c.ink, bg = c.paper })
hl('NormalFloat', { fg = c.ink, bg = c.paper_float })
hl('FloatBorder', { fg = c.blue, bg = c.paper_float })
hl('FloatTitle', { fg = c.blue, bg = c.paper_float, bold = true })
hl('ColorColumn', { bg = c.paper_alt })
hl('CursorLine', { bg = c.paper_alt })
hl('CursorColumn', { bg = c.paper_alt })
hl('CursorLineNr', { fg = c.blue, bg = c.paper_alt, bold = true })
hl('LineNr', { fg = c.ink_faint, bg = c.paper })
hl('SignColumn', { bg = c.paper })
hl('FoldColumn', { fg = c.ink_faint, bg = c.paper })
hl('Folded', { fg = c.ink_soft, bg = c.paper_alt })
hl('VertSplit', { fg = c.paper_alt, bg = c.paper })
hl('WinSeparator', { fg = c.paper_alt, bg = c.paper })
hl('Visual', { bg = c.select })
hl('Search', { fg = c.ink, bg = c.search })
hl('IncSearch', { fg = c.paper, bg = c.blue })
hl('MatchParen', { fg = c.rose, bg = c.select, bold = true })

hl('StatusLine', { fg = c.ink, bg = c.paper_alt })
hl('StatusLineNC', { fg = c.ink_faint, bg = c.paper_alt })
hl('TabLine', { fg = c.ink_soft, bg = c.paper_alt })
hl('TabLineFill', { bg = c.paper_alt })
hl('TabLineSel', { fg = c.ink, bg = c.paper, bold = true })
hl('Pmenu', { fg = c.ink, bg = c.paper_float })
hl('PmenuBorder', { fg = c.blue, bg = c.paper_float })
hl('PmenuSel', { fg = c.ink, bg = c.select })
hl('PmenuSbar', { bg = c.paper_alt })
hl('PmenuThumb', { bg = c.select })

hl('Comment', { fg = c.ink_faint, italic = true })
hl('Constant', { fg = c.gold })
hl('String', { fg = c.orange })
hl('Character', { fg = c.orange })
hl('Number', { fg = c.gold })
hl('Boolean', { fg = c.gold })
hl('Float', { fg = c.gold })
hl('Identifier', { fg = c.ink })
hl('Function', { fg = c.rose })
hl('Statement', { fg = c.blue })
hl('Conditional', { fg = c.blue })
hl('Repeat', { fg = c.blue })
hl('Label', { fg = c.blue })
hl('Operator', { fg = c.ink })
hl('Keyword', { fg = c.blue })
hl('Exception', { fg = c.blue })
hl('PreProc', { fg = c.blue_soft })
hl('Include', { fg = c.blue })
hl('Define', { fg = c.blue_soft })
hl('Macro', { fg = c.blue_soft })
hl('PreCondit', { fg = c.blue_soft })
hl('Type', { fg = c.blue })
hl('StorageClass', { fg = c.blue })
hl('Structure', { fg = c.blue })
hl('Typedef', { fg = c.blue })
hl('Special', { fg = c.rose })
hl('SpecialChar', { fg = c.rose })
hl('Delimiter', { fg = c.ink_soft })
hl('SpecialComment', { fg = c.ink_faint, italic = true })

hl('@variable', { fg = c.ink })
hl('@variable.builtin', { fg = c.blue_soft })
hl('@parameter', { fg = c.ink })
hl('@field', { fg = c.rose })
hl('@property', { fg = c.rose })
hl('@function', { fg = c.rose })
hl('@function.call', { fg = c.rose })
hl('@function.builtin', { fg = c.blue_soft })
hl('@method', { fg = c.rose })
hl('@method.call', { fg = c.rose })
hl('@constructor', { fg = c.blue })
hl('@keyword', { fg = c.blue })
hl('@keyword.function', { fg = c.blue })
hl('@keyword.operator', { fg = c.blue })
hl('@keyword.return', { fg = c.blue })
hl('@operator', { fg = c.ink })
hl('@type', { fg = c.blue })
hl('@type.builtin', { fg = c.blue })
hl('@module', { fg = c.blue })
hl('@constant', { fg = c.gold })
hl('@string', { fg = c.orange })
hl('@string.escape', { fg = c.rose })
hl('@number', { fg = c.gold })
hl('@boolean', { fg = c.gold })
hl('@comment', { fg = c.ink_faint, italic = true })

hl('DiagnosticError', { fg = c.red })
hl('DiagnosticWarn', { fg = c.gold })
hl('DiagnosticInfo', { fg = c.blue })
hl('DiagnosticHint', { fg = c.green })

hl('FzfLuaNormal', { link = 'NormalFloat' })
hl('FzfLuaBorder', { link = 'FloatBorder' })
hl('FzfLuaTitle', { link = 'FloatTitle' })
hl('FzfLuaPreviewNormal', { link = 'NormalFloat' })
hl('FzfLuaPreviewBorder', { link = 'FloatBorder' })
hl('FzfLuaPreviewTitle', { link = 'FloatTitle' })
hl('FzfLuaCursorLine', { bg = c.select })
hl('FzfLuaCursorLineNr', { fg = c.blue, bg = c.select })
hl('FzfLuaFzfNormal', { fg = c.ink, bg = c.paper_float })
hl('FzfLuaFzfCursorLine', { fg = c.ink, bg = c.select })
hl('FzfLuaFzfMatch', { fg = c.blue, bold = true })
hl('FzfLuaFilePart', { fg = c.ink })
hl('FzfLuaDirPart', { fg = c.ink_soft })
hl('FzfLuaPathLineNr', { fg = c.blue })
hl('FzfLuaPathColNr', { fg = c.blue })

hl('BlinkCmpMenu', { link = 'Pmenu' })
hl('BlinkCmpMenuBorder', { link = 'PmenuBorder' })
hl('BlinkCmpMenuSelection', { link = 'PmenuSel' })
hl('BlinkCmpDoc', { link = 'NormalFloat' })
hl('BlinkCmpDocBorder', { link = 'FloatBorder' })
hl('BlinkCmpDocSeparator', { link = 'FloatBorder' })
hl('BlinkCmpSignatureHelp', { link = 'NormalFloat' })
hl('BlinkCmpSignatureHelpBorder', { link = 'FloatBorder' })
hl('BlinkCmpScrollBarThumb', { link = 'PmenuThumb' })
hl('BlinkCmpScrollBarGutter', { link = 'PmenuSbar' })
