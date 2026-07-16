-- vim.pack.add {
--   {
--     src = 'https://github.com/rose-pine/neovim',
--     name = 'rose-pine',
--   },
-- }
--
-- require('rose-pine').setup {
--   variant = 'auto',
--
--   styles = {
--     bold = true,
--     italic = false,
--     transparency = false,
--   },
-- }
--
-- vim.cmd.colorscheme 'rose-pine'

-- vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }
--
-- require('tokyonight').setup {
--   style = 'storm',
--   -- transparent = true,
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = true },
--     keywords = { italic = false },
--     functions = {},
--     variables = {},
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = 'dark', -- style for sidebars, see below
--     floats = 'transparent', -- style for floating windows
--   },
-- }
--
-- vim.cmd.colorscheme 'tokyonight'

-- vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }
--
-- require('catppuccin').setup {
--   flavour = 'auto', -- latte, frappe, macchiato, mocha
--   background = { -- :h background
--     light = 'latte',
--     dark = 'macchiato',
--   },
--   transparent_background = true, -- disables setting the background color.
--   float = {
--     transparent = true, -- enable transparent floating windows
--     solid = false, -- use solid styling for floating windows, see |winborder|
--   },
--   term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--   dim_inactive = {
--     enabled = false, -- dims the background color of inactive window
--     shade = 'dark',
--     percentage = 0.15, -- percentage of the shade to apply to the inactive window
--   },
--   no_italic = true, -- Force no italic
--   no_bold = false, -- Force no bold
--   no_underline = true, -- Force no underline
--   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--     comments = { 'italic' }, -- Change the style of comments
--     conditionals = { 'italic' },
--     loops = {},
--     functions = {},
--     keywords = {},
--     strings = {},
--     variables = {},
--     numbers = {},
--     booleans = {},
--     properties = {},
--     types = {},
--     operators = {},
--     -- miscs = {}, -- Uncomment to turn off hard-coded styles
--   },
--   lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
--     virtual_text = {
--       errors = { 'italic' },
--       hints = { 'italic' },
--       warnings = { 'italic' },
--       information = { 'italic' },
--       ok = { 'italic' },
--     },
--     underlines = {
--       errors = { 'underline' },
--       hints = { 'underline' },
--       warnings = { 'underline' },
--       information = { 'underline' },
--       ok = { 'underline' },
--     },
--     inlay_hints = {
--       background = true,
--     },
--   },
--   color_overrides = {},
--   custom_highlights = {},
--   default_integrations = true,
--   auto_integrations = true,
-- }
--
-- -- setup must be called before loading
-- vim.cmd.colorscheme 'catppuccin-nvim'

vim.pack.add { 'https://github.com/rebelot/kanagawa.nvim' }

-- Default options:
require('kanagawa').setup {
  compile = false, -- enable compiling the colorscheme
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = false },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = true, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
  colors = { -- add/modify theme and palette colors
    palette = {},
    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
  },
  overrides = function(_)
    local transparent = { bg = 'none' }

    return {
      -- Generic floating windows and completion menus
      NormalFloat = transparent,
      FloatBorder = transparent,
      Pmenu = transparent,
      PmenuExtra = transparent,
      PmenuKind = transparent,

      -- snacks.nvim picker
      SnacksPickerNormal = transparent,
      SnacksPickerBorder = transparent,
      SnacksPickerInput = transparent,
      SnacksPickerInputBorder = transparent,
      SnacksPickerList = transparent,
      SnacksPickerListBorder = transparent,
      SnacksPickerPreview = transparent,
      SnacksPickerPreviewBorder = transparent,

      -- blink.cmp
      BlinkCmpMenu = transparent,
      BlinkCmpMenuBorder = transparent,
      BlinkCmpDoc = transparent,
      BlinkCmpDocBorder = transparent,
      BlinkCmpSignatureHelp = transparent,
      BlinkCmpSignatureHelpBorder = transparent,
    }
  end,
  theme = 'auto', -- Load "wave" theme
  background = { -- map the value of 'background' option to a theme
    dark = 'wave', -- try "dragon" !
    light = 'lotus',
  },
}

-- setup must be called before loading
vim.cmd 'colorscheme kanagawa'
