local function my_colors()
  -- Base
  vim.api.nvim_set_hl(0, "Normal",      { fg = "#faac69", bg = "#000000" }) -- warm beige main text
  vim.api.nvim_set_hl(0, "CursorLine",  { bg = "#222222" })
  vim.api.nvim_set_hl(0, "CursorLineNr",{ fg = "#ffdda0", bg = "#553322", bold = true }) -- bright warm line number
  vim.api.nvim_set_hl(0, "LineNr",      { fg = "#eeddbb", bg = "#111111" }) -- subtle warm gray

  -- Selection
  vim.api.nvim_set_hl(0, "Visual",      { bg = "#443322" })                  
  vim.api.nvim_set_hl(0, "Search",      { fg = "#000000", bg = "#ffdd44", bold = true }) -- soft yellow highlight
  vim.api.nvim_set_hl(0, "IncSearch",   { fg = "#000000", bg = "#ffee66", bold = true })

  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor",      { fg = "#000000", bg = "#ffffff" })
  vim.api.nvim_set_hl(0, "MatchParen",  { bg = "#664466", bold = true })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine",  { fg = "#e0e0e0", bg = "#111111", italic = true })
  vim.api.nvim_set_hl(0, "StatusLineNC",{ fg = "#888888", bg = "#111111" })
  vim.api.nvim_set_hl(0, "VertSplit",   { fg = "#444444", bg = "#000000" })

  -- Tabs
  vim.api.nvim_set_hl(0, "TabLine",     { fg = "#ddccaa", bg = "#000000" })
  vim.api.nvim_set_hl(0, "TabLineSel",  { fg = "#ffffff", bg = "#664466", bold = true })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000" })

  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu",       { fg = "#ddccaa", bg = "#111111" })
  vim.api.nvim_set_hl(0, "PmenuSel",    { fg = "#ffffff", bg = "#664466", bold = true })
  vim.api.nvim_set_hl(0, "PmenuThumb",  { bg = "#555555" })

  -- Syntax highlighting (warm Gruvbox-inspired tones)
  vim.api.nvim_set_hl(0, "@type", { fg = "#bf6969", bold = true })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#eebaa1", bold = true })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = "#efb0b0" })
  vim.api.nvim_set_hl(0, "@type.identifier", { fg = "#b07e7e" })

  vim.api.nvim_set_hl(0, "@keyword", { fg = "#eaeaea", bold = true })

  vim.api.nvim_set_hl(0, "Comment",     { fg = "#a88866", italic = true }) -- muted warm brown
  vim.api.nvim_set_hl(0, "Constant",    { fg = "#d27e99" }) -- pinkish
  vim.api.nvim_set_hl(0, "String",      { fg = "#b0d070" }) -- warm green
  vim.api.nvim_set_hl(0, "Character",   { fg = "#b2b873" })
  vim.api.nvim_set_hl(0, "Number",      { fg = "#d27ec0" })
  vim.api.nvim_set_hl(0, "Boolean",     { fg = "#ffaa66", bold = true })
  vim.api.nvim_set_hl(0, "Function",    { fg = "#cd3939", bold = true }) -- desaturated teal
  vim.api.nvim_set_hl(0, "Keyword",     { fg = "#dedede", bold = true }) 
  vim.api.nvim_set_hl(0, "Type",        { fg = "#b07e7e", bold = true }) -- warm beige
  vim.api.nvim_set_hl(0, "Identifier",  { fg = "#ffdda0" }) -- bright warm identifiers
  vim.api.nvim_set_hl(0, "Operator",    { fg = "#ddccaa" })
  vim.api.nvim_set_hl(0, "Title",       { fg = "#ffdd77", bold = true })
  vim.api.nvim_set_hl(0, "Special",     { fg = "#ffdd77" })
  vim.api.nvim_set_hl(0, "Underlined",  { fg = "#ffcc99", underline = true })
  vim.api.nvim_set_hl(0, "Todo",        { fg = "#ffaa33", bold = true })
  vim.api.nvim_set_hl(0, "Error",       { fg = "#ff6666", bold = true })
  vim.api.nvim_set_hl(0, "WarningMsg",  { fg = "#ffbb33", bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg",    { fg = "#ff6666", bg = "#111111", bold = true })

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
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#ddccaa", bg = "#111111" })
  vim.api.nvim_set_hl(0, "FloatBorder",{ fg = "#664466", bg = "#111111" })
  vim.api.nvim_set_hl(0, "DiagnosticError",   { fg = "#ff6666" })
  vim.api.nvim_set_hl(0, "DiagnosticWarn",    { fg = "#ffbb33" })
  vim.api.nvim_set_hl(0, "DiagnosticInfo",    { fg = "#e6c07b" })
  vim.api.nvim_set_hl(0, "DiagnosticHint",    { fg = "#ffdd77" })

  vim.api.nvim_set_hl(0, "ColorColumn", {bg = "#110000" })
end

my_colors()
