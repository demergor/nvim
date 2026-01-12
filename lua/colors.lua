local function my_colors()
  vim.api.nvim_set_hl(0, "Normal",        { fg = "#d8a06a", bg = "#000000" })

  vim.api.nvim_set_hl(0, "Identifier",    { fg = "#ded6d0" })
  vim.api.nvim_set_hl(0, "@variable",     { fg = "#e0e0e0" })

  vim.api.nvim_set_hl(0, "Statement",     { fg = "#cfd8dc", bold = true })
  vim.api.nvim_set_hl(0, "Function",      { fg = "#c15f5f", bold = true })
  vim.api.nvim_set_hl(0, "Type",          { fg = "#e0703a", bold = false })
  vim.api.nvim_set_hl(0, "Special",       { fg = "#e0703a", bold = false })

  vim.api.nvim_set_hl(0, "String",        { fg = "#b1bea5" })
  vim.api.nvim_set_hl(0, "Constant",      { fg = "#d89aa0" })
  vim.api.nvim_set_hl(0, "Number",        { fg = "#d89aa0" })

  vim.api.nvim_set_hl(0, "Comment",       { fg = "#8a8a82", italic = true })

  vim.api.nvim_set_hl(0, "Delimiter",     { fg = "#cfcac7" })

  vim.api.nvim_set_hl(0, "Cursor",        { fg = "#000000", bg = "#d0d0d0" })

  vim.api.nvim_set_hl(0, "CursorLine",    { bg = "#181818" })
  vim.api.nvim_set_hl(0, "CursorLineNr",  { fg = "#d8a06a", bold = true })
  vim.api.nvim_set_hl(0, "LineNr",        { fg = "#b2a18a" })

  vim.api.nvim_set_hl(0, "ColorColumn",   { bg = "#110000" })
  vim.api.nvim_set_hl(0, "StatusLine",    { fg = "#e0e0e0", bg = "#110000", bold = true })

  -- Rainbow braces (alternating between white and orange to help detect missing braces)
  vim.api.nvim_set_hl(0, "RainbowDelimiterRed",     { fg = "#cfcac7" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterYellow",  { fg = "#d6996b" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterBlue",    { fg = "#cfcac7" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterOrange",  { fg = "#d6996b" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterGreen",   { fg = "#cfcac7" })  
  vim.api.nvim_set_hl(0, "RainbowDelimiterViolet",  { fg = "#d6996b" }) 
  vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",    { fg = "#cfcac7" })

  -- netrw
  vim.api.nvim_set_hl(0, "Directory",     { fg = "#dcdcdc", bold = true })
end

my_colors()
