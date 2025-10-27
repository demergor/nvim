local function my_colors()
  -- Base
  vim.api.nvim_set_hl(0, "Normal",      { fg = "#E9B69D", bg = "#000000" }) -- main text
  vim.api.nvim_set_hl(0, "CursorLine",  { bg = "#222222" })                  -- current line bg
  vim.api.nvim_set_hl(0, "CursorLineNr",{ fg = "#D8D8D8", bg = "#552222", bold = true }) -- current line number
  vim.api.nvim_set_hl(0, "LineNr",      { fg = "#FFFFFF", bg = "#111111" }) -- relative numbers

  -- Selection
  vim.api.nvim_set_hl(0, "Visual",      { bg = "#222233" })                  -- visual selection
  vim.api.nvim_set_hl(0, "Search",      { fg = "#000000", bg = "#22FF00", bold = true }) -- search matches
  vim.api.nvim_set_hl(0, "IncSearch",   { fg = "#000000", bg = "#99EE00", bold = true }) -- incremental search

  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor",      { fg = "#000000", bg = "#FFFFFF" })
  vim.api.nvim_set_hl(0, "MatchParen",  { bg = "#333366", bold = true })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine",  { fg = "#D8D8D8", bg = "#111111", italic = true })
  vim.api.nvim_set_hl(0, "StatusLineNC",{ fg = "#666666", bg = "#111111" })
  vim.api.nvim_set_hl(0, "VertSplit",   { fg = "#333333", bg = "#000000" })

  -- Tabs
  vim.api.nvim_set_hl(0, "TabLine",     { fg = "#D8D8D8", bg = "#000000" })
  vim.api.nvim_set_hl(0, "TabLineSel",  { fg = "#FFFFFF", bg = "#444477", bold = true })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000" })

  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu",       { fg = "#D8D8D8", bg = "#111111" })
  vim.api.nvim_set_hl(0, "PmenuSel",    { fg = "#FFFFFF", bg = "#333355", bold = true })
  vim.api.nvim_set_hl(0, "PmenuThumb",  { bg = "#555566" })

  -- Syntax highlighting
  vim.api.nvim_set_hl(0, "Comment",     { fg = "#808080", italic = true })
  vim.api.nvim_set_hl(0, "Constant",    { fg = "#B48EAD" })
  vim.api.nvim_set_hl(0, "String",      { fg = "#A3BE8C" })
  vim.api.nvim_set_hl(0, "Character",   { fg = "#A3BE8C" })
  vim.api.nvim_set_hl(0, "Number",      { fg = "#B48EAD" })
  vim.api.nvim_set_hl(0, "Boolean",     { fg = "#926C2C", bold = true })
  vim.api.nvim_set_hl(0, "Function",    { fg = "#559080", bold = true })
  vim.api.nvim_set_hl(0, "Ceyword",     { fg = "#C24C4C", bold = true })
  vim.api.nvim_set_hl(0, "Type",        { fg = "#8FBCBB", bold = true })
  vim.api.nvim_set_hl(0, "Identifier",  { fg = "#D8D8D8" })
  vim.api.nvim_set_hl(0, "Operator",    { fg = "#90B0B0" })
  vim.api.nvim_set_hl(0, "Title",       { fg = "#EBCB8B", bold = true })
  vim.api.nvim_set_hl(0, "Special",     { fg = "#EBCB8B" })
  vim.api.nvim_set_hl(0, "Underlined",  { fg = "#88C0D0", underline = true })
  vim.api.nvim_set_hl(0, "Todo",        { fg = "#FF8800", bold = true })
  vim.api.nvim_set_hl(0, "Error",       { fg = "#FF5555", bold = true })
  vim.api.nvim_set_hl(0, "WarningMsg",  { fg = "#FFAA00", bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg",    { fg = "#FF5555", bg = "#111111", bold = true })

  -- Fold and diff
  vim.api.nvim_set_hl(0, "Folded",      { fg = "#888888", bg = "#111111" })
  vim.api.nvim_set_hl(0, "DiffAdd",     { bg = "#223322" })
  vim.api.nvim_set_hl(0, "DiffChange",  { bg = "#222233" })
  vim.api.nvim_set_hl(0, "DiffDelete",  { bg = "#332222" })

  -- Conceal / special chars
  vim.api.nvim_set_hl(0, "Conceal",     { fg = "#666666" })
  vim.api.nvim_set_hl(0, "SpecialKey",  { fg = "#444444" })

  -- Quickfix / error list
  vim.api.nvim_set_hl(0, "qfLineNr",    { fg = "#666666" })

  -- Floating windows / virtual text
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#D8D8D8", bg = "#111111" })
  vim.api.nvim_set_hl(0, "FloatBorder",{ fg = "#444477", bg = "#111111" })
  vim.api.nvim_set_hl(0, "DiagnosticError",   { fg = "#FF5555" })
  vim.api.nvim_set_hl(0, "DiagnosticWarn",    { fg = "#FFAA00" })
  vim.api.nvim_set_hl(0, "DiagnosticInfo",    { fg = "#88C0D0" })
  vim.api.nvim_set_hl(0, "DiagnosticHint",    { fg = "#AAAAFF" })
end

my_colors()
