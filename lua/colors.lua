local function my_colors()
  -- Base
  vim.api.nvim_set_hl(0, "Normal",      { fg = "#E6C07B", bg = "#000000" }) -- warm beige main text
  vim.api.nvim_set_hl(0, "CursorLine",  { bg = "#222222" })
  vim.api.nvim_set_hl(0, "CursorLineNr",{ fg = "#FFDDA0", bg = "#553322", bold = true }) -- bright warm line number
  vim.api.nvim_set_hl(0, "LineNr",      { fg = "#EEDDBB", bg = "#111111" }) -- subtle warm gray

  -- Selection
  vim.api.nvim_set_hl(0, "Visual",      { bg = "#443322" })                  
  vim.api.nvim_set_hl(0, "Search",      { fg = "#000000", bg = "#FFDD44", bold = true }) -- soft yellow highlight
  vim.api.nvim_set_hl(0, "IncSearch",   { fg = "#000000", bg = "#FFEE66", bold = true })

  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor",      { fg = "#000000", bg = "#FFFFFF" })
  vim.api.nvim_set_hl(0, "MatchParen",  { bg = "#664466", bold = true })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine",  { fg = "#E0E0E0", bg = "#111111", italic = true })
  vim.api.nvim_set_hl(0, "StatusLineNC",{ fg = "#888888", bg = "#111111" })
  vim.api.nvim_set_hl(0, "VertSplit",   { fg = "#444444", bg = "#000000" })

  -- Tabs
  vim.api.nvim_set_hl(0, "TabLine",     { fg = "#DDCCAA", bg = "#000000" })
  vim.api.nvim_set_hl(0, "TabLineSel",  { fg = "#FFFFFF", bg = "#664466", bold = true })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000" })

  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu",       { fg = "#DDCCAA", bg = "#111111" })
  vim.api.nvim_set_hl(0, "PmenuSel",    { fg = "#FFFFFF", bg = "#664466", bold = true })
  vim.api.nvim_set_hl(0, "PmenuThumb",  { bg = "#555555" })

  -- Syntax highlighting (warm Gruvbox-inspired tones)
  vim.api.nvim_set_hl(0, "Comment",     { fg = "#A88866", italic = true }) -- muted warm brown
  vim.api.nvim_set_hl(0, "Constant",    { fg = "#D27E99" }) -- pinkish
  vim.api.nvim_set_hl(0, "String",      { fg = "#B2D872" }) -- warm green
  vim.api.nvim_set_hl(0, "Character",   { fg = "#B2B873" })
  vim.api.nvim_set_hl(0, "Number",      { fg = "#D27E99" })
  vim.api.nvim_set_hl(0, "Boolean",     { fg = "#FFAA66", bold = true })
  vim.api.nvim_set_hl(0, "Function",    { fg = "#A0B2C4", bold = true }) -- desaturated teal
  vim.api.nvim_set_hl(0, "Keyword",     { fg = "#FF7755", bold = true }) -- warm red/orange
  vim.api.nvim_set_hl(0, "Type",        { fg = "#E6C07B", bold = true }) -- warm beige
  vim.api.nvim_set_hl(0, "Identifier",  { fg = "#FFDDA0" }) -- bright warm identifiers
  vim.api.nvim_set_hl(0, "Operator",    { fg = "#DDCCAA" })
  vim.api.nvim_set_hl(0, "Title",       { fg = "#FFDD77", bold = true })
  vim.api.nvim_set_hl(0, "Special",     { fg = "#FFDD77" })
  vim.api.nvim_set_hl(0, "Underlined",  { fg = "#FFCC99", underline = true })
  vim.api.nvim_set_hl(0, "Todo",        { fg = "#FFAA33", bold = true })
  vim.api.nvim_set_hl(0, "Error",       { fg = "#FF6666", bold = true })
  vim.api.nvim_set_hl(0, "WarningMsg",  { fg = "#FFBB33", bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg",    { fg = "#FF6666", bg = "#111111", bold = true })

  -- Fold and diff
  vim.api.nvim_set_hl(0, "Folded",      { fg = "#888888", bg = "#111111" })
  vim.api.nvim_set_hl(0, "DiffAdd",     { bg = "#223322" })
  vim.api.nvim_set_hl(0, "DiffChange",  { bg = "#332222" })
  vim.api.nvim_set_hl(0, "DiffDelete",  { bg = "#442222" })

  -- Conceal / special chars
  vim.api.nvim_set_hl(0, "Conceal",     { fg = "#777777" })
  vim.api.nvim_set_hl(0, "SpecialKey",  { fg = "#555555" })

  -- Quickfix / error list
  vim.api.nvim_set_hl(0, "qfLineNr",    { fg = "#888888" })

  -- Floating windows / virtual text
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#DDCCAA", bg = "#111111" })
  vim.api.nvim_set_hl(0, "FloatBorder",{ fg = "#664466", bg = "#111111" })
  vim.api.nvim_set_hl(0, "DiagnosticError",   { fg = "#FF6666" })
  vim.api.nvim_set_hl(0, "DiagnosticWarn",    { fg = "#FFBB33" })
  vim.api.nvim_set_hl(0, "DiagnosticInfo",    { fg = "#E6C07B" })
  vim.api.nvim_set_hl(0, "DiagnosticHint",    { fg = "#FFDD77" })
end

my_colors()
